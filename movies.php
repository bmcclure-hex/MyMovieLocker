<?php
	include_once 'database.php';

	$conn = OpenCon();

	if (isset($_POST["submit2locker"])) {
		$lockerid = $_POST["mylockers"];
		$movieid = $_POST["movie_id"];
		
		$sql = "INSERT INTO tbl_lockermovies (locker_id, movie_id)
		VALUES (". $lockerid .", " . $movieid . ");";
		mysqli_query($conn, $sql);

			echo 'Movie Saved to Locker';
	}
		
	$sql = "SELECT tbl_movies.`movie key` as id, tbl_movies.name, director, tbl_genres.name as genre, `release date` FROM tbl_movies inner join tbl_genres on tbl_genres.id = tbl_movies.genre;";
	$result = mysqli_query($conn, $sql);
?>	

<!DOCTYPE html>
<html>

<head>
	<?php include_once 'incFiles/header.php'; ?>

	<style>
    main {
      text-align: center;
    }

    #search {
      background-color: white;
      border: 1px solid #ccc;
      padding: 5px;
      width: 50%;
      font-size: 16px;
      text-align: center;
      margin-left: auto;
      margin-right: auto;
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
    }
  </style>
</head>

<body>
	<header>
		<?php include_once 'incFiles/loggedinnavigation.php'; ?>
	</header>

	<main>
		<h1>Available Movies</h1>
		<form action="addmovie2locker.php" method="post">
		<?php
		
			if(mysqli_num_rows($result) > 0)
			{
				echo "<table><tr><th>Movie Title</th><th>Genre</th><th>Release Date</th><th>Director</th><th></th><th></th></tr>";
				while($row = mysqli_fetch_assoc($result))
				{
					echo "<tr><td>" . $row["name"]. "</td><td>" . 
					$row["genre"]. "</td><td>". $row["release date"]. "</td><td>". 
					$row["director"] . "</td><td><button type=\"submit\" class=\"btn btn-primary\" value=\"". $row["id"]. "\" name=\"addmovietolocker\">Add to Locker</button></td><td><button type=\"submit\" class=\"btn btn-primary\" value=\"". $row["id"]. "\" name=\"viewmoviedetails\">Movie Details</button></td></tr>";
				}
				echo "</table>";
			}
			else
			{
				echo "0 results";
			}
		
		?>
		</form>
	</main>

	<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>
				
	
	
<?php	
	CloseCon($conn);
?>