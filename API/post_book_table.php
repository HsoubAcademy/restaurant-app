<?php
require 'param_security.php';

$date=date_create($_POST['date']);
$date= date_format($date,'Y-m-d');
$time=date_create($_POST['time']);
$time= date_format($time,'H:i:s');
$sql = "INSERT INTO bookings (date, time, seats_number, user_id) VALUES ('".security($date)."', '".security($time)."', '". security($_POST['seats_number'])."', '". security($_POST['user_id']) ."')";

if ($conn->query($sql) === TRUE) {
    echo json_encode(true);
} else {
    echo json_encode("Error: " . $sql . "<br>" . $conn->error);
}
$conn->close();
