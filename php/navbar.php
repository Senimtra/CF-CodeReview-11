<nav class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                <a class="nav-link" href="senior.php">Seniors</a>
                <a class="nav-link" href="update.php?id=<?php echo $_SESSION['user'] ?>">Profile</a>
                <a class="nav-link" href="logout.php?logout">Sign out</a>
            </div>
        </div>
    </div>
</nav>