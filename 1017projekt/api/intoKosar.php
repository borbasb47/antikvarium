<?php
session_start();

require_once("./connection.php");

$jsonProductData = file_get_contents('php://input');

$ProductData = json_decode($jsonProductData, true);
if($_SERVER["REQUEST_METHOD"] === "POST"){
    if (isset($ProductData['itemId'], $ProductData['itemAmount'])) {
        $insertIntoKosar=$conn->query()
    }
}
?>