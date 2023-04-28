<?php
include_once 'database.php';

$conn = OpenCon();

//insert into database
if (isset($_POST["submit"])) {
	$FName = $_POST["fname"];
	$LName = $_POST["lname"];
	$email = $_POST["email"];
	$password = $_POST["password"];
	$passwordRepeat = $_POST["repeat_password"];

	if ($FName != Null && $LName != Null) {

		if ($password == $passwordRepeat) {
			$sql = "SELECT * FROM tbl_user WHERE username = '$email'";
			$result = mysqli_query($conn, $sql);
			$rowCount = mysqli_num_rows($result);

			if ($rowCount > 0) {
				echo "Email already exists!";
			} else {

?><br><?php

							$sql = "INSERT INTO tbl_user (firstname, lastname, username, password)
					VALUES ('$FName', '$LName','$email',  '$password');";
							mysqli_query($conn, $sql);
							$message = "Account Created!";
							echo "<span class='message'> $message </span>";
						}
					} else {
							?><br><?php
						echo "Passwords do not match";
					}
				} else {
						?><br><?php
					echo "Name is Empty";
				}
			}

			if (isset($_POST["return"])) {
				header("Location: http://localhost:3000/index.php");
			}


			CloseCon($conn);
					?>