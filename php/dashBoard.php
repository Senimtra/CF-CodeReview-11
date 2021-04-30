<?php
session_start();
require_once 'components/db_connect.php';
// if session is not set this will redirect to login page
if (!isset($_SESSION['adm']) && !isset($_SESSION['user'])) {
    header("Location: index.php");
    exit;
}
//if session user exist it shouldn't access dashboard.php
if (isset($_SESSION["user"])) {
    header("Location: home.php");
    exit;
}

$sql = "SELECT * FROM pets";
$result = mysqli_query($connect, $sql);
$tbody = '';
if (mysqli_num_rows($result)  > 0) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $tbody .= "
        <tr>
        <td><img src='$row[image]'></td>
        <td>$row[name]<br>#$row[id]<br>$row[breed]</td>
        <td>$row[size]</td>
        <td>$row[age]</td>
        <td>$row[description]<br>$row[hobbies]</td>
        <td>$row[loc_address]<br>$row[loc_zip]&nbsp;$row[loc_city]</td>
        </tr>";
    };
} else {
    $tbody =  "<tr><td colspan='5'><center>No Data Available </center></td></tr>";
}

$connect->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adm-DashBoard</title>
    <?php require_once 'components/boot.php' ?>
    <link rel="stylesheet" type="text/css" href="../styles/styles.css">

</head>

<body>
    <?php include_once 'header.php' ?>;
    <?php include_once 'navbar_adm.php' ?>;
    <div class="container content">
        <!-- <img class="userImage" src="pictures/admavatar.png" alt="Adm avatar"> -->
        <!-- <p class="">Administrator</p> -->
        <a href="logout.php?logout">Sign Out</a>
    </div>
    <div>
        <p class='h2'>Our Pets</p>
        <table class='table table-striped bg-secondary'>
            <thead class='table-success'>
                <tr>
                    <th>Picture</th>
                    <th>Name</th>
                    <th>Size</th>
                    <th>Age</th>
                    <th>Details</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <?= $tbody; ?>
            </tbody>
        </table>
    </div>
</body>

</html>