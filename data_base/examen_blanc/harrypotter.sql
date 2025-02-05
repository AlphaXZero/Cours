-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 11 fév. 2020 à 18:36
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `harrypotter`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `filID` int(11) NOT NULL AUTO_INCREMENT,
  `filTitre` varchar(60) DEFAULT NULL,
  `FilAnnee` int(11) DEFAULT NULL,
  `FilSuite` int(11) DEFAULT NULL,
  `FilCout` int(11) NOT NULL,
  PRIMARY KEY (`filID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`filID`, `filTitre`, `FilAnnee`, `FilSuite`, `FilCout`) VALUES
(1, 'Harry Potter à l\'école des sorciers', 2001, 2, 125000000),
(2, 'Harry Potter et la Chambre des secrets', 2002, 3, 100000000),
(3, 'Harry Potter et le Prisonnier d\'Azkaban', 2004, 4, 130000000),
(4, 'Harry Potter et la Coupe de feu', 2005, 5, 150000000),
(5, 'Harry Potter et l\'Ordre du Phénix', 2007, 6, 150000000),
(6, 'Harry Potter et le Prince de sang-mêlé', 2009, 7, 250000000),
(7, 'Harry Potter et les Reliques de la Mort – Partie 1', 2010, 8, 125000000),
(8, 'Harry Potter et les Reliques de la Mort – Partie 2', 2011, NULL, 125000000);

-- --------------------------------------------------------

--
-- Structure de la table `maisons`
--

DROP TABLE IF EXISTS `maisons`;
CREATE TABLE IF NOT EXISTS `maisons` (
  `maiId` int(11) NOT NULL AUTO_INCREMENT,
  `maiNom` varchar(30) DEFAULT NULL,
  `maiImageUrl` varchar(255) NOT NULL,
  `maiDateCreation` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`maiId`),
  UNIQUE KEY `maiNom` (`maiNom`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maisons`
--

INSERT INTO `maisons` (`maiId`, `maiNom`, `maiImageUrl`, `maiDateCreation`) VALUES
(1, 'Gryffondor', 'http://images1.wikia.nocookie.net/__cb20120922143611/harrypotter/images/7/70/G_final.jpg', '2000-02-08 11:50:14'),
(2, 'Poufsouffle', 'http://images3.wikia.nocookie.net/__cb20111027164827/harrypotter/images/3/3f/H_final.jpg', '2000-05-08 11:50:14'),
(3, 'Serdaigle', 'http://images2.wikia.nocookie.net/__cb20111021043857/harrypotter/images/d/da/R_final.jpg', '2000-06-08 11:50:14'),
(4, 'Serpentard', 'http://images3.wikia.nocookie.net/__cb20111027165214/harrypotter/images/d/da/S_final.jpg', '2000-02-08 11:50:14'),
(5, 'IfosupWavre', 'http://www.ifosupwavre.be/', '2020-02-08 11:52:32');

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

DROP TABLE IF EXISTS `personnages`;
CREATE TABLE IF NOT EXISTS `personnages` (
  `PerID` int(11) NOT NULL AUTO_INCREMENT,
  `PerNom` varchar(30) NOT NULL,
  `PerPrenom` varchar(30) NOT NULL,
  `PerImage` varchar(255) DEFAULT NULL,
  `PerSexe` varchar(1) NOT NULL DEFAULT 'h',
  `PerMaiID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PerID`),
  KEY `FK_mai` (`PerMaiID`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`PerID`, `PerPrenom`,`PerNom`, `PerImage`, `PerSexe`, `PerMaiID`) VALUES
(1, 'Euan', 'Abercrombie', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 1),
(2, 'Katie', 'Bell', 'http://img1.wikia.nocookie.net/__cb20110801071824/harrypotter/images/5/52/Katiebellinfobox.jpg', 'f', 1),
(3, 'Sirius', 'Black', 'http://img1.wikia.nocookie.net/__cb20091222193318/harrypotter/images/7/75/Sirius_Black_profile.jpg', 'h', 1),
(4, 'Lavender', 'Brown', 'http://img2.wikia.nocookie.net/__cb20110719012047/harrypotter/images/8/80/Jessie-Cave-M1.jpg', 'f', 1),
(5, 'Ritchie', 'Coote', 'http://img3.wikia.nocookie.net/__cb20090516210536/harrypotter/images/c/cb/RitchieC.PNG', 'h', 1),
(6, 'Colin', 'Creevey', 'http://img1.wikia.nocookie.net/__cb20110829161704/harrypotter/images/1/13/CCreeveyOP.jpg', 'h', 1),
(7, 'Dennis', 'Creevey', 'http://img2.wikia.nocookie.net/__cb20131212011908/harrypotter/images/c/cc/Dennis_Creevey_sig.png', 'h', 1),
(8, 'Albus', 'Dumbledore', 'http://img2.wikia.nocookie.net/__cb20120613182951/harrypotter/images/9/92/Time_turner.jpg', 'h', 1),
(9, 'Seamus', 'Finnigan', 'http://img3.wikia.nocookie.net/__cb20110813175246/harrypotter/images/9/9c/Seamus_FinniganDH2.jpg', 'h', 1),
(10, 'Hermione', 'Granger', 'http://img2.wikia.nocookie.net/__cb20101104204648/harrypotter/images/4/41/Hermionedhface.jpg', 'f', 1),
(11, 'Rubeus', 'Hagrid', 'http://img1.wikia.nocookie.net/__cb20090730174208/harrypotter/images/e/ee/Rubeushagrid.PNG', 'h', 1),
(12, 'Angelina', 'Johnson', 'http://img3.wikia.nocookie.net/__cb20091213232435/harrypotter/images/f/f1/Aang.PNG', 'f', 1),
(13, 'Lee', 'Jordan', 'http://img1.wikia.nocookie.net/__cb20141103134803/harrypotter/images/8/8d/Leejordan_1.PNG', 'h', 1),
(14, 'Andrew', 'Kirke', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 1),
(15, 'Neville', 'Longbottom', 'http://img3.wikia.nocookie.net/__cb20140603210856/harrypotter/images/0/04/Harry-potter-and-the-deathly-hallowspart-2.jpg', 'h', 1),
(16, 'Remus', 'Lupin', 'http://img3.wikia.nocookie.net/__cb20140310011326/harrypotter/images/1/14/Tumblr_m7ydb693Ed1r39xeeo4_250.gif', 'h', 1),
(17, 'Natalie', 'McDonald', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'f', 1),
(18, 'Mary', 'Macdonald', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 1),
(19, 'Minerva', 'McGonagall', 'http://img2.wikia.nocookie.net/__cb20120613182951/harrypotter/images/9/92/Time_turner.jpg', 'f', 1),
(20, 'Cormac', 'McLaggen', 'http://img1.wikia.nocookie.net/__cb20110224235356/harrypotter/images/1/11/Mclaggen.jpg', 'h', 1),
(21, 'Parvati', 'Patil', 'http://img3.wikia.nocookie.net/__cb20100430141731/harrypotter/images/c/c1/Parvati_patil.PNG', 'f', 1),
(22, 'Jimmy', 'Peakes', 'http://img1.wikia.nocookie.net/__cb20110522183232/harrypotter/images/3/3a/Jimmypeakes.PNG', 'h', 1),
(23, 'Peter', 'Pettigrew', 'http://img3.wikia.nocookie.net/__cb20091120233534/harrypotter/images/0/0f/Pettigrew_COS_UE_booklet_1.jpg', 'h', 1),
(24, 'Harry', 'Potter', 'http://img2.wikia.nocookie.net/__cb20150426142144/harrypotter/images/d/d4/Dhharryroomhighreso.jpg', 'h', 1),
(25, 'James', 'Potter', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 1),
(26, 'Lily', 'Potter', 'http://img4.wikia.nocookie.net/__cb20120128171142/harrypotter/images/7/73/Lily_PotterDH2.png', 'f', 1),
(27, 'Demelza', 'Robins', 'http://img1.wikia.nocookie.net/__cb20090711095409/harrypotter/images/a/ae/Demelza_robins.PNG', 'f', 1),
(28, 'Jack', 'Sloper', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 1),
(29, 'Alicia', 'Spinnet', 'http://img3.wikia.nocookie.net/__cb20081126192712/harrypotter/images/8/81/AliciaSpinnet.PNG', 'f', 1),
(30, 'Dean', 'Thomas', 'http://img2.wikia.nocookie.net/__cb20141204153429/harrypotter/images/1/1e/HPDH2-1500.jpg', 'h', 1),
(31, 'Romilda', 'Vane', 'http://img2.wikia.nocookie.net/__cb20110801070727/harrypotter/images/2/2c/Romilda_vane_profile.jpg', 'f', 1),
(32, 'Arthur', 'Weasley', 'http://img2.wikia.nocookie.net/__cb20140709222319/harrypotter/images/0/00/AWeasley1.jpg', 'h', 1),
(33, 'Bill', 'Weasley', 'http://img4.wikia.nocookie.net/__cb20141008180307/harrypotter/images/b/bd/BillWeasleyOffice.png', 'h', 1),
(34, 'Charlie', 'Weasley', 'http://img2.wikia.nocookie.net/__cb20140712190547/harrypotter/images/d/db/Screenshot_-_10_3_2013_%2C_7_17_04_PM.png', 'h', 1),
(35, 'Fred', 'Weasley', 'http://img1.wikia.nocookie.net/__cb20131212015433/harrypotter/images/0/0b/Fred_Weasley_sig.png', 'h', 1),
(36, 'George', 'Weasley', 'http://img2.wikia.nocookie.net/__cb20101007152422/harrypotter/images/f/f5/PHELPS2.jpg', 'h', 1),
(37, 'Ginny', 'Weasley', 'http://img3.wikia.nocookie.net/__cb20140625041900/harrypotter/images/8/8b/Ginny_Weasley_hbp_promo.jpg', 'f', 1),
(38, 'Molly', 'Weasley', 'http://img2.wikia.nocookie.net/__cb20101007151605/harrypotter/images/1/15/MOLLY1.jpg', 'f', 1),
(39, 'Percy', 'Weasley', 'http://img1.wikia.nocookie.net/__cb20110924185815/harrypotter/images/5/58/Percy_WeasleyDH2.jpg', 'h', 1),
(40, 'Ron', 'Weasley', 'http://img2.wikia.nocookie.net/__cb20111220010229/harrypotter/images/1/12/Ron_Weasley_sig.png', 'h', 1),
(41, 'Oliver', 'Wood', 'http://img4.wikia.nocookie.net/__cb20110801072255/harrypotter/images/2/2f/Oliver_WoodDH2.jpg', 'h', 1),
(42, 'Hannah', 'Abbott', 'http://img1.wikia.nocookie.net/__cb20110812073826/harrypotter/images/0/05/Hannah.jpg', 'f', 2),
(43, 'Susan', 'Bones', 'http://img4.wikia.nocookie.net/__cb20150107120752/harrypotter/images/7/77/Susan01.png', 'f', 2),
(44, 'Eleanor', 'Branstone', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'f', 2),
(45, 'Owen', 'Cauldwell', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 2),
(46, 'Cedric', 'Diggory', 'http://img3.wikia.nocookie.net/__cb20111015180904/harrypotter/images/c/c5/Cedric.jpg', 'h', 2),
(47, 'Justin', 'Finch-Fletchley', 'http://img4.wikia.nocookie.net/__cb20100404201307/harrypotter/images/c/c4/Justin_Finch-Fletchley.jpg', 'h', 2),
(48, 'Ernie', 'Macmillan', 'http://img3.wikia.nocookie.net/__cb20100508174736/harrypotter/images/e/e9/Macmillan.jpg', 'h', 2),
(49, 'Laura', 'Madley', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'f', 2),
(50, 'Eloise', 'Midgeon', 'http://img3.wikia.nocookie.net/__cb20120417180133/harrypotter/images/a/ad/EloiseMidgenHeadShot.jpg', 'f', 2),
(51, 'Zacharias', 'Smith', 'http://img3.wikia.nocookie.net/__cb20070811224350/harrypotter/images/1/1b/Zsmith.jpg', 'h', 2),
(52, 'Pomona', 'Sprout', 'http://img4.wikia.nocookie.net/__cb20110816170732/harrypotter/images/7/7d/HP72-FP-00573.jpg', 'f', 2),
(53, 'Nymphadora', 'Tonks', 'http://img3.wikia.nocookie.net/__cb20081101194317/harrypotter/images/0/02/Nyphadora_Tonks.JPG', 'f', 2),
(54, 'Kevin', 'Whitby', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 2),
(55, 'Rose', 'Zeller', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 2),
(56, 'Stewart', 'Ackerley', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 3),
(57, 'Marcus', 'Belby', 'http://img4.wikia.nocookie.net/__cb20140328073139/harrypotter/images/d/d4/Robert_knox.jpg', 'h', 3),
(58, 'Terry', 'Boot', 'http://img4.wikia.nocookie.net/__cb20090621212432/harrypotter/images/9/9a/TerryBoot.PNG', 'h', 3),
(59, 'Mandy', 'Brocklehurst', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'f', 3),
(60, 'Cho', 'Chang', 'http://img2.wikia.nocookie.net/__cb20140425003330/harrypotter/images/8/88/Cho-chang1.jpg', 'f', 3),
(61, 'Eddie', 'Carmichael', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 3),
(62, 'Penelope', 'Clearwater', 'http://img4.wikia.nocookie.net/__cb20100806162957/harrypotter/images/4/4b/Pepe4.jpg', 'f', 3),
(63, 'Michael', 'Corner', 'http://img1.wikia.nocookie.net/__cb20070811230229/harrypotter/images/4/44/Mikecorner.JPG', 'h', 3),
(64, 'Roger', 'Davies', 'http://img4.wikia.nocookie.net/__cb20110823163213/harrypotter/images/8/82/Fleur_y_Roger_Davies_1.jpg', 'h', 3),
(65, 'Marietta', 'Edgecombe', 'http://img4.wikia.nocookie.net/__cb20111210014601/harrypotter/images/4/44/Marietta_Edgecombe.png', 'f', 3),
(66, 'S.', 'Fawcett', 'http://img4.wikia.nocookie.net/__cb20081122132216/harrypotter/images/7/7c/Fawcett.jpg', 'h', 3),
(67, 'Filius', 'Flitwick', 'http://img1.wikia.nocookie.net/__cb20110628141204/harrypotter/images/4/4b/Flitwickarmourbattle.png', 'h', 3),
(68, 'Anthony', 'Goldstein', 'http://img1.wikia.nocookie.net/__cb20121125150630/harrypotter/images/b/b9/AnthonyGoldstein.png', 'h', 3),
(69, 'Luna', 'Lovegood', 'http://img4.wikia.nocookie.net/__cb20101113121319/harrypotter/images/4/49/Luna_profile.jpg', 'f', 3),
(70, 'Padma', 'Patil', 'http://img1.wikia.nocookie.net/__cb20140425115500/harrypotter/images/4/45/PadmaPatil.png', 'f', 3),
(71, 'Orla', 'Quirke', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'f', 3),
(72, 'Lisa', 'Turpin', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'f', 3),
(73, 'Malcolm', 'Baddock', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 4),
(74, 'Regulus', 'Black', 'http://img2.wikia.nocookie.net/__cb20111004231647/harrypotter/images/b/bf/RegulusBlackCloseUp.jpg', 'h', 4),
(75, 'Miles', 'Bletchley', 'http://img4.wikia.nocookie.net/__cb20110810003628/harrypotter/images/c/ca/Unknown.jpeg', 'h', 4),
(76, 'Millicent', 'Bulstrode', 'http://img3.wikia.nocookie.net/__cb20141228194856/harrypotter/images/f/f5/HP2-0143.jpg', 'h', 4),
(77, 'Vincent', 'Crabbe', 'http://img2.wikia.nocookie.net/__cb20091224183746/harrypotter/images/b/ba/Vincent_Crabbe.jpg', 'h', 4),
(78, 'Marcus', 'Flint', 'http://img1.wikia.nocookie.net/__cb20100327164729/harrypotter/images/8/80/Monmarcus.jpg', 'h', 4),
(79, 'Gregory', 'Goyle', 'http://img3.wikia.nocookie.net/__cb20110415153922/harrypotter/images/3/3d/Gregory_Goyle-DH2.jpg', 'h', 4),
(80, 'Terence', 'Higgs', 'http://img2.wikia.nocookie.net/__cb20131208011148/harrypotter/images/a/a6/Terrance_Higgs.png', 'h', 4),
(81, 'Bellatrix', 'Lestrange', 'http://img3.wikia.nocookie.net/__cb20111113205259/harrypotter/images/1/14/BellatrixLestrange.png', 'f', 4),
(82, 'Rabastan', 'Lestrange', 'http://img1.wikia.nocookie.net/__cb20140731000920/harrypotter/images/c/cb/RabastanLestrange.png', 'h', 4),
(83, 'Rodolphus', 'Lestrange', 'http://img3.wikia.nocookie.net/__cb20140730235939/harrypotter/images/8/8c/RodolphusLestrange.png', 'h', 4),
(84, 'Abraxas', 'Malfoy', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 4),
(85, 'Draco', 'Malfoy', 'http://img2.wikia.nocookie.net/__cb20140602031803/harrypotter/images/c/cf/Harry-Potter-The-Deathly-Hallows-Part-II.jpg', 'h', 4),
(86, 'Lucius', 'Malfoy', 'http://img2.wikia.nocookie.net/__cb20120622073504/harrypotter/images/b/b4/Lucius_Malfoy_BoH.png', 'h', 4),
(87, 'Narcissa', 'Malfoy', 'http://img2.wikia.nocookie.net/__cb20111126161643/harrypotter/images/e/ee/Narcissa_Malfoy_dh_part2.jpg', 'f', 4),
(88, 'Theodore', 'Nott', 'http://img2.wikia.nocookie.net/__cb20141218194025/harrypotter/images/4/4b/TheodoreNott.png', 'h', 4),
(89, 'Pansy', 'Parkinson', 'http://img1.wikia.nocookie.net/__cb20141024191624/harrypotter/images/2/26/Pansyinfobox.png', 'f', 4),
(90, 'Graham', 'Pritchard', 'http://images.clipartpanda.com/question-mark-black-and-white-Icon-round-Question_mark.jpg', 'h', 4),
(91, 'Adrian', 'Pucey', 'http://img1.wikia.nocookie.net/__cb20101126164937/harrypotter/images/1/13/Adrianpucey-HS.jpg', 'h', 4),
(92, 'Tom', 'Riddle', 'http://img2.wikia.nocookie.net/__cb20120613182951/harrypotter/images/9/92/Time_turner.jpg', 'h', 4),
(93, 'Horace', 'Slughorn', 'http://img2.wikia.nocookie.net/__cb20121226172917/harrypotter/images/e/e0/Horace_Slughorn.jpg', 'h', 4),
(94, 'Severus', 'Snape', 'http://img3.wikia.nocookie.net/__cb20111027063315/harrypotter/images/0/02/LilyAndSnape.jpg', 'h', 4),
(95, 'Blaise', 'Zabini', 'http://img4.wikia.nocookie.net/__cb20141109095901/harrypotter/images/5/59/Blaise_Zabini.png', 'h', 4),
(96, 'Godric', 'Gryffondor', 'http://img1.wikia.nocookie.net/__cb20140615154246/harrypotter/images/3/38/PR_007_003-e1313269822422.jpg', 'h', 1),
(97, 'Helga', 'Poufsouffle', 'http://img2.wikia.nocookie.net/__cb20140615154415/harrypotter/images/8/8c/PR_007_001-e1313269883743.jpg', 'f', 2),
(98, 'Rowena', 'Serdaigle', 'http://img4.wikia.nocookie.net/__cb20140615152737/harrypotter/images/8/8e/Ravenclaw_paintfilter-688x1223.jpg', 'f', 3),
(99, 'Salazar', 'Serpentard', 'http://img2.wikia.nocookie.net/__cb20140615154545/harrypotter/images/2/2b/PR_007_005-e1313269785740.jpg', 'h', 4);

-- --------------------------------------------------------

--
-- Structure de la table `rolesimportants`
--

DROP TABLE IF EXISTS `rolesimportants`;
CREATE TABLE IF NOT EXISTS `rolesimportants` (
  `RolID` int(11) NOT NULL AUTO_INCREMENT,
  `RolFilID` int(11) DEFAULT NULL,
  `RolPerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RolID`),
  KEY `FK_fil` (`RolFilID`),
  KEY `FK_etu` (`RolPerID`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rolesimportants`
--

INSERT INTO `rolesimportants` (`RolID`, `RolFilID`, `RolPerID`) VALUES
(1, 1, 19),
(3, 3, 19),
(4, 4, 19),
(5, 5, 19),
(6, 6, 19),
(7, 7, 19),
(8, 8, 19),
(9, 1, 8),
(10, 2, 8),
(11, 3, 8),
(12, 4, 8),
(13, 5, 8),
(14, 6, 8),
(15, 7, 8),
(16, 8, 8),
(17, 1, 11),
(18, 2, 11),
(19, 3, 11),
(20, 4, 11),
(21, 5, 11),
(22, 6, 11),
(23, 7, 11),
(24, 8, 11),
(25, 1, 10),
(26, 2, 10),
(27, 3, 10),
(28, 4, 10),
(29, 5, 10),
(30, 6, 10),
(31, 7, 10),
(32, 8, 10),
(33, 1, 24),
(34, 2, 24),
(35, 3, 24),
(36, 4, 24),
(37, 5, 24),
(38, 6, 24),
(39, 7, 24),
(40, 8, 24),
(41, 1, 40),
(42, 2, 40),
(43, 3, 40),
(44, 4, 40),
(45, 5, 40),
(46, 6, 40),
(47, 7, 40),
(48, 8, 40),
(49, 3, 3),
(50, 4, 3),
(51, 5, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
