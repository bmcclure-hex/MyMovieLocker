<?php

$serverName = "sql9.freemysqlhosting.net";
$userName = "sql9613512";
$password = "ARpRhrpEIM";
$dbName = "sql9613512";

//connection
$con = mysqli_connect($serverName, $userName, $password, $dbName);

if(mysqli_connect_errno()){
    echo "Failed connection";
}
echo "Connection Success"
?>