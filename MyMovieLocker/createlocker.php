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
</head>

<body>
	<header>
		<?php include_once 'incFiles/loggedinnavigation.php'; ?>
	</header>

	<main>
		<h1>New Locker</h1>
		<div class="container">
			<div class="form-box">

				
				<form action="locker.php" method="post" id="create-locker-form" style="display:none;">
					<label for="locker-name">Locker Name:</label>
					<input type="text" class="input-field" name="lockername" placeholder="Locker Name:" required>
					<br>
					<button type="submit" class="btn btn-primary" value="Create" name="submit">Create New Locker</button>
					

				</form>
			</div>
		</div>
	</main>

	<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>