<?php
$servername="localhost";
$username="root";
$password="";
$database="vaccine";

$con= mysqli_connect($servername, $username, $password, $database);

if($con){
    // echo "database connected successfully";
}

if(!$con){
    echo "database not connected";
}



?>