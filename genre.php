<?php
	include_once 'database.php';

	$conn = OpenCon();
	
	$sql = "SELECT id, name, description FROM tbl_genres;";
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