-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 30 mei 2023 om 09:20
-- Serverversie: 8.0.27
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `overzicht_examinator`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `examen`
--

DROP TABLE IF EXISTS `examen`;
CREATE TABLE IF NOT EXISTS `examen` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `StudentId` int DEFAULT NULL,
  `Rijschool` varchar(30) DEFAULT NULL,
  `Stad` varchar(30) DEFAULT NULL,
  `Rijbewijscategorie` varchar(5) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Uitslag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `examen`
--

INSERT INTO `examen` (`Id`, `StudentId`, `Rijschool`, `Stad`, `Rijbewijscategorie`, `Datum`, `Uitslag`) VALUES
(1, 100234, 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd'),
(2, 123432, 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd'),
(3, 103234, 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd'),
(4, 106452, 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt'),
(5, 104546, 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt'),
(6, 100333, 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd'),
(7, 124444, 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `examenperexaminator`
--

DROP TABLE IF EXISTS `examenperexaminator`;
CREATE TABLE IF NOT EXISTS `examenperexaminator` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ExamenId` int DEFAULT NULL,
  `ExaminatorId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ExamenPerExaminator_Examen` (`ExamenId`),
  KEY `ExamenPerExaminator_Examinator` (`ExaminatorId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `examenperexaminator`
--

INSERT INTO `examenperexaminator` (`Id`, `ExamenId`, `ExaminatorId`) VALUES
(1, 1, 3),
(2, 3, 3),
(3, 2, 2),
(4, 4, 1),
(5, 7, 3),
(6, 6, 2),
(7, 5, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `examinator`
--

DROP TABLE IF EXISTS `examinator`;
CREATE TABLE IF NOT EXISTS `examinator` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(20) DEFAULT NULL,
  `Tussenvoegsel` varchar(10) DEFAULT NULL,
  `Achternaam` varchar(20) DEFAULT NULL,
  `Mobiel` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `examinator`
--

INSERT INTO `examinator` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`) VALUES
(1, 'Manuel', 'van', 'Meekeren', '06-28493823'),
(2, 'Lissette', 'den', 'Dongen', '06-24383299'),
(3, 'Jurswailly', NULL, 'Luciano', '06-48293846'),
(4, 'Naswha', NULL, 'Salawi', '06-34291219');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
