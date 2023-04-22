<?php
	include_once 'database.php';

	$conn = OpenCon();

	if (isset($_POST["submit"])) {
		
		$email = $_POST["email"];
		$password = $_POST["password"];
		
		$sql = "SELECT * FROM tbl_user WHERE username = '$email'";
		$result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_assoc($result);
					
		if (($row['username'] == $email) && ($row['password'] == $password) ) {
		  
			// redirect here 
			//$link_address = 'myaccount.php';
			
			$_SESSION["email"] = $email;
			$_SESSION["userid"] = $row['id'];
			header("Location: http://localhost/myaccount.php"); 
		   // echo '<a href="'.$link_address.'">Link</a>';
			echo" Account found!";
		}else{
			echo 'No Account Found';
		}
	}
	
	CloseCon($conn);
?>