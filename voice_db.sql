-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 10 mei 2020 om 10:43
-- Serverversie: 5.7.17
-- PHP-versie: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voice_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tblcoaches`
--

CREATE TABLE `tblcoaches` (
  `Caoch_Id` int(11) NOT NULL,
  `Voornaam` varchar(100) NOT NULL,
  `Info` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `tblcoaches`
--

INSERT INTO `tblcoaches` (`Caoch_Id`, `Voornaam`, `Info`) VALUES
(1, 'Alex', 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(2, 'Jasper', 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(3, 'Koen', 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(4, 'Natalia', 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. ');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tblkandidaten`
--

CREATE TABLE `tblkandidaten` (
  `Kandidaat_Id` int(11) NOT NULL,
  `Voornaam` varchar(200) NOT NULL,
  `Coach_ID` int(11) NOT NULL,
  `Info` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `tblkandidaten`
--

INSERT INTO `tblkandidaten` (`Kandidaat_Id`, `Voornaam`, `Coach_ID`, `Info`) VALUES
(1, 'Joke', 3, ''),
(2, 'Eveline', 1, 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(3, 'Maxine', 2, 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(4, 'Glenn', 2, 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(5, 'Bert', 3, ''),
(6, 'Dirk', 3, 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(7, 'Yass', 4, 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(8, 'Axelle', 4, 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(9, 'Williem', 2, 'Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he. '),
(10, 'Raj', 1, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tblstemmingen`
--

CREATE TABLE `tblstemmingen` (
  `Id` int(11) NOT NULL,
  `Naam stemmer` varchar(200) NOT NULL,
  `Kandidaat_ID` int(11) NOT NULL,
  `Uitzending_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tbluitzendingen`
--

CREATE TABLE `tbluitzendingen` (
  `Uitzending_Id` int(11) NOT NULL,
  `Uitzending` varchar(200) NOT NULL,
  `UitzendingsDatum` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `tbluitzendingen`
--

INSERT INTO `tbluitzendingen` (`Uitzending_Id`, `Uitzending`, `UitzendingsDatum`) VALUES
(1, 'Liveshow 1', '2020-05-12'),
(2, 'Liveshow 1', '2020-05-10'),
(3, 'Liveshow 3', '2020-05-01');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `tblcoaches`
--
ALTER TABLE `tblcoaches`
  ADD PRIMARY KEY (`Caoch_Id`);

--
-- Indexen voor tabel `tblkandidaten`
--
ALTER TABLE `tblkandidaten`
  ADD PRIMARY KEY (`Kandidaat_Id`);

--
-- Indexen voor tabel `tblstemmingen`
--
ALTER TABLE `tblstemmingen`
  ADD PRIMARY KEY (`Id`);

--
-- Indexen voor tabel `tbluitzendingen`
--
ALTER TABLE `tbluitzendingen`
  ADD PRIMARY KEY (`Uitzending_Id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `tblcoaches`
--
ALTER TABLE `tblcoaches`
  MODIFY `Caoch_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `tblkandidaten`
--
ALTER TABLE `tblkandidaten`
  MODIFY `Kandidaat_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT voor een tabel `tblstemmingen`
--
ALTER TABLE `tblstemmingen`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `tbluitzendingen`
--
ALTER TABLE `tbluitzendingen`
  MODIFY `Uitzending_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
