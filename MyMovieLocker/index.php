<?php
	include_once 'incFiles/global.php';

	session_unset();
?>

<!DOCTYPE html>
<html>

<head>
	<title>My Website</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<header>
		<nav>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="login.php">Login/Registration</a></li>
				<li><a href="faq.php">FAQ</a></li>
				<li><a href="contact.php">Contact</a></li>
			</ul>
		</nav>
	</header>

	<main>
		<h1>Welcome to MyMovieLocker</h1>

	
		<p>MyMovieLocker allows users to track what movies they have watched.
			The user will be able to save movies to lists, similar to playlists,
			along with their personal ratings on an account created with a username
			and password. Eventually, we hope to add more security features by
			requiring email verification. They will also be able to write reviews
			on the movies listed in the website and chat with fans with comparable
			taste in movies. Movies can be selected from a catalog generated by the
			connected database. If a movie is not in the database, users will be
			able to complete a form to request the movie to be added to the database. </p>
	</main>

	<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>