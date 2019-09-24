<?php 
   require 'database_connection.php';
    function security($param){
        require 'database_connection.php';
        return mysqli_real_escape_string($conn,trim(strip_tags($param)));
    }
?>