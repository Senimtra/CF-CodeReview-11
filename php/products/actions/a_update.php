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
// require_once '../../components/file_upload.php';

if ($_POST) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $breed = $_POST['breed'];
    $size = $_POST['size'];
    $age = $_POST['age'];
    $description = $_POST['description'];
    $hobbies = $_POST['hobbies'];
    $loc_zip = $_POST['loc_zip'];
    $loc_city = $_POST['loc_city'];
    $loc_address = $_POST['loc_address'];
    $image = $_POST['image'];

    // ### Update record ###

    $sql = "UPDATE pets SET name = '$name', breed = '$breed', size = '$size', age = '$age', description = '$description', hobbies = '$hobbies', loc_zip = '$loc_zip', loc_city = '$loc_city', loc_address = '$loc_address', image = '$image' WHERE id = {$id}";

    if ($connect->query($sql) === TRUE) {
        $class = "success";
        $message = "The record was successfully updated";
    } else {
        $class = "danger";
        $message = "Error while updating record : <br>" . $connect->error;
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
    <title>Update</title>
    <?php require_once '../../components/boot.php' ?>
    <link rel="stylesheet" type="text/css" href="../../../styles/styles.css">
</head>

<body>
    <?php include_once '../../header.php' ?>;
    <?php include_once 'navbar_adm_b.php' ?>;
    <div class="container content">
        <div class="mt-3 mb-3">
            <h1>Update request response</h1>
        </div>
        <div class="alert alert-<?php echo $class; ?>" role="alert">
            <p><?php echo ($message) ?? ''; ?></p>
            <p><?php echo ($uploadError) ?? ''; ?></p>
            <a href='../update.php?id=<?= $id; ?>'><button class="btn btn-warning" type='button'>Back</button></a>
            <a href='../../dashBoard.php'><button class="btn btn-success" type='button'>Home</button></a>
        </div>
    </div>
</body>

</html>