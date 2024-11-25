-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 25. 13:54
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `antikvarium`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cd`
--

CREATE TABLE `cd` (
  `cim` text NOT NULL,
  `rendezo` text NOT NULL,
  `forgalmazo` text NOT NULL,
  `arukod` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `kiadas` text NOT NULL,
  `kategoria` text NOT NULL,
  `mufaj` text NOT NULL,
  `borito` text NOT NULL,
  `nyelv` text NOT NULL,
  `hossz` text NOT NULL,
  `osszefoglalo` text NOT NULL,
  `allapot` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `email` text NOT NULL,
  `jelszo` text NOT NULL,
  `pontok` int(11) NOT NULL,
  `iranyitoszam` int(11) DEFAULT NULL,
  `utca` text NOT NULL DEFAULT 'none',
  `cim` text NOT NULL DEFAULT 'none',
  `telefonszam` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriak`
--

CREATE TABLE `kategoriak` (
  `id` int(11) NOT NULL,
  `megnevezes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `konyvek`
--

CREATE TABLE `konyvek` (
  `cim` text NOT NULL,
  `szerzo` text NOT NULL,
  `kiado` text NOT NULL,
  `arukod` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `oldalszam` int(11) NOT NULL,
  `megjelenes` text NOT NULL,
  `kategoria` text NOT NULL,
  `nyelv` text NOT NULL,
  `borito` text NOT NULL,
  `allapot` text NOT NULL,
  `meret` text NOT NULL,
  `osszefoglalo` text NOT NULL,
  `mufaj` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megrendeles`
--

CREATE TABLE `megrendeles` (
  `rendelesszam` int(11) NOT NULL,
  `email` text NOT NULL,
  `telefonszam` text NOT NULL,
  `iranyitoszam` int(11) NOT NULL,
  `utca` text NOT NULL,
  `hazszam` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mufajok`
--

CREATE TABLE `mufajok` (
  `id` int(11) NOT NULL,
  `megnevezes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`arukod`);

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kategoriak`
--
ALTER TABLE `kategoriak`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `konyvek`
--
ALTER TABLE `konyvek`
  ADD PRIMARY KEY (`arukod`);

--
-- A tábla indexei `megrendeles`
--
ALTER TABLE `megrendeles`
  ADD PRIMARY KEY (`rendelesszam`);

--
-- A tábla indexei `mufajok`
--
ALTER TABLE `mufajok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `cd`
  MODIFY `arukod` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `kategoriak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `konyvek`
  MODIFY `arukod` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `mufajok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `megrendeles`
  MODIFY `rendelesszam` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
