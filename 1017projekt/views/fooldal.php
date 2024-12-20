<!DOCTYPE html> 
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Könyvesbolt</title>
    <link rel="stylesheet" href="./menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        <?php include 'menu.css'; ?>
        <?php include 'termek.css'; ?>
    </style>
</head>
<body>
    <header>
    <div class="menu" id="myTopnav">
            <a href="#fooldal" class="active">*név* antikvárium</a>
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
    



     <section id="belepesregisztracio">
        <h2>Belépés/Regisztráció</h2>
        <div class="belepesregisztracio">
            <a href="./registration">Belépés/Regisztráció</a>
            <p>Itt tudsz létrehozni fiókot, vagy bejelentkezni egy meglévőbe.</p>
            
        </div>
    </section>
    <!--
    <nav class="navbar">
         <ul class="category-list">
            <li>
                <a href="#">Felnőtt könyvek</a>
                <div class="category-content">
                    <h2>Felnőtt könyvek</h2>
                    <p>Itt találhatók a felnőtt könyvek.</p>
                </div>
            </li>
            <li>
                <a href="#">Gyermek könyvek</a>
                <div class="category-content">
                    <h2>Gyermek könyvek</h2>
                    <p>Itt találhatók a gyermek könyvek.</p>
                </div>
            </li>
            <li>
                <a href="#">Szépirodalom</a>
                <div class="category-content">
                    <h2>Szépirodalom</h2>
                    <p>Itt találhatók a szépirodalom művei.</p>
                </div>
            </li>
            <li>
                <a href="#">Tudományos könyvek</a>
                <div class="category-content">
                    <h2>Tudományos könyvek</h2>
                    <p>Itt találhatók a tudományos könyvek.</p>
                </div>
            </li>
            <li>
                <a href="#">Tankönyvek</a>
                <div class="category-content">
                    <h2>Tankönyvek</h2>
                    <p>Itt találhatók a tankönyvek.</p>
                </div>
            </li>
            <li>
                <a href="#">E-könyvek</a>
                <div class="category-content">
                    <h2>E-könyvek</h2>
                    <p>Itt találhatók az e-könyvek.</p>
                </div>
            </li>
        </ul>

    </nav> -->

    <section id="about">
        <h2>Rólunk</h2>
        <p>Üdvözöljük a könyvesboltunkban! Széles választékban kínálunk könyveket minden műfajban.</p>
    </section>
   

    <section id="books">
        <!-- <h2>Könyvek</h2>
        <div class="book">
            <a href="dorian.html">Dorian Gray arcképe</a>
            <p>Szerző: Oscar Wilde</p>
            <img src="OIP.jfif" alt="Dorian Gray arcképe">
        </div>
    </section>

    <section id="contact">
        <h2>Kapcsolat</h2> -->
        
    </section>

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