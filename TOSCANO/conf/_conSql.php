<?php
$servername = "localhost";
$username = "toscano";
$password = "gittest";
$dbname = "restaurant_toscano";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("DB Connection failed: " . $conn->connect_error);
}
$conn->set_charset("utf8");
//echo "Connected successfully";

?>