<?php
include_once 'incFiles/global.php';
include_once 'incFiles/newregistration.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <?php include_once 'incFiles/header.php'; ?>
</head>

<body>
	<header>
		<?php include_once 'incFiles/loggedinnavigation.php'; ?>
	</header>
    <div class="container">
        <div class="form-box">


            <h1 id="title">Sign Up</h1>
            <br>
            <form action="register.php" method="post">
                <div class="form-group">
                    <i class="fa-solid fa-user fa-sm"></i>
                    <input type="text" class="input-field" name="fname" placeholder="First Name:">
                </div>
                <div class="form-group">
                    <i class="fa-solid fa-user fa-sm"></i>
                    <input type="text" class="input-field" name="lname" placeholder="Last Name:">
                </div>
                <div class="form-group">
                    <i class="fa-solid fa-envelope fa-sm"></i>
                    <input type="email" class="input-field" name="email" placeholder="Email:">
                </div>
                <div class="form-group">
                    <i class="fa-solid fa-lock fa-sm"></i>
                    <input type="password" class="input-field" name="password" placeholder="Password:">
                </div>
                <div class="form-group">
                    <i class="fa-solid fa-lock fa-sm"></i>
                    <input type="password" class="input-field" name="repeat_password" placeholder="Repeat Password:">
                </div>
                <div>
                    <p>Already Registered <a href="login.php">Login Here</a></p>
                </div>
                <br>
                <div class="btn-field">
                    <button type="submit" class="btn btn-primary" value="Register" name="submit">Sign up</button>
                </div>
                <br>
            </form>
        </div>
    </div>
    <?php include_once 'incFiles/footer.php'; ?>
</body>

</html>