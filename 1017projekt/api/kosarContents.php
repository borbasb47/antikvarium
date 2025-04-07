<?php
session_start();
require_once("./connection.php");


if($_SERVER["REQUEST_METHOD"]==="GET"){
    if(isset($_SESSION['userId'])){
        $userId=$_SESSION['userId'];
        $kosarContentsSql=$conn->query('select termekek.cim, kosar.mennyiseg from termekek, kosar where termekek.id=kosar.termekID; ');
        if(mysqli_num_rows($kosarContentsSql)==0){
            header('Content-Type: application/json');
            echo json_encode(['uzenet' => 'Üres a kosarad!']);
        }
        else{

        }
    }

    else {
        header('Content-Type: application/json');
        echo json_encode(['uzenet' => 'Hiba a lekérdezésben, nincs a sessionben id']);
    }
}


?>