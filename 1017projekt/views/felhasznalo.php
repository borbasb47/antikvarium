<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    
        if($_SESSION["hasAddress"]==false){
            echo 
            "
            <h3 style='color:red'> Még nem adtad meg a lakhelyedet. Az alábbi mezőkben add meg az adataidat.</h3>
            <form method='POST'>

                <h4>Irányítószám:</h4>
                <input type='text' id='iranyitoszam' name='iranyitoszam'>

                <br>
                <br>

                <h4>Utca:</h4>
                <input type='text' id='utca' name='utca'>

                <br>
                <br>

                <h4>Házszám:</h4>
                <input type='text' id='hazszam' name='hazszam'>

                <button id='submitData' name='submitData'>Submit</button>

            </form>
            ";
        }
        else{
            $_SESSION["hasAddress"]=true;
            echo 
            "

                <h4>Irányítószámod: ".$_SESSION['iranyitoszam']."</h4>

                <br>
                <br>

                <h4>Utca: ".$_SESSION['utca']."</h4>

                <br>
                <br>

                <h4>Házszám: ".$_SESSION['cim']."</h4>

            ";
        }

    ?>
</body>
</html>