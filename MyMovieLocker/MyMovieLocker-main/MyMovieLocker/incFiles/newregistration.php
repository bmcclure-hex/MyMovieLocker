<?php
	include_once 'database.php';

	$conn = OpenCon();

	//insert into database
	if (isset($_POST["submit"])) {
		$FName = $_POST["fname"];
		$email = $_POST["email"];
		$password = $_POST["password"];
		$passwordRepeat = $_POST["repeat_password"];

		if ($FName != Null) {

			if ($password == $passwordRepeat) {
				$sql = "SELECT * FROM regstration WHERE email = '$email'";
				$result = mysqli_query($conn, $sql);
				$rowCount = mysqli_num_rows($result);
				
				if ($rowCount>0) {
					echo"Email already exists!";
				}else{

					?><br><?php

					$sql = "INSERT INTO regstration (name, email, password)
					VALUES ('$FName','$email',  '$password');";
					mysqli_query($conn, $sql);
			
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

	CloseCon($conn);
?>