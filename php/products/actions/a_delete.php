<?php

session_start();

if (isset($_SESSION['user']) != "") {
    header("Location: ../../home.php");
    exit;
}

if (!isset($_SESSION['adm']) && !isset($_SESSION['user'])) {
    header("Location: ../../index.php");
    exit;
}

require_once '../../components/db_connect.php';

if ($_POST) {
    $id = $_POST['id'];
    // $image = $_POST['image'];
    // ($image == "product.png") ?: unlink("../pictures/$image");

    $sql = "DELETE FROM pets WHERE id = {$id}";
    if ($connect->query($sql) === TRUE) {
        $class = "success";
        $message = "Successfully Deleted!";
    } else {
        $class = "danger";
        $message = "The entry was not deleted due to: <br>" . $connect->error;
    }
    $connect->close();
} else {
    header("location: ../error.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Delete</title>
    <?php require_once '../../components/boot.php' ?>
    <link rel="stylesheet" type="text/css" href="../../../styles/styles.css">
</head>

<body>
    <?php include_once '../../header.php' ?>;
    <?php include_once 'navbar_adm_b.php' ?>;
    <div class="container content">
        <div class="mt-3 mb-3">
            <h1>Delete request response</h1>
        </div>
        <div class="alert alert-<?= $class; ?>" role="alert">
            <p><?= $message; ?></p>
            <a href='../../dashBoard.php'><button class="btn btn-success" type='button'>Home</button></a>
        </div>
    </div>
</body>

</html>