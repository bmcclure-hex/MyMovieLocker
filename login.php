<?php
include_once 'incFiles/global.php';
include_once 'incFiles/signinuser.php';

if (isset($_GET["logout"])) {
    session_destroy();
}


?>

<!DOCTYPE html>
<html lang="en">

<head>

    <?php include_once 'incFiles/header.php'; ?>

</head>

<body>
    <div class="container">
        <div class="form-box">


            <h2 id="title">Login</h2>
            <br>
            <form action="login.php" method="post">

                <div class="form-group">
                    <i class="fa-solid fa-envelope fa-sm"></i>
                    <input type="email" class="input-field" name="email" placeholder="Email:">
                </div>
                <div class="form-group">
                    <i class="fa-solid fa-lock fa-sm"></i>
                    <input type="password" class="input-field" name="password" placeholder="Password:">
                </div>

                <div>
                    <p><a href="register.php">Register Here</a></p>
                </div>
                <br>
                <div class="btn-field">
                    <button type="submit" class="btn btn-primary" value="Register" name="submit">Sign In</button>
                </div>
                <br>
                <div class="btn-field2">
                    <button type="submit" class="btn btn-primary" value="Return" name="return">Home page</button>
                </div>

            </form>
        </div>
    </div>

    <?php include_once 'incFiles/footer.php'; ?>
</body>

</html>