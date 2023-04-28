<?php
	include_once 'incFiles/global.php';
	
	
	if($_SESSION["email"] == "")
	{
		header("Location: http://localhost/login.php"); 
	}

?>

<!DOCTYPE html>
<html>

<head>
	<?php include_once 'incFiles/header.php'; ?>

	<style>
			main {
				text-align: center;
			}

			table {
				border-collapse: collapse;
				margin-top: 20px;
				margin-bottom: 20px;
				margin-left: auto;
				margin-right: auto;
				text-align: center;
			}

			td {
				padding: 10px;
				margin-bottom: 20px;
			}

			tr {
				margin-bottom: 20px;
			}
		</style>
</head>

<body>

		<header>
			<?php include_once 'incFiles/loggedinnavigation.php'; ?>
		</header>
		<div class="container">
 		
		<main>
		<div class="form-box2">
			<h2>Welcome <?php echo $_SESSION["fname"] ." ". $_SESSION["lname"] ?>, to your MovieLocker!</h2>
			<br>
			<b>View <a href="movies.php">List of Movies</a></b>  <br>
			<b>View your <a href="locker.php">Movies Lockers</a></b>

			</div>
		</main>
		<?php include_once 'incFiles/footer.php'; ?>
 </div>
</body>

</html>