<?php 
	session_start(); 
	
	if (!isset($_SESSION["email"]) )
	{
		$_SESSION["email"] = "";
		$_SESSION["userid"] = 0;
		$_SESSION["fname"] = "";
	}
?>