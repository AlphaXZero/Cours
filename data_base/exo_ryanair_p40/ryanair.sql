-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 22 Août 2016 à 12:36
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ryanair`
--

-- --------------------------------------------------------

--
-- Structure de la table `avions`
--

CREATE TABLE IF NOT EXISTS `avions` (
  `AviID` int(11) NOT NULL AUTO_INCREMENT,
  `AviModID` int(11) DEFAULT NULL,
  `AviNombreDePlaces` int(11) DEFAULT NULL,
  `AviVilID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AviID`),
  KEY `FK_Mod` (`AviModID`),
  KEY `FK_Vil` (`AviVilID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `avions`
--

INSERT INTO `avions` (`AviID`, `AviModID`, `AviNombreDePlaces`, `AviVilID`) VALUES
(1, 2, 300, 1),
(2, 3, 300, 1),
(3, 5, 250, 2),
(4, 2, 280, 3),
(5, 5, 160, 1),
(6, 1, 460, 2),
(7, 4, 250, 2),
(8, 3, 300, 4),
(9, 6, 180, 3),
(10, 5, 160, 2);

-- --------------------------------------------------------

--
-- Structure de la table `modeles`
--

CREATE TABLE IF NOT EXISTS `modeles` (
  `ModID` int(11) NOT NULL AUTO_INCREMENT,
  `ModNom` varchar(20) DEFAULT NULL,
  `ModVitesse` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ModID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `modeles`
--

INSERT INTO `modeles` (`ModID`, `ModNom`, `ModVitesse`) VALUES
(1, 'Boeing 747	', '1200km/h'),
(2, 'A300', '700km/h'),
(3, 'A310', '915km/h'),
(4, 'Boeing 707', '984km/h'),
(5, 'Concorde', '2145km/h'),
(6, 'Mercure', '932km/h');

-- --------------------------------------------------------

--
-- Structure de la table `pilotes`
--

CREATE TABLE IF NOT EXISTS `pilotes` (
  `PilID` int(11) NOT NULL AUTO_INCREMENT,
  `PilNom` varchar(20) DEFAULT NULL,
  `PilPrenom` varchar(20) DEFAULT NULL,
  `PilVilID` int(11) DEFAULT NULL,
  `PilSalaire` int(11) DEFAULT NULL,
  PRIMARY KEY (`PilID`),
  KEY `FK_Vil2` (`PilVilID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `pilotes`
--

INSERT INTO `pilotes` (`PilID`, `PilNom`, `PilPrenom`, `PilVilID`, `PilSalaire`) VALUES
(1, 'TIM', 'Vincent', 2, 26000),
(2, 'CLETTE', 'Lara', 4, 21000),
(3, 'AIPAN', 'Ahmed', 1, 18000),
(4, 'TERIEUR', 'Alain', 2, 17000),
(5, 'LAIBOUL', 'Ella', 4, 19000),
(6, 'TERIEUR', 'Alex', 2, 18000),
(7, 'DON', 'Guy', 1, 17000),
(8, 'RATAMAIR', 'Waldi', 3, 15000),
(9, 'OUIN', 'Serge', 5, 18000),
(10, 'GRAFFE', 'Otto', 1, null);

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE IF NOT EXISTS `villes` (
  `VilID` int(11) NOT NULL AUTO_INCREMENT,
  `VilNom` varchar(20) DEFAULT NULL,
  `VilNbHabitants` int(11) DEFAULT NULL,
  `VilSuperficie` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`VilID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `villes`
--

INSERT INTO `villes` (`VilID`, `VilNom`, `VilNbHabitants`, `VilSuperficie`) VALUES
(1, 'Nice', '343304', '71,92'),
(2, 'Paris', '2244000', '105,4'),
(3, 'Lyon', '484344', '47,95'),
(4, 'Toulouse', '441802', '118,3'),
(5, 'Lens', '4277	', '46,61'),
(6, 'Nantes', '284970', '65,19');

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

CREATE TABLE IF NOT EXISTS `vols` (
  `VolID` int(11) NOT NULL AUTO_INCREMENT,
  `VolPilID` int(11) DEFAULT NULL,
  `VolDate` date DEFAULT NULL,
  `VolDepartVilID` int(11) DEFAULT NULL,
  `VolArriveVilID` int(11) DEFAULT NULL,
  `VolHeureDepart` time DEFAULT NULL,
  `VolHeureArrive` time DEFAULT NULL,
  `VolAviID` int(11) DEFAULT NULL,
  PRIMARY KEY (`VolID`),
  KEY `FK_Pil` (`VolPilID`),
  KEY `FK_Avi` (`VolAviID`),
  KEY `FK_Vil3` (`VolDepartVilID`),
  KEY `FK_Vil4` (`VolArriveVilID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `vols`
--

INSERT INTO `vols` (`VolID`, `VolPilID`, `VolDate`, `VolDepartVilID`, `VolArriveVilID`, `VolHeureDepart`, `VolHeureArrive`, `VolAviID`) VALUES
(1, 1, '2013-10-30', 1, 4, '11:00:00', '12:30:00', 1),
(2, 1, '2013-10-30', 2, 4, '17:00:00', '18:30:00', 8),
(3, 2, '2013-10-30', 4, 3, '14:00:00', '16:00:00', 1),
(4, 5, '2013-10-30', 4, 3, '18:00:00', '20:00:00', 3),
(5, 9, '2013-10-30', 2, 1, '06:45:00', '08:15:00', 1),
(6, 10, '2013-10-30', 3, 1, '11:00:00', '12:00:00', 2),
(7, 1, '2013-10-30', 2, 3, '08:00:00', '09:00:00', 4),
(8, 8, '2013-10-30', 1, 2, '07:15:00', '08:45:00', 4),
(9, 1, '2013-10-31', 6, 3, '09:00:00', '15:30:00', 8),
(10, 8, '2013-10-31', 1, 2, '12:15:00', '13:45:00', 2),
(11, 9, '2013-10-31', 2, 3, '15:00:00', '16:00:00', 2),
(12, 1, '2013-10-31', 3, 6, '16:30:00', '20:00:00', 2),
(13, 4, '2013-10-31', 1, 5, '11:00:00', '14:00:00', 5),
(14, 3, '2013-10-31', 5, 2, '15:00:00', '16:00:00', 5),
(15, 8, '2013-10-31', 2, 4, '17:00:00', '18:00:00', 9),
(16, 7, '2013-10-31', 2, 4, '18:00:00', '19:00:00', 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `avions`
--
ALTER TABLE `avions`
  ADD CONSTRAINT `FK_Mod` FOREIGN KEY (`AviModID`) REFERENCES `modeles` (`ModID`),
  ADD CONSTRAINT `FK_Vil` FOREIGN KEY (`AviVilID`) REFERENCES `villes` (`VilID`);

--
-- Contraintes pour la table `pilotes`
--
ALTER TABLE `pilotes`
  ADD CONSTRAINT `FK_Vil2` FOREIGN KEY (`PilVilID`) REFERENCES `villes` (`VilID`);

--
-- Contraintes pour la table `vols`
--
ALTER TABLE `vols`
  ADD CONSTRAINT `FK_Pil` FOREIGN KEY (`VolPilID`) REFERENCES `pilotes` (`PilID`),
  ADD CONSTRAINT `FK_Avi` FOREIGN KEY (`VolAviID`) REFERENCES `avions` (`AviID`),
  ADD CONSTRAINT `FK_Vil3` FOREIGN KEY (`VolDepartVilID`) REFERENCES `villes` (`VilID`),
  ADD CONSTRAINT `FK_Vil4` FOREIGN KEY (`VolArriveVilID`) REFERENCES `villes` (`VilID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
