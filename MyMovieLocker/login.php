<?php
	include_once 'incFiles/global.php';
	include_once 'incFiles/signinuser.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="login_stylesheet.css" />
    <script src="https://kit.fontawesome.com/b91d37de2e.js" crossorigin="anonymous"></script>
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
                    <p>Register Now <a href="register.php">Register Here</a></p>
                </div>
                <br>
                <div class="btn-field">
                    <button type="submit" class="btn btn-primary" value="Register" name="submit">Sign In</button>
                </div>

            </form>
        </div>
    </div>
</body>

</html>