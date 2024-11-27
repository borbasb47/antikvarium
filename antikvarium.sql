-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 27. 17:30
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

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
-- Tábla szerkezet ehhez a táblához `kosar`
--

CREATE TABLE `kosar` (
  `mennyiseg` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `felhasznaloId` int(11) NOT NULL,
  `id` int(11) NOT NULL
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
  `hazszam` text NOT NULL,
  `felhasznaloId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mufajok`
--

CREATE TABLE `mufajok` (
  `id` int(11) NOT NULL,
  `megnevezes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `cim` text NOT NULL,
  `alkoto` text NOT NULL,
  `forgalmazo` text NOT NULL,
  `id` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `kiadas` text NOT NULL,
  `kategoria` text NOT NULL,
  `mufaj` text NOT NULL,
  `borito` text NOT NULL,
  `nyelv` text NOT NULL,
  `hossz` text NOT NULL,
  `osszefoglalo` text NOT NULL,
  `allapot` text NOT NULL,
  `tipus` int(11) NOT NULL
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
-- A tábla indexei `kosar`
--
ALTER TABLE `kosar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `felhasznaloId` (`felhasznaloId`);

--
-- A tábla indexei `megrendeles`
--
ALTER TABLE `megrendeles`
  ADD PRIMARY KEY (`rendelesszam`),
  ADD KEY `felhasznaloId` (`felhasznaloId`);

--
-- A tábla indexei `mufajok`
--
ALTER TABLE `mufajok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cd`
--
ALTER TABLE `cd`
  MODIFY `arukod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kategoriak`
--
ALTER TABLE `kategoriak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `konyvek`
--
ALTER TABLE `konyvek`
  MODIFY `arukod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kosar`
--
ALTER TABLE `kosar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `megrendeles`
--
ALTER TABLE `megrendeles`
  MODIFY `rendelesszam` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `mufajok`
--
ALTER TABLE `mufajok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kosar`
--
ALTER TABLE `kosar`
  ADD CONSTRAINT `kosar_ibfk_1` FOREIGN KEY (`felhasznaloId`) REFERENCES `felhasznalo` (`id`);

--
-- Megkötések a táblához `megrendeles`
--
ALTER TABLE `megrendeles`
  ADD CONSTRAINT `megrendeles_ibfk_1` FOREIGN KEY (`felhasznaloId`) REFERENCES `felhasznalo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
