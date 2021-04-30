<?php
session_start();
require_once '../components/db_connect.php';

if (isset($_SESSION['user']) != "") {
    header("Location: ../home.php");
    exit;
}

if (!isset($_SESSION['adm']) && !isset($_SESSION['user'])) {
    header("Location: ../index.php");
    exit;
}

// $suppliers = "";
// $result = mysqli_query($connect, "SELECT * FROM supplier");

// while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
//     $suppliers .=
//         "<option value='{$row['supplierId']}'>{$row['sup_name']}</option>";
// }
// 
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Pet</title>
    <?php require_once '../components/boot.php' ?>
    <link rel="stylesheet" type="text/css" href="../../styles/styles.css">
</head>

<body>
    <?php include_once '../header.php' ?>;
    <?php include_once 'navbar_adm_a.php' ?>;
    <div class="container content">
        <fieldset>
            <legend class='h2'>Add Pet</legend>
            <form action="actions/a_create.php" method="post">
                <table class='table'>
                    <tr>
                        <th>Name</th>
                        <td><input class="form-control" type="text" name="name" placeholder="Pet Name" /></td>
                    </tr>
                    <tr>
                        <th>Breed</th>
                        <td><input class="form-control" type="text" name="breed" placeholder="Breed Name" /></td>
                    </tr>
                    <tr>
                        <th>Size</th>
                        <td><input class="form-control" type="text" name="size" placeholder="Pet Size" /></td>
                    </tr>
                    <tr>
                        <th>Age</th>
                        <td><input class="form-control" type="number" name="age" step="any" placeholder="Age" /></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><input class="form-control" type="text" name="description" placeholder="Description" /></td>
                    </tr>
                    <tr>
                        <th>Hobbies</th>
                        <td><input class="form-control" type="text" name="hobbies" placeholder="Hobbies" /></td>
                    </tr>
                    <tr>
                        <th>ZIP-code</th>
                        <td><input class="form-control" type="number" name="loc_zip" step="any" placeholder="ZIP-code" /></td>
                    </tr>
                    <tr>
                        <th>City</th>
                        <td><input class="form-control" type="text" name="loc_city" placeholder="City" /></td>
                    </tr>
                    <tr>
                        <th>Address</th>
                        <td><input class="form-control" type="text" name="loc_address" placeholder="Address" /></td>
                    </tr>
                    <tr>
                        <th>Picture</th>
                        <td><input class="form-control" type="text" name="image" placeholder="Image-Url" /></td>
                    </tr>
                    <tr>
                        <td><button class='btn btn-success' type="submit">Insert Pet</button></td>
                        <td><a href="../dashBoard.php"><button class='btn btn-warning' type="button">Home</button></a></td>
                    </tr>
                </table>
            </form>
        </fieldset>
    </div>
</body>

</html>