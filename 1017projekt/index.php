<?php 
session_start();

$parsed = parse_url($_SERVER["REQUEST_URI"]); 
$path = $parsed["path"];

$servername="localhost";
$username = "root";
$password ="";
$dbname="antikvarium";

$conn=new mysqli($servername, $username, $password, $dbname);
$email="";
switch ($path) {
    case "/1017projekt/registration":
        session_unset(); 
        if ($conn->connect_error) {
            die("A csatlakozás sikertelen volt: " . $conn->connect_error);
        }
        if(isset($_POST['hiddenInput'])){
            $hiddenInput=$_POST['hiddenInput'];

            //Bejelentkezés
            if(isset ($_POST['loginEmail']) && isset($_POST['loginPassword']) && $hiddenInput=="login"){
                $email=$_POST['loginEmail'];
                $password=$_POST['loginPassword'];
                $emailExistCheck="select * from felhasznalo where email='$email'";
                $emailExistCheckResult=$conn->query($emailExistCheck);
                if($emailExistCheckResult->num_rows==0){
                    echo "<h2 style='color:red'>Ezzel az emailel nem létezik fiók</h2>";
                }
                else{
                    $row = $emailExistCheckResult->fetch_assoc();
                    $correctPassword=$row['jelszo'];
                    $isPasswordMatching=password_verify($password,$correctPassword);
                    if($isPasswordMatching==true){
                        echo "<h2 style='color:green'>Helyes jelszó</h2>";
                        //sleep(seconds: 0.3);
                        $_SESSION['email']=$email;
                        header("Location: " . "./views/fooldal.php");
                        exit();

                    }
                    else{
                        echo "<h2 style='color:red'>Rossz jelszó</h2>";
                    }
                }
            }
            
            //Regisztrálás
            if(isset ($_POST['email']) && isset($_POST['password']) && isset($_POST['passwordAgain']) && $hiddenInput=="register"){

                $email=$_POST['email'];
                $password=$_POST['password'];
                $passwordAgain=$_POST['passwordAgain'];

                if($password==$passwordAgain){
                    $emailExistCheck="select * from felhasznalo where email='$email'";
                    $emailExistCheckResult=$conn->query($emailExistCheck);
                    if($emailExistCheckResult->num_rows>0){
                        echo "<h2 style='color:red'>Ezzel az emailel már regisztráltak</h2>";
                    }
                    else{
                        $hashedPassword=password_hash($password, PASSWORD_DEFAULT);
                        $sqlInsertDatas = "INSERT INTO felhasznalo(email, jelszo) VALUES ('$email', '$hashedPassword')";
                        if ($conn->query($sqlInsertDatas) === TRUE) {
                            echo "<h2 style='color:green'>Sikeres regisztráció!</h2>";
                            //$_SESSION['email']=$email;
                            header("Location: " . $_SERVER['REQUEST_URI']);
                            exit();
                        } else {
                            echo "Hiba: " . $conn->error;
                        }
                    }
                    
                }
                else{
                    echo "<h2 style='color:red'>A két beírt jelszó eltért egymástól</h2>";
                }
            }
        }
        $conn->close();
        require_once("./views/regisztracio.php");
        break;
    case "/1017projekt/":
        $numOfUsersRow = ($conn->query("SELECT COUNT(email) as count FROM felhasznalo"))->fetch_assoc();
        $numOfUsers = $numOfUsersRow['count'];
        echo "Csatlakozz az oldalunk " . $numOfUsers . " felhasználójához!";
        require_once('./views/cimlap.html');
        break;
    case "/1017projekt/views/fooldal.php":
        require_once('./views/fooldal.php');
        break;
    case "/1017projekt/views/konyv.php":
        require_once('./views/konyv.php');
        break;
    case "/1017projekt/views/felhasznalo.php":
        $email=$_SESSION["email"];
        echo "Az email címed: ".$email;
        $hazszam = (($conn->query("select felhasznalo.cim from felhasznalo where email='$email'"))->fetch_assoc())["cim"];
        if($hazszam=="none"){
            $_SESSION["hasAddress"]=false;
        }
        else{
            $_SESSION["hasAddress"]=true;
        }
        if($_SESSION["hasAddress"]==false){
            if(isset ($_POST['iranyitoszam']) && isset($_POST['utca']) && isset($_POST['hazszam'])){
                $iranyitoszam=$_POST['iranyitoszam'];
                $utca=$_POST['utca'];
                $hazszam=$_POST['hazszam'];
                if($iranyitoszam!="" && $utca!="" && $hazszam!=""){
                    $sqlAddress="update felhasznalo set iranyitoszam=$iranyitoszam, utca='$utca', cim='$hazszam' where email='$email'";
                    if($conn->query($sqlAddress)===TRUE){
                        echo "
                        <script>
                        alert('Sikeres lakhely regisztráció!');
                        </script>
                        ";
                        $_SESSION["hasAddress"]=true;
                    }
                }
                else{
                    echo "Hiányosak az adataid!";
                }
            }
        }
        if($_SESSION["hasAddress"]==true){
            $addressDatasRow = ($conn->query("select iranyitoszam, utca, cim from felhasznalo where email='$email' "))->fetch_assoc();
            $_SESSION["iranyitoszam"]=$addressDatasRow["iranyitoszam"];
            $_SESSION["utca"]=$addressDatasRow["utca"];
            $_SESSION["cim"]=$addressDatasRow["cim"];
        }
        require_once('./views/felhasznalo.php');
        break;
    default:
        echo "Az oldal nem található, <a href='/1017projekt/'>ugrás a címlapra</a>";
        break;
}