<?php
require 'param_security.php';

$sql = "SELECT * FROM meal_type";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $arr = array();
    while ($row = $result->fetch_assoc()) {
        $arr[] = $row;
    }
    echo json_encode($arr);
} else {
    echo "0 results";
}
$conn->close();
