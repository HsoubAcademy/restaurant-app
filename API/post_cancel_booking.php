<?php
require 'param_security.php';

$sql = "UPDATE bookings SET active = 0 WHERE user_id = '".security($_POST['user_id'])."' AND id = '".security($_POST['booking_id']) ."'";

if ($conn->query($sql) === TRUE) {
    echo json_encode(true);
} else {
    echo json_encode("Error: " . $sql . "<br>" . $conn->error);
}
$conn->close();
