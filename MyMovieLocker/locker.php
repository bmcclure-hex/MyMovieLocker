<?php
	include_once 'incFiles/global.php';
	
	if($_SESSION["email"] == "")
	{
		header("Location: http://localhost/login.php"); 
	}


	include_once 'database.php';

	$conn = OpenCon();

	if (isset($_POST["submit"])) {
		$lockername = $_POST["lockername"];
		
		$sql = "INSERT INTO tbl_locker (name, `user id`)
		VALUES ('$lockername', '" . $_SESSION["userid"] . "');";
		mysqli_query($conn, $sql);

			echo 'Locker Created';
	}
	
		
	$sql = "SELECT tbl_locker.id, tbl_locker.name FROM `tbl_locker` inner join tbl_user on tbl_user.id = tbl_locker.`user id`;";
	$result = mysqli_query($conn, $sql);
?>	
<!DOCTYPE html>
<html>

<head>
	<title>My Website</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<header>
		<?php include_once 'incFiles/loggedinnavigation.php'; ?>
	</header>

	<main>
		<h1>My Locker</h1>
		
		<a href="createlocker.php">Create New Locker</a>  <br><br>
		
		<?php
		
			if(mysqli_num_rows($result) > 0)
			{
				echo "<table><tr><th>Locker Name</th></tr>";
				while($row = mysqli_fetch_assoc($result))
				{
					echo "<tr><td>" . $row["name"]. "</td></tr>";
				}
				echo "</table>";
			}
			else
			{
				echo "0 results";
			}
		
		?>

	</main>

	<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>