<!DOCTYPE html>
<html>

<head>
	<title>Contact Us</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<header>
		<?php include_once 'incFiles/b_navigation.php'; ?>
	</header>

	<main>
		<br>
		<h1>Contact Us</h1>
		<form style="text-align:center;">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" required>
			<label for="email">Email:</label>
			<input type="email" id="email" name="email" required>
			<label for="message">Message:</label>
			<textarea id="message" name="message" required></textarea>
			<input type="submit" value="Send">
		</form>
		<br><br>
	</main>

</body>

<footer>
	<br>
	<p style="text-align: center;">&copy; 2023 MyMovieLocker. All rights reserved.</p>
</footer>

</html>