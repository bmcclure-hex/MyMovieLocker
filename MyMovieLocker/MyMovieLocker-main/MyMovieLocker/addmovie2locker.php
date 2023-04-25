<?php
	include_once 'incFiles/global.php';
	
	if($_SESSION["email"] == "")
	{
		header("Location: http://localhost/login.php"); 
	}

	if(isset($_POST["viewmoviedetails"])){
		header("Location: http://localhost/moviesdetail.php?movieid=".$_POST["viewmoviedetails"]); 
	}

	include_once 'database.php';

	$conn = OpenCon();

	if (isset($_POST["submit"])) {
		$lockername = $_POST["lockername"];
		
		$sql = "INSERT INTO tbl_locker (name, `user id`)
		VALUES ('$lockername', '" . $_SESSION["userid"] . "');";
		mysqli_query($conn, $sql);

			echo 'Locker Created';
	}
	
	
	
	$sql = "SELECT tbl_movies.`movie key` as id, tbl_movies.name, director, tbl_genres.name as genre, `release date`, tbl_movies.description FROM tbl_movies inner join tbl_genres on tbl_genres.id = tbl_movies.genre WHERE tbl_movies.`movie key` = ". $_POST["addmovietolocker"]. ";";
	$result = mysqli_query($conn, $sql);
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
		<h1>Movie Details</h1>
		
		<a href="createlocker.php">Add New Locker</a>  <br><br>
		<form action="movies.php" method="post">
		<?php
		
			if(mysqli_num_rows($result) > 0)
			{
				echo "<table><tr><th>Movie Title</th><th>Genre</th><th>Release Date</th><th>Director</th></tr>";
				while($row = mysqli_fetch_assoc($result))
				{
					echo "<tr><td><input type=\"hidden\" value=\"". $row["id"]."\" name=\"movie_id\">" . $row["name"]. "</td><td>" . 
					$row["genre"]. "</td><td>". $row["release date"]. "</td><td>". 
					$row["director"] . "</td></tr>";
					echo "<tr><th colspan=\"4\">Description</th></tr><tr><td colspan=\"4\">". $row["description"]. "</td></tr>";
				}
				echo "</table>";
			}
			else
			{
				echo "0 results";
			}
			
			echo "<br><br><br>";
			$sql = "SELECT tbl_locker.id, tbl_locker.name FROM `tbl_locker` WHERE tbl_locker.`user id` = ". $_SESSION["userid"] . ";";
			$result = mysqli_query($conn, $sql);
			
			if(mysqli_num_rows($result) > 0)
			{
				echo "<label for=\"mylockers\">Aavailable Lockers:</label>";
				echo "<select name=\"mylockers\" id=\"mylockers\">";
				while($row = mysqli_fetch_assoc($result))
				{
					echo "<option value=\"". $row["id"]."\">" . $row["name"]. "</option>";
				}
				echo "</select>";
			}
			else
			{
				echo "You need to create a locker to add movies to it.";
			}
		
		?>
			<div class="btn-field">
				<button type="submit" class="btn btn-primary" value="Create" name="submit2locker">Add Movie to Locker</button>
			</div>
		</form>

	</main>

	<?php include_once 'incFiles/footer.php'; ?>

</body>

</html>