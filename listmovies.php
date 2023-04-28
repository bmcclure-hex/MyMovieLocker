<?php
	include_once 'database.php';
	

	$conn = OpenCon();
	
	if(isset($_GET["genre"])){
		$sql = "SELECT `movie key` as id, tbl_movies.name, tbl_movies.description, director, tbl_genres.id as genre FROM tbl_movies INNER JOIN tbl_genres ON tbl_genres.id = tbl_movies.genre WHERE tbl_genres.name = '" . $_GET["genre"] . "';";
	}
	else {
		$sql = "SELECT `movie key` as id, tbl_movies.name, tbl_movies.description, director, tbl_genres.id as genre FROM tbl_movies INNER JOIN tbl_genres ON tbl_genres.id = tbl_movies.genre;";
	}
	
	$result = mysqli_query($conn, $sql);
	
	//create an array
    $emparray = array();
    while($row =mysqli_fetch_assoc($result))
    {
        $emparray[] = $row;
    }
	
	echo json_encode($emparray);
	
	mysqli_close($conn);
?>	