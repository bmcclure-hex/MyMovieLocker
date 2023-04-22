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
	<title>My Website</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<header>
		<?php include_once 'incFiles/loggedinnavigation.php'; ?>
	</header>

	<main>
		<h1>Welcome <?php echo $_SESSION["email"] ?> to your MovieLocker</h1>
		
		View <a href="movies.php">List of Movies</a>  
		View your <a href="locker.php">Movies Lockers</a>  


	</main>

	<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>