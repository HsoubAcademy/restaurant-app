<?php
require 'param_security.php';

$sql = "SELECT * FROM bookings WHERE active <> 0 AND user_id = ". security($_GET["user_id"]);
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $arr = array();
    while ($row = $result->fetch_assoc()) {
        $arr[] = $row;
    }
    echo json_encode($arr);
} else {
    echo json_encode("");
}
$conn->close();
