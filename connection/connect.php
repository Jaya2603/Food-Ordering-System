<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "onlinefoodphp";
$portnumber = 3307;

$db = mysqli_connect($servername, $username, $password, $dbname, $portnumber);

if (!$db) {
    die("Connection failed: " . mysqli_connect_error());
}
?>