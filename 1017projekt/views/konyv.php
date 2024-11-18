<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Könyv címe - Könyvesbolt</title>
    <link rel="stylesheet" href="menu.css">
    <link rel="stylesheet" href="termek.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <style>
        <?php include 'menu.css'; ?>
        <?php include 'termek.css'; ?>
    </style>
    <header>
        <div class="menu" id="myTopnav">
            <a href="./fooldal.php" class="active">*név* antikvárium</a>
            <a href="#about">rólunk</a>
            <a href="#books">könyvek</a>
            <a href="#cds">cd/dvd</a>
            <a href="#contact">kapcsolat</a>
            <a href="./felhasznalo.php">Felhasználó</a>
            <a href="/1017projekt/registration" id="logOut">kijelentkezés</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
              <i class="fa fa-bars"></i>
            </a>
          </div>
    </header>
    <br>
    <h2 id="cim">Dorian Gray arcképe</h2>
    <div id="content">
        
        <div id="kep">
            <img src="./dorian.jpg" alt="Könyv címe" style="max-width: 300px; margin-top: 10px;">
            <h3>Leírás:</h3>
            <p id="leiras">A könyv részletes leírása itt található. Itt bemutathatod a történetet, a szereplőket, és minden egyéb fontos információt, ami érdekes lehet a potenciális vásárlók számára.
            </p>
        </div>
        <section id="book-details">
            
            <p id="szerzo"><strong>Szerző: </strong> Oscar Wilde</p> <hr>
            <p id="kiado"><strong>Kiadó: </strong> Athenaeum Kiadó Kft.</p> <hr>
            <p id="megjelenes"><strong>Kiadás éve:</strong> 2016</p> <hr>
            <p id="allapot"><strong>Állapot:</strong> Jó</p> <hr>
            <p id="nyelv"><strong>Nyelv:</strong> Magyar</p> <hr>
            <p id="oldalszam"><strong>Oldalak száma:</strong> 334</p> <hr>
            <p id="borito"><strong>Borító:</strong> Keménytáblás</p> <hr>
            <p id="meret"><strong>Méret:</strong> 374gr</p> <hr>
            <p id="ar"><strong>Ár:</strong> 3000 Ft</p> <hr>
        </section>
    </div>
    <footer>
        <p>&copy; 2024 Könyvesbolt. Minden jog fenntartva.</p>
        <p>Email: info@konyvesbolt.hu</p>
        <p>Telefon: +36 1 234 5678</p>
    </footer>

    <script>
        <?php include 'script.js'; ?>
    </script>
</body>
</html>