<?php
$servername="localhost";
$username = "root";
$password ="";
$dbname="antikvarium";

$conn=new mysqli($servername, $username, $password, $dbname);

if (!$conn) {  
   die("A kapcsolat nem jött létre" . mysqli_connect_error());
}