-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 05. 21:14
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
-- Tábla szerkezet ehhez a táblához `alkategoriak`
--

CREATE TABLE `alkategoriak` (
  `id` int(11) NOT NULL,
  `megnevezes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `alkategoriak`
--

INSERT INTO `alkategoriak` (`id`, `megnevezes`) VALUES
(1, 'egészséges lélek'),
(2, 'táplálkozás'),
(3, 'betegségekről'),
(4, 'gyűjtemények'),
(5, 'sport'),
(6, 'művészet'),
(7, 'szakácskönyvek'),
(8, 'italok'),
(9, 'befőzés, tartósítás'),
(10, 'babakonyha'),
(11, 'mesekönyv'),
(12, 'kifestő'),
(13, 'foglalkoztató'),
(14, 'hobbiállatok'),
(15, 'kézimunka'),
(16, 'kreatív hobbi'),
(17, 'szórakozás'),
(18, 'szórakoztató irodalom'),
(19, 'regény'),
(20, 'novella'),
(21, 'költészet'),
(22, 'színmű'),
(23, 'krimi'),
(24, 'fantasy'),
(25, 'sci-fi'),
(26, 'történelmi'),
(27, 'akció'),
(28, 'nyelvkönyv'),
(29, 'fejlesztő'),
(30, 'speciális'),
(31, 'kereszténység'),
(32, 'hinduizmus'),
(33, 'buddhizmus'),
(34, 'iszlám'),
(35, 'romantikus');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allapot`
--

CREATE TABLE `allapot` (
  `id` int(11) NOT NULL,
  `megnevezes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- A tábla adatainak kiíratása `allapot`
--

INSERT INTO `allapot` (`id`, `megnevezes`) VALUES
(1, 'bontatlan/hibátlan'),
(2, 'jó'),
(3, 'közepes'),
(4, 'sérült'),
(5, 'rossz');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `borito`
--

CREATE TABLE `borito` (
  `id` int(11) NOT NULL,
  `megnevezes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- A tábla adatainak kiíratása `borito`
--

INSERT INTO `borito` (`id`, `megnevezes`) VALUES
(1, 'puhatáblás'),
(2, 'keménytáblás'),
(3, 'kartonált'),
(4, 'm?b?rkötés'),
(5, 'ragasztott'),
(6, 'cérnaf?zött, keménytáblás'),
(7, 'irkaf?zött'),
(8, 'spirál'),
(9, 'könyvköt?i kötés'),
(10, 'vászon'),
(11, 'félvászon'),
(12, 't?zött kötés'),
(13, 'b?r'),
(14, 'nyl kötés');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `email` text NOT NULL,
  `jelszo` text NOT NULL,
  `pontok` int(11) NOT NULL,
  `iranyitoszam` int(11) DEFAULT NULL,
  `utca` text DEFAULT 'none',
  `cim` text NOT NULL DEFAULT 'none',
  `telefonszam` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`email`, `jelszo`, `pontok`, `iranyitoszam`, `utca`, `cim`, `telefonszam`, `id`) VALUES
('kriszti@gmail.com', '$2y$10$JfalzsGLwVGbeZnmIXt8feCJ7pyDYIbu9u3dGWy39vj0RqicAASzS', 0, NULL, 'none', 'none', '', 1),
('kriszti05@gmail.com', '$2y$10$ZIQQuqKtgeyEE.ORdIjtU.iMmfvCDmIKa4kgFrwtX4E1ukUg62fEa', 0, NULL, 'none', 'none', '', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriak`
--

CREATE TABLE `kategoriak` (
  `id` int(11) NOT NULL,
  `megnevezes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoriak`
--

INSERT INTO `kategoriak` (`id`, `megnevezes`) VALUES
(1, 'életmód'),
(2, 'életrajzok'),
(3, 'gasztronómia'),
(4, 'gyerekkönyv'),
(5, 'hobbi'),
(6, 'ifjúsági'),
(7, 'irodalom'),
(8, 'képregény'),
(9, 'tansegédlet'),
(10, 'vallás');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kosar`
--

CREATE TABLE `kosar` (
  `id` int(11) NOT NULL,
  `felhasznaloID` int(11) NOT NULL,
  `termekID` int(11) NOT NULL,
  `megrendelesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megrendeles`
--

CREATE TABLE `megrendeles` (
  `id` int(11) NOT NULL,
  `kifizetve` tinyint(1) NOT NULL,
  `kisszalitva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `id` int(11) NOT NULL,
  `cim` text NOT NULL,
  `alkoto` text NOT NULL,
  `megjelenes` text NOT NULL,
  `ar` int(11) NOT NULL,
  `boritoID` int(11) NOT NULL,
  `forgalmazo` text NOT NULL,
  `meret` text NOT NULL,
  `nyelv` text NOT NULL,
  `osszefoglalo` text NOT NULL,
  `kategoriaID` int(11) NOT NULL,
  `alkategoriaID` int(11) NOT NULL,
  `tipus` int(11) NOT NULL,
  `hossz` text DEFAULT NULL,
  `allapotID` int(11) DEFAULT NULL,
  `pontok` int(11) DEFAULT NULL,
  `kepURL` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`id`, `cim`, `alkoto`, `megjelenes`, `ar`, `boritoID`, `forgalmazo`, `meret`, `nyelv`, `osszefoglalo`, `kategoriaID`, `alkategoriaID`, `tipus`, `hossz`, `allapotID`, `pontok`, `kepURL`) VALUES
(100000, 'Kiscsillag', 'Pippa Funnell', '2022', 850, 1, 'Manó könyvek', '13x19', 'magyar', 'Az Ezüstpatkó tanya és Cavandish Hall lovasai táborba készülnek, ahová mindenki magával viheti a lovát. Tilly Szellőrózsát választja, a tábori feladatok - mint például a díjlovaglás - azonban komoly kihívások elé állítják mindkettőjüket. Ráadásul Tilly gondolatai néha messze járnak, hiszen az Ezüstpatkó tanyán tavasszal új kiscsikó született, és elutazása előtt anyukája egy különös, régi fényképet mutatott Tillynek, mely vér szerinti édesanyját ábrázolja, aki a kép tanúsága szerint egykor maga is szenvedélyes lovas volt.\r\n', 4, 11, 1, '110', 2, 50, 'https://moly.hu/system/covers/big/covers_383226.jpg\r\n'),
(100001, 'Az elvarázsolt palota', 'Rosie Banks', '2020', 2200, 1, 'Manó könyvek', '13x19', 'magyar', 'Nelli, Fanni és Jázmin nagyon jó barátnők, ráadásul egy iskolába is járnak. Egy nap furcsa kis ládikót találnak az osztálytermükben. Hazaviszik, megtisztogatják, és a doboz tetején levő tükör egyszer csak fényleni kezd. Kiderül, hogy a varázslatos ládikó segítségével elrepülhetnek egy titkos, mesebeli birodalomba, ahol éppen Vidám király születésnapjára készül mindenki. A király testvére, Keserű királynő azonban gonosz tervet forral, tönkre akarja tenni az ünnepséget. Vajon sikerül a lányoknak megtörni a királynő sötét varázslatát?\r\n', 4, 11, 1, '111', 2, 0, 'https://s01.static.libri.hu/cover/8d/f/869988_4.jpg\r\n'),
(100008, 'Plüss invázió', 'Ken Derby-Kocsis Eszter', '2018', 200, 2, 'Cser Könyvkiadó', '27x15', 'magyar-angol', 'Patkánypofa és bandája világuralomra tör! Kétnyelvű mese, amelynek bábos illusztrációja elnyerte a japán JIA Illustration Award nemzetközi zsűrijének 2018. évi különdíját.\r\n', 4, 11, 1, '40', 2, 0, 'https://lira.erbacdn.net/upload/M_28/rek1/238/1547238.jpg\r\n'),
(100009, 'A fehér rózsa', 'Elia Zaharia Zogu', '2020', 2500, 2, 'Alexandra Könyvesház', '20x29', 'magyar', 'Egyszer volt, hol nem volt... Egyszer régen, Magyarország gyönyörű királyságában élt egy arany hajú grófkisasszony, aki a rózsák nyelvét beszélte! Ez a bizonyos kisasszony egy napon varázslatos utazásra indult a sasok földjére...\r\nOtt hat titokzatos hercegnő várta szeretettel, és a lány a sors által megírt úton járva elragadta egy magányos király szívét... Ez a tündérmese, drága gyerekek, nem olyan, mint a többi. Ennek főhőse valóban élt, nagyjából száz évvel előttünk, a mi országunkban. Geraldine volt a neve, de jósága és szépsége okán mindenki fehér rózsának hívta. Fedezzük fel együtt, hogyan lett egy magyar grófkisasszony eme távoli ország királynéja, és hogy mennyire szerette az albánok ismeretlen, ősi hagyományokkal és fehér fejfedőkkel teli országát!\r\n\r\n', 4, 11, 1, '64', 2, 0, 'https://s01.static.libri.hu/cover/5a/3/6710507_4.jpg\r\n'),
(100010, 'A viking', 'Bjorn Andreas Bull-Hansen', '2023', 3800, 3, 'Animus Kiadó', '15x21', 'magyar', 'Norvégia, 993. Az ifjú Thorstein tehetetlenül nézi végig, ahogy egy rájuk támadó rablóbanda brutálisan meggyilkolja az apját. Őt rabszolgaként elhurcolják, társaival együtt hónapokig a kegyetlen haramiák szeszélyeinek van kitéve. Egy nap túladnak rajta, új gazdája rabságából felszabadulva egy csendes halászfaluban lel otthonra. Békés élete nem tart sokáig, megismerkedik Hallvarddal, a jomsvikinggel. A harcosok közt is félve tisztelt elitkatonák hírneve nem alaptalan. A fájdalmat nem ismerő, jól képzett zsoldossereg csatában még sosem maradt alul, erejük, bajtársiasságuk és csillapíthatatlan harci szenvedélyük lenyűgözi a fiatal fiút, aki számos megpróbáltatás után végül maga is jomsvikinggé válik. A viking történelem legnagyobb tengeri ütközetében, a svolderi tengeri csatában szembetalálkozik apja gyilkosával - aki Norvégia királyának első embere... Erő, szenvedély, férfiasság. A világot egykor uraló vikingek igaz történelmi alapokra épülő, letehetetlen regénye.\r\n', 7, 26, 1, '558', 2, 0, 'https://book24.hu/img/boritok_cover/0p3nwlylgzc5bpcllpkv6lbeqmzufo6aa76znwsi_cover.jpeg\r\n'),
(100011, 'Ördögszekér', 'Abafáy-Deák Csillag', '2023', 200, 3, 'Parnasszus kiadó', '12x20', 'magyar', 'Döbbenetes a hasonlóság! Csillag előző három kötetében ujjongva fedeztem fel ezeket a két- sőt háromperces novellákat. Akkor még nem ismertem személyesen az írások szerzőjét, de valami megmagyarázhatatlan érzés vett erőt rajtam, nem csak értem, de érzem, régi ismerősként szólnak hozzám ezek a novellák. Ugyanígy gondolkodom, ilyen a munkamódszerem, a filmkészítés is a tömörítés művészete. Forgattam filmet a hetvenes években a világhírű Dino Buzzati írásaiból, akinél szinte teljesen azonos a látásmód a Csillagéval, és azóta hiába kerestem hasonlókat. Az élet legegyszerűbb témáiból kisrealista történetek, a valószínűtlen felnagyítása, a valóság tömör, legteljesebb ábrázolása és a történetek meglepetés katarzissal lezárása tett ezeknek az írásoknak őszinte rajongójává. Vérzik a szívem, hogy nem váltak filmekké a történetek, mert szükség lenne, ebben a rohanó világban, úgynevezett sketch-fimekre. Most itt a lehetőség filmes társaim tudomására hozni ezeket a remekműveket, hogy ne váljanak Ad acta-vá, ez ebben a kötetben az egyik kedvenc novellám.\r\n', 7, 20, 1, '200', 2, 0, 'https://s01.static.libri.hu/cover/3b/8/9855885_4.jpg\r\n'),
(100012, 'Enchanted to meet you', 'Meg Cabot', '2023', 2600, 3, 'Piatkus', '13x20', 'angol', ' In her teenage years, lovelorn Jessica Gold cast a spell that went disastrously wrong, and brought her all the wrong kind of attention—as well as a lifetime ban from the World Council of Witches. So no one is more surprised than Jess when, fifteen years later, tall, handsome WCW member Derrick Winters shows up in her quaint little village of West Harbor and claims that Jess is the Chosen One.\r\n', 7, 35, 1, '347', 2, 0, 'https://megcabot.com/wp-content/uploads/2022/08/Enchanted-to-Meet-You-680x1024.jpg\r\n'),
(100013, 'A pumpkin spice kávézó', 'Laurie Gilmore', '2024', 3100, 1, 'Pioneer Books Könyvkiadó Kft', '356gr', 'magyar', 'Jeanie Ellis azonnal kap a lehetőségen, amikor nagynénje felajánlja neki szeretett kávézóját, a Pumpkin Spice kávézót, hiszen végre megszabadulhat szörnyen unalmas irodai munkájától, és új életet kezdhet Dream Harbor aranyos kisvárosában. Azonban a beilleszkedés nem zökkenőmentes. Éjszakánként szörnyű ricsajra ébred, és egy kicsi kávézó is nagy gondokkal járhat, főleg, ha valaki szabotálni próbálja. Szerencséjére a kávézó egyik beszállítója a segítségére siet egy szerencsétlen baseballütős epizód után - ráadásul ez a beszállító kifejezetten jóvágású.\r\n', 7, 19, 1, '287', 2, 0, 'https://lira.erbacdn.net/upload/M_28/rek1/612/4361612.jpg\r\n'),
(100014, 'Egyes szám első személy', 'Murakami Haruki', '2024', 3200, 2, 'Geopen könyvkiadó Kft.', '13x20', 'magyar', 'Az egyes szám, első személy ezúttal nem száraz nyelvtani kategória, hanem Murakami Haruki új novelláskötetének sokatmondó címe. Nyolc remekbe szabott történetet rejt, személyes vallomásként elmesélve. A meg nem nevezett narrátor magányos, már nem fiatal ember, aki hol nosztalgikusan tekint vissza gyerekkorra, fiatalságra és felnőtté válásra, rég elillant kapcsolatokon, szerelmeken, veszteségeken, halálon merengve, máskor bizarr történetet mond el úgy, mintha magától értetődő valóság lenne. S hogy ez az elbeszélő maga a szerző-e, vagy valaki más, azt döntse el az olvasó, miközben elmerül a különös hangvételű, hol bölcs, hol szeszélyes, finom érzékletességgel megírt történetekben, amelyekből persze nem hiányzanak a világhírű japán íróra jellemző csavarok sem.\r\n', 7, 20, 1, '164', 2, 0, 'https://s01.static.libri.hu/cover/4d/a/11278796_4.jpg\r\n'),
(100015, 'Para', 'Réz András', '2023', 1900, 3, 'Trend Kiadó', '14x21', 'magyar', 'Egy különleges kapszulába zárt ápolónő. Egy kamu összeesküvés-elméleteket gyártó vlogger. Egy elveszetten kóválygó, nyugdíjas politikai káder. Észrevétlenül összefonódó sorsok. Réz András karcos hangú, humoros, szatirikus regénye a mind ködösebb múltról és a felénk settenkedő jövőről. Így volt, így lesz. Vagy nem.\r\n', 7, 19, 1, '208', 2, 0, 'https://mora.hu/content/2023/4/Product/rez_andras_para_borito.jpg\r\n'),
(100016, 'Jógalégzés', 'Patrick Mckeown', '2024', 4200, 3, 'Jaffa Kiadó és Kereskedelmi Kft', '16x23', 'magyar', 'Jógázunk, mert egy hosszú nap után szükségünk van az ellazulásra és a nyugalomra, mert ruganyosak akarunk maradni, mozogni, nyújtani szeretnénk, és a különböző ászanák kihívást jelentenek. A jóga azonban eredetileg nem erről szólt. Sokkal inkább a légzés és az ülés rendszere volt, még ha mára ettől jócskán el is távolodtunk. Pedig az ősi bölcsesség nagyszerűségét ma már tudományos eredmények bizonyítják - ezt mutatja be húsz év kutatómunkájának eredményeként ez az átfogó légzéslexikon.\r\n', 1, 1, 1, '382', 2, 0, 'https://s01.static.libri.hu/cover/13/1/10655808_4.jpg\r\n'),
(100017, 'Jessica Jones', 'Brian Michael Bendis', '2023', 3400, 1, 'Marvel Comics', '16x24', 'magyar', 'Egyszer régen jelmezes szuperhős volt - bár nem épp a legjobb. Képességeit egy lapon sem lehetett emlegetni a Marvel Univerzumot benépesítő álruhás legendákéval. Egyszerűen képtelen volt megtalálni a helyét köztük. Az azóta lecsúszott, önpusztító Bosszúangyal-jelölt ma már az Alias nyomozóiroda - a szuperhumán esetekre is specializálódott magánnyomozó kisvállalkozás - tulajdonosa és egyetlen alkalmazottja. Amint akaratlanul kideríti az egyik legnagyobb hős személyazonosságát, Jessica egy csapásra feláldozhatóvá válik. Éles elméje, képességei és intelligenciája segítségével átmenetileg talán túlélheti a viszontagságokat. Azonban a legmagasabb körökig érő összeesküvés közepébe csöppen, a kérdés pedig az, vajon túl sok hidat égetett-e fel maga mögött ahhoz, hogy segítségért folyamodhasson a régi barátaihoz...\r\n', 8, 27, 1, '50', 2, 0, 'https://digitalheroes.com/cdn/shop/products/STL143683_1000x1000.jpg\r\n'),
(100018, 'Batman: a fehér lovag átka', 'Sean Murphy', '2021', 4000, 2, 'Fumax Kft', '19x28', 'magyar', 'Joker szövetkezik Azraellel, hogy segítsen neki leleplezni a Wayne család hagyatékának döbbenetes titkát - és nem mellékesen tönkretenni Gothamet. Batman a város és veszélyben lévő szerettei segítségére siet, ám miután őseinek titka napvilágra kerül, kénytelen megkérdőjelezni mindent, amit eddig önmagáról és a Gotham életében betöltött szerepéről hitt.\r\n', 8, 27, 1, '272', 2, 0, 'https://kepregenymarket.hu/img/57090/9789634701910/250x250,r/9789634701910.webp?time=1719318002\r\n'),
(100019, 'Action dogs', 'Steve Barlow-Steve Skidmore', '2012', 2300, 1, 'Usborne Publising Ltd.', '13x20', 'angol', 'This book is a brilliant adventure following the crime fighting gang, Action Dogs. In the story, they defeat the evil Katmanchew’s plot to steal the world’s most priceless artworks from the Van der Hund museum! We still get a look into their normal lives as stray dogs in a pound, run by an unloving warden, but the thought of the next emergency to resolve keeps them motivated. The book is a fusion of novel and comic, with comic-like illustrations throughout. There is low-level humour and it is one in a series of adventures following the canine savers-of-the-day.\r\n', 8, 27, 1, '140', 2, 0, 'https://m.media-amazon.com/images/I/61QDWsC7vKL._AC_UF894,1000_QL80_.jpg\r\n'),
(100020, 'Coffee guide', '?', '2022', 3400, 1, 'Verlag Gmbh', '11x22', 'angol', 'The Coffee Guide is the world\'s most extensive, hands-on and neutral source of information on the international coffee trade. It covers trade issues relevant to coffee growers, traders, exporters, transportation companies, certifiers, associations and authorities, and other relevant actors. Many in the coffee industry consider it the go-to reference.\r\n', 3, 8, 1, '370', 2, 0, 'https://s01.static.libri.hu/cover/cc/4/10724204_4.jpg\r\n'),
(100021, 'Szerencsés kutya leckék', 'Brandon McMillan', '2017', 2200, 2, 'Gabo Könyvkiadó és Keresk. Kft.', '16x23', 'magyar', 'A hírességek kutyatrénere, és a CBS Emmy-díjas Szerencsés kutya műsorának házigazdája megosztja képzési módszerét, amellyel bármilyen kutyából – az elkényeztetett fajtatiszta kölyöktől a menhelyi sokkot kapott kutyáig – csupán hét nap alatt példamutató társat farag.\r\n', 5, 14, 1, '336', 2, 0, 'https://s01.static.libri.hu/cover/82/4/3899778_4.jpg\r\n'),
(100022, 'Cicológia', 'Stefan Gates', '2023', 3000, 2, 'Corvina Kiadó', '13x19', 'magyar', 'Sokan irigyeljük a macskákat. Velünk, emberekkel ellentétben mindig azt csinálják, amit akarnak. Lustálkodnak, ha ahhoz van kedvük, és vadásznak, ha ahhoz. Ismeretlen számukra az önbizalomhiány, a féltékenység, nem éreznek bűntudatot, egyszóval nem terhelik őket elvont, erkölcsi problémák. Ezek után meglepő, hogy egyáltalán szóba állnak velünk. Pedig a tapasztalat azt mutatja, hogy nemcsak nekünk van szükségünk rájuk, hanem ők is ragaszkodnak hozzánk. A maguk módján, persze. Stefan Gates Cicológiája ezt a macskamódot járja körül sok szeretettel és még több humorral.\r\n', 5, 14, 1, '159', 2, 0, 'https://p1.akcdn.net/books/full/38475900.jpg\r\n'),
(100023, 'Kötés kezdőknek', '?', '2019', 2600, 1, 'Kossuth Kiadó', '779gr', 'magyar', 'A hobbikötés reneszánszát éli. Az idősebb generációk tudása új életre kel modern művészeti formaként és kikapcsolódásként. Napjainkban is népszerű időtöltés a divatos és pénztárcakímélő saját ruhadarabok, ajándékok és dekorációk készítése. A kötet bemutat minden szükséges eszközt és módszert, amely a kötés tanulásához szükséges.\r\n', 5, 15, 1, '152', 2, 0, 'https://www.kossuth.hu/image/orig/kotes-kezdoknek-bookazine.jpg\r\n'),
(100024, 'Horgolás kezdőknek', '?', '2018', 2600, 1, 'Kossuth Kiadó', '759gr', 'magyar', 'A horgolás mint hobbi az utóbbi években reneszánszát éli, továbbadva a tudást a fiatalabb korosztály számára. Manapság is népszerű időtöltés a divatos és pénztárcakímélő saját ruhadarabok, ajándékok és dekorációk készítése. A kötet bemutat minden szükséges eszközt és módszert, amely a horgolás tanulásához szükséges, a legelső láncszemektől az olyan díszítő elemekig, mint a rojt és a szegély. Ha elsajátítottuk ezeket a technikákat, a gyakorlatban is kipróbálhatjuk őket a kezdőknek szánt darabok elkészítésével, könnyen érthető mintaleírások alapján.\r\n', 5, 15, 1, '162', 2, 0, 'https://konyvklub.sk/files/images/horgolas%20kezdoknek_0.jpg\r\n'),
(100025, 'Művészeti alaptechnikák:rajzolás', 'Chelsea Ward', '2020', 5000, 1, 'Gabo Könyvkiadó és Keresk. Kft.', '22x29', 'magyar', 'Tanuljuk meg használni az alapvető rajztechnikai szabályokat, és hozzunk létre friss, kifejező alkotásokat. A kötetben található kreatív gyakorlatok segítségével élvezetes módon fedezhetjük fel a különféle rajzeszközöket és alapanyagokat. Azt is megtanuljuk, hogyan nézzünk rá a modellünkre, és örökítsük meg egyedi, modern stílusban.\r\n', 5, 16, 1, '128', 2, 0, 'https://s01.static.libri.hu/cover/00/5/5978176_4.jpg\r\n'),
(100026, 'Szabás-varrás', 'Cser Ferencné', '1976', 950, 1, 'Magyar Nők Országos Tanácsa', '14x20', 'magyar', 'A szerző ebben a kötetében is ismerteti a varrás alapfogalmait, s az egyes öltés- és varrásfajtákat, továbbá a hazai üzletekben kapható kelméket. Egyben tájékoztatja az olvasót arról, hogy melyik anyag milyen ruhafélék elkészítésére alkalmas, hogyan kezelendő és általában milyen szélességű. A műbőr és a bőr felhasználásáról is szól a szerző, hiszen a mai divat szívesen alkalmazza díszítőelemként vagy önállóan.\r\n', 5, 15, 1, '505', 2, 50, 'https://marvin.bline.hu/product_images/121/1111005882481.JPG\r\n'),
(100027, '400 tanács kutyabarátoknak', 'Manfred Koch-Kostersitz', '2006', 1900, 2, 'Fiesta Stúdió Könyvkiadó Kft', '17x14', 'magyar', 'Ebben a kitűnő könyvben minden olyan lényeges kérdésre választ talál, melynek megértő alkalmazásával kölcsönös barátságot köthet az Ön szakértő gondoskodására vágyó négylábú társával.\r\n', 5, 14, 1, '108', 3, 0, 'https://moly.hu/system/covers/big/covers_310439.jpg\r\n'),
(100028, 'A játékkártya és története', 'Zsoldos Jenő', '1980', 850, 1, 'Gondolat zsebkönyvek', '11x18', 'magyar', 'A ​játék mint szórakozási forma, egyidős az emberiséggel. A homo ludens mindenkor megtalálta az eszközt és a módot, hogy szórakozzék és játékos kedvét kielégítse. A társasjáték és a lényegét képező versengés mint társadalmi jelenség, végighúzódik az emberiség történetén. Az egyik legrégibb társasjáték, a kártyajáték annyira népszerűvé vált, hogy része lett társas életünknek. Keletkezése, kialakulása tisztázatlan, századokra visszamenően alig maradtak fenn róla hitelt érdemlő feljegyzések. A legkorábbi forrás egy, a XVII. századból származó kínai enciklopédia, amely szerint a mai kártyajátékokhoz hasonló játék már 1120-ban ismert volt Kínában.\r\n', 5, 17, 1, '127', 2, 50, 'https://marvin.bline.hu/product_images/19/2399978328833P.JPG\r\n'),
(100029, 'Taschenbuch der textilen Raunmausstattung', 'Wilham Artz', '1973', 2300, 4, 'Fahverlag Schiele & Schön Gmbh', '10x16', 'német', 'Taschenbuch der textilen Raumausstattung Herausgeber: Wilhelm Artz von 1989, 318 Seiten, sehr interessant illustriert Fachverlag Schiele & Schön GmbH Inhalt: Fensterdekorationen von Raumausstattermeister Wilhelm Scholt Styling am Fenster - eine Marketingaufgabe Für Atelier und Werkstatt Neuheiten in der textilen Raumausstattung Entwicklungstendenzen in Design und Farbgebung und vieles mehr - Inneneinrichtung - Design - Innenarchitektur - Innendesign Zustand: gute Erhaltung 284g 417-F10 Sprache: Deutsch Gewicht in Gramm: 284. Bestandsnummer des Verkäufers 20908\r\n', 5, 15, 1, '434', 2, 0, 'https://images.booklooker.de/x/03076014_MTg2MDIz/Wilhelm-Hrsg-Artz+Taschenbuch-der-textilen-Raumausstattung.jpg\r\n'),
(100030, 'Varrjunk gyerekeknek', 'Bajzáth Katalin', '2002', 1700, 2, 'Magyar Könyvklub Kft', '21x26', 'magyar', 'A divattervező Bajzáth Katalin neve jól ismert a hazai könyvpiacon. Fantáziadús modelljei mellett könyvei fő értéke a precíz leírás, a könnyen lemásolható szabásminták. Nyártól télig és téltől nyárig minden alkalomra, napszakra javasolt ruhákat a kisbabák korosztályától egészen a kiskamaszokig.\r\n', 5, 15, 1, '112', 2, 0, 'https://s01.static.libri.hu/cover/86/3/11344463_4.jpg\r\n'),
(100031, 'PONS-Don\'t get me wrong', 'Brian Brennon - Rosa Plana', '2019', 3300, 5, 'Rasbe Klett Oktatási Tanácsadó', '14x18', 'angol-magyar', 'A könyv célja a könnyed és laza társalgás elsajítása, valamint az, hogy felébressze a benned rejtőző igazi angolt! A kiadvány közel 70 témában, a köznyelvi használattól a választékos beszédig adja a kezedbe az összes olyan kifejezést, amellyel változatosan, találóan és természetes angolsággal fejezheted ki magad! Végre úgy ismerheted meg az angol nyelvet, ahogyan azt az utcán, az interneten, vagy a filmekben használják az anyanyelviek.\r\n', 9, 28, 1, '286', 2, 0, 'https://marvin.bline.hu/product_images/1278/2399984576945P.JPG\r\n'),
(100032, 'Vot éto Rusziá!', 'Mihalik Márta', '2018', 3100, 1, 'Holnap Kiadó Kft', '16x23', 'orosz-magyar', 'Az orosz középszintű és emelt szintű szóbeli érettségi vizsgára, valamint a középfokú szóbeli nyelvvizsgára készülőknek nyújt segítséget. A kiadvány célja, hogy szimulálja a fent említett szóbeli nyelvvizsgákat: kérdezz-felelek megadott témákban, egy szituáció eljátszása, emelt szinten vita, érvelés, valamint kép alapján történő beszélgetés.\r\n', 9, 28, 1, '192', 2, 0, 'https://cdn.kello.hu/webshop/images/300/fs01//20180322121500/K3001034560.jpg\r\n');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tipus`
--

CREATE TABLE `tipus` (
  `id` int(11) NOT NULL,
  `megnevezes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- A tábla adatainak kiíratása `tipus`
--

INSERT INTO `tipus` (`id`, `megnevezes`) VALUES
(1, 'könyv'),
(2, 'cd');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `alkategoriak`
--
ALTER TABLE `alkategoriak`
  ADD PRIMARY KEY (`id`);

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
-- A tábla indexei `kosar`
--
ALTER TABLE `kosar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_termekID` (`termekID`),
  ADD KEY `fk_felhasznaloID` (`felhasznaloID`),
  ADD KEY `fk_megrendelesID` (`megrendelesID`);

--
-- A tábla indexei `megrendeles`
--
ALTER TABLE `megrendeles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategoriaID` (`kategoriaID`),
  ADD KEY `fk_alkategoriaID` (`alkategoriaID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `kosar`
--
ALTER TABLE `kosar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100033;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kosar`
--
ALTER TABLE `kosar`
  ADD CONSTRAINT `fk_felhasznaloID` FOREIGN KEY (`felhasznaloID`) REFERENCES `felhasznalo` (`id`),
  ADD CONSTRAINT `fk_megrendelesID` FOREIGN KEY (`megrendelesID`) REFERENCES `megrendeles` (`id`),
  ADD CONSTRAINT `fk_termekID` FOREIGN KEY (`termekID`) REFERENCES `termekek` (`id`);

--
-- Megkötések a táblához `termekek`
--
ALTER TABLE `termekek`
  ADD CONSTRAINT `fk_alkategoriaID` FOREIGN KEY (`alkategoriaID`) REFERENCES `alkategoriak` (`id`),
  ADD CONSTRAINT `fk_kategoriaID` FOREIGN KEY (`kategoriaID`) REFERENCES `kategoriak` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
