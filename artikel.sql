-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 07. Jun 2012 um 19:57
-- Server Version: 5.5.16
-- PHP-Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `webshop`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `ANr` int(6) NOT NULL,
  `AName` char(40) NOT NULL,
  `APreis` decimal(6,0) NOT NULL,
  `ABild` char(40) NOT NULL,
  `ABestand` int(4) NOT NULL,
  PRIMARY KEY (`ANr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`ANr`, `AName`, `APreis`, `ABild`, `ABestand`) VALUES
(10028, 'Einstieg in PHP 5.4 und MySQL 5.5', 20, '83621877A.jpg', 80),
(10029, 'phpMyAdmin kompakt', 20, '20323477BT.jpg', 77),
(100000, 'Handbuch der Java-Programmierung', 30, '82732874.jpg', 20),
(100001, 'Softwareentwicklung - Einstieg für Anspr', 15, '82732851.jpg', 1),
(100002, 'PHP Referenz - Befehlskarte', 1, '93970129A.jpg', 0),
(100003, 'XML Schema Referenz - Befehlskarte', 1, '93970128A.jpg', 70),
(100004, 'Java Referenz - Befehlskarte', 1, '93970138A.jpg', 100),
(100005, 'C# .NET Referenz - Befehlskarte', 1, '93970130A.jpg', 100),
(100006, 'XML & DTD Referenz - Befehlskarte', 1, '93970135A.jpg', 100),
(100007, 'HTML Referenz - Befehlskarte', 1, '93970155A.jpg', 100),
(100008, 'CSS Referenz - Befehlskarte', 1, '93970156A.jpg', 100),
(100009, 'Visual C# 2010 Shortcuts - Befehlskarte', 1, '93970143A.jpg', 100),
(100010, 'Visual Basic 2010 Shortcuts - Befehlskar', 1, '93970145A.jpg', 100),
(100011, 'TYPO3 Referenz: Extbase & Fluid - Befehl', 1, '00000233A.jpg', 100),
(100012, 'VBA mit Excel - easy', 3, '00000233A.jpg', 50),
(100013, 'CSS - Basis-Know-how', 20, '23351670BT.jpg', 40),
(100014, 'Jetzt lerne ich Typo3', 25, '82724516.jpg', 40),
(100015, 'Assembler Programmierung', 20, '77237798.jpg', 36),
(100016, 'Programmieren lernen für Kinder', 10, '82724415.jpg', 80),
(100017, 'CSS für Profis', 30, '77237385.jpg', 10),
(100018, 'HTML Handbuch - Das Standardwerk', 30, '77236654.jpg', 100),
(100019, 'SOA - Entwurfsprinzipien für serviceorie', 40, '24918456BT.jpg', 80),
(100020, 'MySQL - Das große Buch', 25, '23679192BT.jpg', 70),
(100021, 'Datenbanken: Implementierungstechniken', 15, '82661438.jpg', 70),
(100022, 'Datenbanken - Grundlagen und Design', 30, '82665529.jpg', 60),
(100023, 'MySQL 5 - kurz & gut', 10, '89721525A.jpg', 100),
(100024, 'PHP 5.3 & MySQL 5.1', 20, '21293244T.jpg', 34),
(100025, 'Einstieg in SQL - Verstehen einsetzen na', 25, '26723173BT.jpg', 160),
(100026, 'Grundlagen von Datenbanksystemen', 30, '86894012A.jpg', 170),
(100027, 'MySQL - Das große Buch', 25, '23679192BT.jpg', 56);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
