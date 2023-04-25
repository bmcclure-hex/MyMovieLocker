
<?php
	function OpenCon()
	{
		$dbhost = "sql9.freemysqlhosting.net";
		$dbuser = "sql9613512";
		$dbpass = "1234";
		$db = "sql9613512";
		$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
	 
		return $conn;
	}
	 
	function CloseCon($conn)
	{
		$conn -> close();
	}
?>