<?php
$servername="localhost";
$username = "root";
$password ="";
$dbname="antikvarium";

$conn=new mysqli($servername, $username, $password, $dbname);

if (!$conn) {  //ha nem jött létre a kapcsolat
   die("A kapcsolat nem jött létre" . mysqli_connect_error()); //mysqli_connect_error() --> milyen hiba történt
}