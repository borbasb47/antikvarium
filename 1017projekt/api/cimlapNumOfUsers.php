<?php
require_once("connection.php")

$numOfUsersRow = ($conn->query("SELECT COUNT(email) as count FROM felhasznalo"))->fetch_assoc();
$numOfUsers = $numOfUsersRow['count'];
echo json_encode($numOfUsers);