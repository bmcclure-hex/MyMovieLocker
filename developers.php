<?php
	include_once 'incFiles/global.php';
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
		<main>

		<br>
		<h1>Developers Guide.</h1>
		<h3 class="center">Do you want to query movies for your site? Use our API!</h3><br>
		<p></p><br>

		<h2>API for Movie Genre.</h2>
		<h3><a href="genre.php">Get Genre API</a></h3><br><br>

		<h2>API for Movie List.</h2>
		<h3><a href="listmovies.php">Get Movies API</a></h3><br><br>
		
		<h3>If you want to list movies by genre, select the API for Movie List and add the parameter "?genre=" #INSERT GENRE#</h3><br><br>

		
		<br><br>
	</main>
		<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>