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

$sql = "SELECT * FROM user";
$result = mysqli_query($connect, $sql);
$tbody = '';
if (mysqli_num_rows($result)  > 0) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $tbody .= "
        <tr>
        <td><img src='pictures/$row[picture]'></td>
        <td>$row[id]</td>
        <td>$row[first_name]</td>
        <td>$row[last_name]</td>
        <td>$row[date_of_birth]</td>
        <td>$row[email]</td>
        <td>$row[status]</td>
        <td><a href='update_adm.php?id=" . $row['id'] . "'><button class='btn btn-primary btn-sm' type='button'>Edit</button></a><br>
        <a href='delete.php?id=" . $row['id'] . "'><button class='btn btn-danger btn-sm' type='button'>Delete</button></a></td>
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
    <div>
        <p class='h2'>Our Users</p>
        <table class='table table-striped bg-secondary'>
            <thead class='table-success'>
                <tr>
                    <th>Picture</th>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date of Birth</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?= $tbody; ?>
            </tbody>
        </table>
    </div>
</body>

</html>