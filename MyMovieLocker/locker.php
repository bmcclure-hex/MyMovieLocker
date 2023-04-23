<?php
	include_once 'incFiles/global.php';
	
	if($_SESSION["email"] == "")
	{
		header("Location: http://localhost/login.php"); 
	}

	if(isset($_POST["lockeradd"])){
		header("Location: http://localhost/movies.php?lockerid=" . $_POST["lockeradd"]); 
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
	
	if (isset($_POST["lockerdelete"])) {
		
		$sql = "DELETE FROM tbl_lockermovies WHERE locker_id = ".$_POST["lockerdelete"] .";"; 
		mysqli_query($conn, $sql);
		
		$sql = "DELETE FROM tbl_locker WHERE id = ".$_POST["lockerdelete"] .";"; 
		mysqli_query($conn, $sql);

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
		<h1>My Locker</h1>
		
		<a href="createlocker.php">Create New Locker</a>  <br><br>
		<form id="create-locker-form" style="display:visible;" action="locker.php" method="post">
		<?php
			if (isset($_POST["lockerread"])) {
		
				$sql = "SELECT tbl_locker.id, tbl_locker.name FROM `tbl_locker` WHERE tbl_locker.id = ". $_POST["lockerread"]  . ";";
				$result = mysqli_query($conn, $sql);
				
				if(mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_assoc($result))
					{
						echo "<div><b>Locker Name</b>" . $row["name"] . "</div>";
					}
					
				}
				else
				{
					echo "0 results";
				}
				
				$sql = "SELECT tbl_movies.`movie key` as id, tbl_movies.name, director, tbl_genres.name as genre, `release date` FROM `tbl_lockermovies` inner join tbl_movies on movie_id = tbl_movies.`movie key` inner join tbl_genres on tbl_genres.id = tbl_movies.genre  WHERE locker_id = ". $_POST["lockerread"]  . ";";
				$result = mysqli_query($conn, $sql);
				
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

			}
		
		
		
			$sql = "SELECT tbl_locker.id, tbl_locker.name, count(movie_id) as movie_count FROM `tbl_locker` left join tbl_lockermovies on id = locker_id WHERE tbl_locker.`user id` = ". $_SESSION["userid"] . " Group by locker_id;";
			$result = mysqli_query($conn, $sql);
			
			
			if(mysqli_num_rows($result) > 0)
			{
				echo "<ul id=\"locker-list\">";
				while($row = mysqli_fetch_assoc($result))
				{
					echo "<li>" . $row["name"]. " - <button type=\"submit\" class=\"btn btn-primary\" value=\"". $row["id"]. "\" name=\"lockerread\">View Locker</button> - <button type=\"submit\" class=\"btn btn-primary\" value=\"". $row["id"]. "\" name=\"lockerdelete\">Delete Locker</button> - ". $row["movie_count"]."</li>";
				}
				echo "</ul>";
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