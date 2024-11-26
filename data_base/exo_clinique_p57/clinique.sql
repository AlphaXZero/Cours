-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Sam 23 Novembre 2013 à 10:18
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `clinique`
--

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `PatID` int(11) NOT NULL AUTO_INCREMENT,
  `PatNom` varchar(20) DEFAULT NULL,
  `PatPrenom` varchar(20) DEFAULT NULL,
  `PatAdresse` varchar(60) DEFAULT NULL,
  `PatNaissance` date DEFAULT NULL,
  `PatSexe` enum('H','F') NOT NULL,
  `PatVilID` int(11) NOT NULL,
  PRIMARY KEY (`PatID`),
  KEY `FK_Vil` (`PatVilID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `patients`
--

INSERT INTO `patients` (`PatID`, `PatNom`, `PatPrenom`, `PatAdresse`, `PatNaissance`, `PatSexe`, `PatVilID`) VALUES
(2, 'OMPAGNE', 'Jacques', NULL, NULL, 'H', 1),
(3, 'ALFABÈTE', 'Anne', NULL, NULL, 'H', 1),
(4, 'TEURDETEXTE', 'Eddy', 'Rue des Diamants', '1967-06-03', 'H', 3),
(5, 'AIPAN', 'Ahmed', 'Rue des Oliviers, 5', '2003-06-24', 'H', 2),
(6, 'DON', 'Guy', 'Avenue Bob, 10', '2003-06-30', 'H', 1),
(7, 'STIQUET', 'Sophie', 'Rue Général Daloze, 33', '2003-06-20', 'F', 2),
(8, 'GRAFFE', 'Otto', '10e avenue,45', '2003-06-04', 'H', 2);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `TypID` int(11) NOT NULL AUTO_INCREMENT,
  `TypNom` varchar(20) DEFAULT NULL,
  `TypDescription` text,
  PRIMARY KEY (`TypID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `types`
--

INSERT INTO `types` (`TypID`, `TypNom`, `TypDescription`) VALUES
(1, 'Lupus', 'Le lupus érythémateux disséminé (LED) est une maladie systémique auto-immune chronique, de la famille des connectivites, c''est-à-dire touchant plusieurs organes, du tissu conjonctif, qui se manifeste différemment selon les individus. L''adjectif associé est lupique.\r\n\r\n\r\n'),
(2, 'Grippe', 'La grippe (ou influenza) est une maladie infectieuse fréquente et contagieuse causée par trois virus à ARN de la famille des Orthomyxoviridae (Myxovirus influenzae A, B et C), touchant les oiseaux et certains mammifères dont le porc, le phoque, et l''être humain.'),
(3, 'syndrome d''Aagenaes', 'Le syndrome d''Aagenaes, ou cholestase-lymphoedème, est une maladie génétique caractérisée par une hypoplasie congénitale des vaisseaux lymphatiques. Il doit son nom au pédiatre norvégien Oystein Aagenaes qui en donna la première description en 1968 dans une famille présentant des liens consanguins. En 2009 la moitié des cas connus concernent des familles norvégiennes.'),
(4, 'Maladie de Dercum', 'La maladie de Dercum, dite aussi adipose douloureuse ou neurolipomatose'', est une affection très rare qui touche les personnes atteintes d''obésité, le plus souvent les femmes. Il s''agit de masses adipeuses sous-cutanées douloureuses surtout au niveau du tronc et des membres avec association de troubles mentaux et neurologiques. La consistance de ces masses rappelant celle d''un « sac plein de vers », est très caractéristique. L''étiologie est inconnue et le traitement se fait par infiltration locale d''analgésiques.'),
(5, 'Lymphome de Burkitt', 'Le Lymphome de Burkitt est une tumeur (lymphome non-hodgkinien) qui provient de l''évolution maligne et de la prolifération de cellules lymphoïdes de type B. Elle est souvent d''origine virale. Classiquement, on définit trois variantes cliniques : la forme endémique, la forme associée à l''immunodéficience et la forme sporadique.'),
(6, 'Poliomyélite', 'La poliomyélite également appelée maladie de Heine-Medin, paralysie spinale infantile ou simplement polio, est une maladie infectieuse aiguë et contagieuse spécifiquement humaine causée par un virus à ARN du genre Entérovirus, le poliovirus sauvage (PVS), dont il existe trois types : PV1, PV2 et PV3.'),
(7, 'Clostridium botulinu', 'Clostridium botulinum est une bactérie : un bacille gram positif anaérobie, du genre Clostridium, responsable du botulisme. Clostridium botulinum est une bactérie productrice de spores qui représentent la forme de résistance de la bactérie. Cette spore peut résister à de faibles traitements thermiques (ex : pasteurisation) et germer (c''est-à-dire donner une cellule métaboliquement active) ce qui peut poser des problèmes en sécurité alimentaire.'),
(8, 'Trypanosoma cruzi', 'Trypanosoma cruzi, ou Schizotrypanum cruzi, est une espèce de protiste parasite de l''ordre des Trypanosomatida. L''espèce provoque des maladies, des trypanosomiases chez l''homme et les animaux en Amérique du Sud. L''espèce est transmise par les fèces de réduves (punaises des genres Triatoma, Rhodnius ou Panstrongylus).'),
(9, 'Méningo-encéphalite ', 'La méningo-encéphalite verno-estivale (MEVE) connue en anglais sous le nom de Early summer meningoencephalitis (ESME) est provoquée par un virus à ARN du groupe des Flavivirus transmise par la piqûre d’une tique (tique commune ou Ixodes ricinus)'),
(10, 'Virus O''nyong-nyong', 'Le virus O''nyong-nyong est un arbovirus de la famille des Togaviridae et du genre des alphavirus, responsable d''une arbovirose tropicale dénommée O''nyong-nyong.\r\n\r\nIl a été décrit pour la première fois en 1959 lors d''une vaste épidémie en Afrique subsaharienne.\r\n\r\nIl entraine un syndrome aigu fébrile avec arthralgies des genoux, chevilles, mains et pieds, suivies d''un rash cutané maculo-papuleux associé parfois à un énanthème buccal.\r\n\r\nIl se transmet lors de la piqûre par le moustique Anophele.'),
(11, 'varicelle', 'La varicelle, classique sous sa forme de maladie infantile éruptive fréquente, en milieu tempéré, touche plus tardivement l''adulte en milieu tropical où elle est tout aussi caractérisée par sa très grande contagiosité, exposant ainsi femme enceinte et fœtus. Elle traduit la primo-infection par le virus varicelle-zona ou VZV, virus de la famille Herpesviridae. Ce n''est qu''en milieu tempéré et sans doute urbain, loin de l''équateur, sauf vaccination, qu''elle survient spontanément dans plus de 90 % des cas chez l''enfant entre 1 et 15 ans, avec à terme, une discrète majoration du risque de survenue de sclérose en plaques. Sa période d’incubation est de 14 jours en moyenne (de 10 à 21 jours). Chaque année aux États-Unis, la vaccination évite quelques milliers d''hospitalisations ; le taux d''hospitalisations est passé 2,5/100 000 cas en 1995 à 1/100 000 cas en 2002'),
(12, 'mononucléose infecti', 'La mononucléose infectieuse (MNI) est une infection généralement bénigne, provoquée par le virus d’Epstein-Barr (EBV), qui appartient à la même famille que les virus de l’herpès. Transmise préférentiellement par la salive, on l''appelle maladie du baiser ou encore maladie des amoureux.');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE IF NOT EXISTS `villes` (
  `VilID` int(11) NOT NULL AUTO_INCREMENT,
  `VilNom` varchar(30) NOT NULL,
  `VilCP` int(11) NOT NULL,
  `VilPopulation` int(11) NOT NULL,
  PRIMARY KEY (`VilID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `villes`
--

INSERT INTO `villes` (`VilID`, `VilNom`, `VilCP`, `VilPopulation`) VALUES
(1, 'Wavre', 1300, 33277),
(2, 'Ottignies', 1340, 31090),
(3, 'Rixensart', 1330, 22017);

-- --------------------------------------------------------

--
-- Structure de la table `visites`
--

CREATE TABLE IF NOT EXISTS `visites` (
  `VisID` int(11) NOT NULL AUTO_INCREMENT,
  `VisDate` date DEFAULT NULL,
  `VisHeure` time DEFAULT NULL,
  `VisMotif` varchar(60) DEFAULT NULL,
  `VisAnalyse` varchar(60) DEFAULT NULL,
  `VisPatID` int(11) DEFAULT NULL,
  `VisTypID` int(11) DEFAULT NULL,
  PRIMARY KEY (`VisID`),
  KEY `FK_Pat` (`VisPatID`),
  KEY `FK_Typ` (`VisTypID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `visites`
--

INSERT INTO `visites` (`VisID`, `VisDate`, `VisHeure`, `VisMotif`, `VisAnalyse`, `VisPatID`, `VisTypID`) VALUES
(2, '2013-03-24', '10:00:00', 'mal à la tête', NULL, 2, 2),
(3, '2013-03-27', '15:30:00', 'mal au ventre et au nez', NULL, 3, 1),
(4, '2012-11-03', '09:30:00', 'Mal au genou', '', 2, 10),
(5, '2013-05-19', '10:00:00', 'vomis', 'Buscopan', 7, 6),
(6, '2013-01-14', '10:30:00', 'ongle incarné', '', 5, 3),
(7, '2013-04-19', '11:00:00', 'Nez cassé', 'acheter des kleenex', 3, 10),
(8, '2013-11-13', '11:30:00', 'TOC', '', 5, 9),
(9, '2011-06-09', '12:00:00', 'Tousse beaucoup', 'mettre sa main devant la bouche pour éviter la contagion', 3, 4),
(10, '2012-05-18', '12:30:00', 'Passe trop de temps derrière son PC', '', 7, 10),
(11, '2011-11-09', '13:00:00', 'A acheté un Mac', 'Rien à faire, phase terminale…', 2, 4),
(12, '2012-11-04', '13:30:00', 'vomis', '', 5, 8),
(13, '2012-12-24', '14:00:00', 'Saigne des oreilles', 'ça va passer', 5, 12),
(14, '2011-01-06', '14:30:00', 'Flatulence', '', 8, 7),
(15, '2013-03-01', '15:00:00', 'joue rouge', '', 8, 4),
(16, '2013-06-10', '15:30:00', 'ne sait plus cligner des yeux', '', 4, 2),
(17, '2013-01-08', '16:00:00', 'a avalé un playmobile', 'Manger la voiture playmobile (en morceau)', 3, 7),
(18, '2013-05-14', '16:30:00', 'A de furieuses envies de tuer son professeur', '', 5, 9),
(19, '2013-05-04', '17:00:00', 'cheveux qui grattent', 'Shampoing anti poux?', 8, 4);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `FK_Vil` FOREIGN KEY (`PatVilID`) REFERENCES `villes` (`VilID`);

--
-- Contraintes pour la table `visites`
--
ALTER TABLE `visites`
  ADD CONSTRAINT `FK_Pat` FOREIGN KEY (`VisPatID`) REFERENCES `patients` (`PatID`),
  ADD CONSTRAINT `FK_Typ` FOREIGN KEY (`VisTypID`) REFERENCES `types` (`TypID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
