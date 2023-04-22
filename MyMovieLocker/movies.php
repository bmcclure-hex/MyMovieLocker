<?php
	include_once 'database.php';

	$conn = OpenCon();

		
	$sql = "SELECT tbl_movies.name, director, tbl_genres.name as genre, `release date` FROM tbl_movies inner join tbl_genres on tbl_genres.id = tbl_movies.genre;";
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
		<?php
		
			if(mysqli_num_rows($result) > 0)
			{
				echo "<table><tr><th>Movie Title</th><th>Genre</th><th>Release Date</th><th>Director</th></tr>";
				while($row = mysqli_fetch_assoc($result))
				{
					echo "<tr><td>" . $row["name"]. "</td><td>" . 
					$row["genre"]. "</td><td>". $row["release date"]. "</td><td>". 
					$row["director"] . "</td></tr>";
				}
				echo "</table>";
			}
			else
			{
				echo "0 results";
			}
		
		?>
	</main>

	<footer>
		<p>&copy; 2023 MyMovieLocker. All rights reserved.</p>
	</footer>

</body>

</html>
				
	
	
<?php	
	CloseCon($conn);
?>