<?php
include_once 'database.php';

$conn = OpenCon();



?>

<!DOCTYPE html>
<html>

<head>
	<?php include_once 'incFiles/header.php'; ?>
</head>

<body>
	<header>
		<?php include_once 'incFiles/b_navigation.php'; ?>
	</header>

	<main>
		<h1>Available Movies</h1>
		<?php

		if (isset($_GET["movieid"])) {
			$movieid = $_GET["movieid"];

			$sql = "SELECT tbl_movies.`movie key` as id, tbl_movies.name, director, tbl_genres.name as genre, `release date`, tbl_movies.description FROM tbl_movies inner join tbl_genres on tbl_genres.id = tbl_movies.genre WHERE tbl_movies.`movie key` = " . $movieid . ";";
			$result = mysqli_query($conn, $sql);


			if (mysqli_num_rows($result) > 0) {
				echo "<table><tr><th>Movie Title</th><th>Genre</th><th>Release Date</th><th>Director</th></tr>";
				while ($row = mysqli_fetch_assoc($result)) {
					echo "<tr><td>" . $row["name"] . "</td><td>" .
						$row["genre"] . "</td><td>" . $row["release date"] . "</td><td>" .
						$row["director"] . "</td></tr>";
					echo "<tr><th colspan=\"4\">Description</th></tr><tr><td colspan=\"4\">" . $row["description"] . "</td></tr>";
				}
				echo "</table>";
			} else {
				echo "0 results";
			}
		}

		?>

	</main>

	<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>



<?php
CloseCon($conn);
?>