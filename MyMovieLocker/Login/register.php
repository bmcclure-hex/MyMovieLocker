<?php
include_once 'database.php'
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
            <?php
                //insert into database
                if (isset($_POST["submit"])) {
                    $Name = $_POST["name"];
                    $email = $_POST["email"];
                    $password = $_POST["password"];
                    $passwordRepeat = $_POST["repeat_password"];

                    if ($Name != Null) {
    
                        if ($password == $passwordRepeat) {
                            $sql = "SELECT * FROM regstration WHERE email = '$email'";
                            $result = mysqli_query($con, $sql);
                            $rowCount = mysqli_num_rows($result);
                            
                            if ($rowCount>0) {
                                echo"Email already exists!";
                            }else{

                                ?><br><?php
 
                                $sql = "INSERT INTO regstration (Name, email, password)
                                VALUES ('$Name', '$email',  '$password');";
                                mysqli_query($con, $sql);
                        
                                    echo 'Account Created';}
                        } else {
                             ?><br><?php
                            echo "Passwords do not match";
                            }
                    }else {
                        ?><br><?php
                        echo "Name is Empty";
                    }
                }
                    
                ?>

            <h1 id="title">Sign Up</h1>
            <br>
            <form action="register.php" method="post">
                <div class="form-group">
                    <i class="fa-solid fa-user fa-sm"></i>
                    <input type="text" class="input-field" name="name" placeholder="Full Name:">
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
</body>

</html>