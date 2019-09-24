<?php
require 'param_security.php';

$sql = "INSERT INTO contacts (email, message) VALUES ('".security($_POST['email'])."', '".security($_POST['message'])."')";

if ($conn->query($sql) === TRUE) {
    echo json_encode(true);
} else {
    echo json_encode("Error: " . $sql . "<br>" . $conn->error);
}
$conn->close();
