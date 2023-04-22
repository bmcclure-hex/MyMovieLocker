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
		<h1>New Locker</h1>
		<div class="container">
			<div class="form-box">

				
				<form action="locker.php" method="post">

					<div class="form-group">
						<input type="text" class="input-field" name="lockername" placeholder="Locker Name:">
					</div>
					
					<div class="btn-field">
						<button type="submit" class="btn btn-primary" value="Create" name="submit">Create New Locker</button>
					</div>

				</form>
			</div>
		</div>
	</main>

	<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>