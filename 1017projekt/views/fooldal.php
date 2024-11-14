<!DOCTYPE html> 
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Könyvesbolt</title>
    <link rel="stylesheet" href="style.css">
    
    <style>
        * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #333;
        }

        header {
            background-color: #6e3d30;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        h1 {
            font-size: 2.5em;
        }

        nav {
            margin-top: 10px;
        }

        nav ul {
            list-style-type: none;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav a {
            color: #ecf0f1;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

        section {
            padding: 40px 20px;
            max-width: 800px;
            margin: auto;
        }

        h2 {
            color: #8f622f;
            margin-bottom: 20px;
        }

        .book {
            background-color: rgb(170, 145, 108);
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 15px 0;
            padding: 15px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s;
        }

        .book:hover {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        footer {
            background-color: #6e3d30;
            color: white;
            text-align: center;
            padding: 15px 0;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 20px;
        }
        

        .navbar {
            background-color: #f8f8f8;
            border-bottom: 1px solid #ccc;
        }

        .category-list {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: space-around;
        }

        .category-list li {
            padding: 15px 20px;
        }

        .category-list a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            transition: color 0.3s;
        }
        .category-list li {
            padding: 15px 20px;
            position: relative;
        }

        .category-list a:hover {
            color: #007bff;
        }

        .category-content {
            display: none; /* Alapértelmezés szerint elrejtjük */
            position: absolute; /* Pozicionálás */
            background: white;
            border: 1px solid #ccc;
            padding: 10px;
            z-index: 1;
        }

        .category-list li:hover .category-content {
            display: block; /* Megjelenítjük hover esetén */
        }
    </style>
</head>
<body>
    <header>
        <h1>Hold Antikvárium</h1>
        <nav>
            <ul>
                <li><a href="#home">Kezdőlap</a></li>
                <li><a href="#about">Rólunk</a></li>
                <li><a href="#books">Termékek</a></li>
                <li><a href="./felhasznalo.php">Felhasználó</a></li>
                <li><a href="/1017projekt/registration" id="logOut">Kijelentkezés</a></li>
            </ul>
        </nav>
    </header>
    



     <section id="belepesregisztracio">
        <h2>Belépés/Regisztráció</h2>
        <div class="belepesregisztracio">
            <a href="./registration">Belépés/Regisztráció</a>
            <p>Itt tudsz létrehozni fiókot, vagy bejelentkezni egy meglévőbe.</p>
            
        </div>
    </section>
    
    <nav class="navbar">
        <!-- <ul class="category-list">
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
        </ul> -->

    </nav>

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
        </div> -->
    </section>

    <section id="contact">
        <h2>Kapcsolat</h2>
        <p>Email: info@konyvesbolt.hu</p>
        <p>Telefon: +36 1 234 5678</p>
    </section>

    <footer>
        <p>&copy; 2024 Könyvesbolt. Minden jog fenntartva.</p>
    </footer>
</body>
</html>