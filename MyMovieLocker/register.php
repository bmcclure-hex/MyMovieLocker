<?php
	include_once 'incFiles/global.php';
	include_once 'incFiles/newregistration.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="login_stylesheet.css" />
    <script src="https://kit.fontawesome.com/b91d37de2e.js" crossorigin="anonymous"></script>
</head>

<body>
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

            </form>
        </div>
    </div>
	<?php include_once 'incFiles/footer.php'; ?>
</body>

</html>