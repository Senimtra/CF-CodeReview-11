<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <?php require_once '../components/boot.php' ?>
    <link rel="stylesheet" type="text/css" href="../../styles/styles.css">
</head>

<body>
    <?php include_once '../header.php' ?>
    <?php include_once 'navbar_adm_a.php' ?>
    <div class="container-fluid mx-auto pt-0 px-5">
        <div class="wrapSideOut mx-lg-5">
            <div class="wrapSideIn mx-lg-5">
                <div class="wrapHero m-4 mt-0 mb-0">
                    <div class="outerRimNav">
                        <div class="innerRimNav">
                            <div id="groundNav">
                                <div id="borderMain">
                                    <div class="container">
                                        <div class="mt-3 mb-3">
                                            <h1>Invalid Request</h1>
                                        </div>
                                        <div class="alert alert-warning" role="alert">
                                            <p>You've made an invalid request. Please <a href="../index.php" class="alert-link">go back</a> to index and try again.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include_once '../footer.php' ?>
</body>

</html>