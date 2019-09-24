<?php
require 'param_security.php';

$sql = "SELECT m.*, (SELECT image FROM images as i WHERE i.meal_id = m.id LIMIT 1) AS avatar FROM meals as m WHERE meal_type_id = ". security($_GET["meal_type_id"]);
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
