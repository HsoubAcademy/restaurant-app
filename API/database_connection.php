<?php
$servername = "localhost";
$username = "id155479_admin";
$password = "admin_hsoub";
$dbname = "id155479_restaurant";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

return $conn;