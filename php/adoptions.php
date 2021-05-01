<?php
session_start();
require_once 'components/db_connect.php';

// if adm will redirect to dashboard
if (isset($_SESSION['adm'])) {
    header("Location: dashboard.php");
    exit;
}
// if session is not set this will redirect to login page
if (!isset($_SESSION['adm']) && !isset($_SESSION['user'])) {
    header("Location: index.php");
    exit;
}

// select logged-in users details - procedural style
$res = mysqli_query($connect, "SELECT * FROM user WHERE id=" . $_SESSION['user']);
$row = mysqli_fetch_array($res, MYSQLI_ASSOC);

// cancel adoption
if (isset($_POST['cancel'])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM adoptions WHERE id = $id";
    mysqli_query($connect, $sql);
}


$sql = "SELECT * FROM adoptions";
$result = mysqli_query($connect, $sql);
$tbody = '';
if (mysqli_num_rows($result)  > 0) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $tbody .= "
        <tr>
        <td><img src='$row[image]'></td>
        <td>$row[name]</td>
        <td>$row[breed]</td>
        <td>$row[fk_userId]</td>
        <td>$row[adopt_date]</td>
        <td>
        <form action='adoptions.php' method='post'>
        <input type ='hidden' name='id' class='form-control' value='" . $row['id'] . "'/>
        <button class='btn btn-danger btn-sm' name='cancel' type='submit'>Cancel</button>
        </form></td>
    </tr>";
    };
} else {
    $tbody =  "<tr><td colspan='5'><center>No Data Available</center></td></tr>";
}


$connect->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - <?php echo $row['first_name']; ?></title>
    <?php require_once 'components/boot.php' ?>
    <link rel="stylesheet" type="text/css" href="../styles/styles.css">
    <style>
        .userImage {
            width: 200px;
            height: 200px;
        }

        .hero {
            background: rgb(2, 0, 36);
            background: linear-gradient(24deg, rgba(2, 0, 36, 1) 0%, rgba(0, 212, 255, 1) 100%);
        }
    </style>
</head>

<body>
    <?php include_once 'header.php' ?>;
    <?php include_once 'navbar.php' ?>;
    <div>
        <p class='h2'>Our Pets</p>
        <table class='table table-striped bg-secondary'>
            <thead class='table-success'>
                <tr>
                    <th>Picture</th>
                    <th>Name</th>
                    <th>Breed</th>
                    <th>User-ID</th>
                    <th>Adoption Date</th>
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