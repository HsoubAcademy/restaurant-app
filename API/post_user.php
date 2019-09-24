<?php
require 'param_security.php';

$sql = "SELECT id FROM users WHERE mobile = ".security($_POST['mobile'])." AND password = '" . security(md5($_POST['password']))."'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
      //create an array
    $emparray = array();

for ($i = 0; $i < 1; $i++) {
   $row =mysqli_fetch_assoc($result);

} $emparray[] = $row;
         
    echo json_encode($emparray[0]);
} else {
    $sql = "SELECT id FROM users WHERE mobile = ".security($_POST['mobile']);
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        echo json_encode(array("id"=>0));
    }else{
        $sql = "INSERT INTO users (mobile, password) VALUES (". security($_POST['mobile']).",'" . md5(security($_POST['password']))."')";
        if ($conn->query($sql) === TRUE) {
             $last_id = $conn->insert_id;
             $id = array("id"=>$last_id);
            echo json_encode($id);
        } else {
            echo json_encode("Error: " . $sql . "<br>" . $conn->error);
        }
    }
}

$conn->close();
