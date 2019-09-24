<?php

require 'param_security.php';

$sql = "SELECT * FROM meals WHERE id = ". security($_GET["meal_id"]);

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $arr = array();
    while ($row = $result->fetch_assoc()) {
        $arr[] = $row;
        $arr[] = getImages($row['id'],$conn);
    }
    echo json_encode($arr);
} else {
    echo "0 results";
}

function getImages($id,$conn){
     $imageSQL = "SELECT image FROM images WHERE meal_id = ". $id;
     $imagesResult = $conn->query($imageSQL);
     if ($imagesResult->num_rows > 0) {
         
        $arr = array();
        while ($row = $imagesResult->fetch_assoc()) {
            $arr[] = $row;
        }
        return $arr;
    } else {
        return 0;
    }
}
$conn->close();
