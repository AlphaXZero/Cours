-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2024 at 10:47 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyages`
--

-- --------------------------------------------------------

--
-- Table structure for table `activites`
--

CREATE TABLE `activites` (
  `ActID` int NOT NULL,
  `ActStaID` int NOT NULL,
  `ActLibelle` varchar(30) NOT NULL,
  `ActPrix` decimal(10,2) DEFAULT '0.00'
) ;

--
-- Dumping data for table `activites`
--

INSERT INTO `activites` (`ActID`, `ActStaID`, `ActLibelle`, `ActPrix`) VALUES
(1, 1, 'Plongée', '130.00'),
(2, 1, 'Yoga au coucher du soleil', '50.00'),
(3, 1, 'Cocktail mixologie', '25.00'),
(4, 2, 'Piscine', '20.00'),
(5, 2, 'Randonnée guidée', '10.00'),
(6, 2, 'Cours de salsa', '30.00'),
(7, 3, 'Atelier fromage', '15.00'),
(8, 3, 'Soirée karaoké', '5.00'),
(9, 3, 'Spa détente', '100.00'),
(10, 3, 'Kayak', '50.00'),
(11, 1, 'Plongée', '0.00'),
(12, 6, 'Voile', '150.00'),
(13, 8, 'Dégustation de cocktails exoti', '40.00'),
(14, 5, 'Balade à cheval', '75.00'),
(15, 5, 'Aqua Gym', '20.00'),
(16, 5, 'Tour de licorne gonflable', '10.00'),
(17, 6, 'Parcours aventure', '25.00'),
(18, 6, 'Paintball', '50.00'),
(19, 6, 'Escape game', '35.00'),
(20, 7, 'Soirée choucroute et musique', '30.00'),
(21, 7, 'Cours de cuisine', '40.00'),
(22, 7, 'Piscine avec toboggan', '15.00'),
(23, 8, 'Plongée avec requins', '200.00'),
(24, 8, 'Beach volley', '10.00'),
(25, 8, 'Barbecue en bord de mer', '30.00'),
(26, 9, 'Observation des pingouins', '0.00'),
(27, 9, 'Expédition en raquettes', '50.00'),
(28, 9, 'Soirée igloo et chocolat chaud', '20.00'),
(29, 10, 'Massage au Nutella', '60.00'),
(30, 10, 'Chasse au trésor pour gourmand', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `CliID` int NOT NULL,
  `CliNom` varchar(30) NOT NULL,
  `CliPrenom` varchar(30) DEFAULT NULL,
  `CliVilID` int NOT NULL,
  `CliSolde` decimal(10,2) NOT NULL DEFAULT '0.00'
);

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`CliID`, `CliNom`, `CliPrenom`, `CliVilID`, `CliSolde`) VALUES
(1, 'Enfaillite', 'Mélusine', 1, '12465.00'),
(2, 'Diote', 'Kelly', 2, '100.00'),
(3, 'Bonbeur', 'Jean', 3, '150.00'),
(4, 'Gre', 'Nadine', 4, '250.00'),
(5, 'Naiempalépourmoinsqueça', 'Jean', 5, '1200.00'),
(6, 'Feeling', 'Agathe', 6, '750.00'),
(7, 'Loge', 'Laure', 7, '600.00'),
(8, 'Sérien', 'Jean', 8, '250.00'),
(9, 'Ouche', 'Jack', 9, '300.00'),
(10, 'Nana', 'Juda', 10, '1200.00'),
(11, 'Tare', 'Guy', 11, '200.00'),
(12, 'Fonfek', 'Sophie', 12, '450.00'),
(13, 'Serolle', 'Jessica', 13, '500.00'),
(14, 'd\'œuf', 'John', 14, '600.00'),
(15, 'Ultou', 'Jeanne', 15, '800.00'),
(16, 'Stiole', 'Beth', 16, '150.00'),
(17, 'Zarella', 'Maude', 17, '250.00'),
(18, 'Scott', 'Debby', 18, '100.00'),
(19, 'Zola', 'Gordon', 19, '650.00'),
(20, 'Epi', 'Fanny', 20, '500.00'),
(21, 'Ate', 'Tom', 21, '300.00'),
(22, 'Leuze', 'Lara', 22, '1200.00'),
(23, 'Lairbon', 'Oussama', 23, '400.00'),
(24, 'Rikovair', 'Léa', 24, '150.00'),
(25, 'Bistrot', 'Alonso', 25, '350.00'),
(26, 'Dalors', 'Omer', 26, '700.00'),
(27, 'Golé', 'Hillary', 27, '450.00'),
(28, 'Atrovite', 'Yves', 28, '350.00'),
(29, 'Caman', 'Medhi', 29, '200.00'),
(30, 'Aire', 'Axel', 30, '100.00'),
(31, 'Letpareballes', 'Gilles', 31, '50.00'),
(32, 'Naidauchaude', 'Robby', 32, '700.00'),
(33, 'Ourkessa', 'Cécile', 33, '100.00'),
(34, 'Dissoir', 'Alain', 34, '600.00'),
(35, 'Nous', 'Marion', 35, '400.00'),
(36, 'Touille', 'Sacha', 36, '1200.00'),
(37, 'Skolère', 'Manuel', 37, '250.00'),
(38, 'Eh', 'Paulette', 38, '700.00'),
(39, 'Konda', 'Anna', 39, '250.00'),
(40, 'Monlitmegratte', 'Sandra', 40, '500.00'),
(41, 'Lacouverturesapik', 'Sandra', 41, '300.00'),
(42, 'Ervitemonslip', 'Jean-Philippe', 42, '200.00'),
(43, 'Nastyk', 'Jim', 43, '400.00'),
(44, 'Pard', 'Léo', 44, '300.00'),
(45, 'Arne', 'Luc', 45, '500.00'),
(46, 'Cro', 'Odile', 46, '700.00'),
(47, 'Proviste', 'Alain', 47, '300.00'),
(48, 'Transcène', 'Jean', 48, '100.00'),
(49, 'Moitout', 'Medhi', 49, '400.00'),
(50, 'Vié', 'Jean', 50, '250.00'),
(51, 'Peuplus', 'Jean', 41, '600.00'),
(52, 'Tartine', 'Kimberley', 32, '700.00'),
(53, 'Célère', 'Jack', 23, '150.00'),
(54, 'Orak', 'Anne', 4, '450.00'),
(55, 'Pelle', 'Sarah', 25, '200.00'),
(56, 'Croche', 'Sarah', 36, '100.00'),
(57, 'Fréchi', 'Sarah', 17, '300.00'),
(58, 'Pennflam', 'Katy', 28, '150.00'),
(59, 'Didonk', 'Aubin', 49, '500.00'),
(60, 'Reste', 'Eve', 20, '300.00'),
(61, 'Rien-demoi', 'Nathan', 6, '400.00'),
(62, 'Oration', 'Amélie', 6, '200.00'),
(63, 'Kiroul', 'Pierre', 3, '250.00'),
(64, 'Aze', 'Hélène', 4, '500.00'),
(65, 'Rible', 'Théo', 5, '350.00'),
(66, 'Dicul', 'Thierry', 16, '150.00');

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `ConID` int NOT NULL,
  `ConNom` varchar(30) NOT NULL
) ;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`ConID`, `ConNom`) VALUES
(1, 'Afrique'),
(2, 'Amérique du Nord'),
(3, 'Amérique du Sud'),
(4, 'Antarctique'),
(5, 'Asie'),
(6, 'Europe'),
(7, 'Océanie');

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `PayID` int NOT NULL,
  `PayNom` varchar(50)  NOT NULL,
  `PayConID` int NOT NULL
);

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`PayID`, `PayNom`, `PayConID`) VALUES
(1, 'Égypte', 1),
(2, 'Nigeria', 1),
(3, 'Afrique du Sud', 1),
(4, 'Kenya', 1),
(5, 'Maroc', 1),
(6, 'Éthiopie', 1),
(7, 'États-Unis', 2),
(8, 'Canada', 2),
(9, 'Mexique', 2),
(10, 'Cuba', 2),
(11, 'Brésil', 3),
(12, 'Argentine', 3),
(13, 'Colombie', 3),
(14, 'Pérou', 3),
(15, 'Stations Antarctiques', 4),
(16, 'Japon', 5),
(17, 'Chine', 5),
(18, 'Inde', 5),
(19, 'Corée du Sud', 5),
(20, 'France', 6),
(21, 'Royaume-Uni', 6),
(22, 'Allemagne', 6),
(23, 'Italie', 6),
(24, 'Espagne', 6),
(25, 'Australie', 7),
(26, 'Nouvelle-Zélande', 7),
(27, 'Fidji', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sejours`
--

CREATE TABLE `sejours` (
  `SejID` int NOT NULL,
  `SejCliID` int NOT NULL,
  `SejStaID` int NOT NULL,
  `Sejdebut` date NOT NULL,
  `Sejfin` date NOT NULL,
  `SejnbPlaces` int DEFAULT NULL
) ;

--
-- Dumping data for table `sejours`
--

INSERT INTO `sejours` (`SejID`, `SejCliID`, `SejStaID`, `Sejdebut`, `Sejfin`, `SejnbPlaces`) VALUES
(1, 1, 4, '2023-06-01', '2023-06-10', 3),
(2, 2, 7, '2023-07-01', '2023-07-14', 2),
(3, 3, 2, '2023-07-05', '2023-07-19', 4),
(4, 4, 10, '2023-08-10', '2023-08-20', 6),
(5, 5, 5, '2023-07-20', '2023-08-05', 2),
(6, 6, 9, '2023-09-01', '2023-09-15', 5),
(7, 7, 1, '2023-07-18', '2023-08-01', 3),
(8, 8, 3, '2023-07-22', '2023-08-10', 2),
(9, 9, 6, '2023-06-30', '2023-07-10', 1),
(10, 10, 8, '2023-08-01', '2023-08-10', 4),
(11, 11, 2, '2023-08-03', '2023-08-17', 5),
(12, 12, 7, '2023-07-10', '2023-07-20', 2),
(13, 13, 4, '2023-07-15', '2023-07-30', 4),
(14, 14, 5, '2023-06-25', '2023-07-05', 3),
(15, 15, 9, '2023-09-05', '2023-09-20', 6),
(16, 16, 1, '2023-06-28', '2023-07-08', 2),
(17, 17, 8, '2023-08-10', '2023-08-25', 5),
(18, 18, 6, '2023-09-01', '2023-09-10', 4),
(19, 19, 3, '2023-08-20', '2023-09-01', 3),
(20, 20, 10, '2023-07-12', '2023-07-22', 6),
(21, 21, 7, '2023-06-22', '2023-07-02', 4),
(22, 22, 9, '2023-09-10', '2023-09-25', 3),
(23, 23, 4, '2023-08-14', '2023-08-28', 5),
(24, 24, 8, '2023-07-01', '2023-07-15', 2),
(25, 25, 6, '2023-08-12', '2023-08-26', 3),
(26, 26, 1, '2023-09-01', '2023-09-15', 4),
(27, 27, 7, '2023-08-10', '2023-08-20', 5),
(28, 28, 3, '2023-07-15', '2023-07-30', 6),
(29, 29, 9, '2023-08-18', '2023-08-31', 3),
(30, 30, 10, '2023-09-02', '2023-09-16', 4),
(31, 31, 5, '2023-07-01', '2023-07-14', 2),
(32, 32, 2, '2023-08-03', '2023-08-17', 6),
(33, 33, 4, '2023-07-05', '2023-07-19', 3),
(34, 34, 1, '2023-08-10', '2023-08-24', 5),
(35, 35, 6, '2023-07-15', '2023-07-30', 4),
(36, 36, 9, '2023-09-01', '2023-09-15', 6),
(37, 37, 2, '2023-08-12', '2023-08-26', 3),
(38, 38, 7, '2023-09-05', '2023-09-20', 4),
(39, 39, 4, '2023-06-28', '2023-07-12', 5),
(40, 40, 10, '2023-07-01', '2023-07-14', 2),
(41, 41, 5, '2023-08-15', '2023-08-30', 3),
(42, 42, 9, '2023-09-01', '2023-09-10', 4),
(43, 43, 3, '2023-07-20', '2023-08-05', 6),
(44, 44, 6, '2023-08-18', '2023-08-31', 2),
(45, 45, 8, '2023-09-10', '2023-09-24', 4),
(46, 46, 2, '2023-06-28', '2023-07-10', 3),
(47, 47, 7, '2023-07-15', '2023-07-30', 2),
(48, 48, 5, '2023-08-01', '2023-08-14', 5),
(49, 49, 4, '2023-09-05', '2023-09-19', 3),
(50, 50, 9, '2023-08-12', '2023-08-25', 4),
(51, 51, 2, '2023-09-01', '2023-09-14', 6),
(52, 52, 10, '2023-06-27', '2023-07-11', 2),
(53, 53, 7, '2023-07-08', '2023-07-22', 5),
(54, 54, 3, '2023-08-04', '2023-08-18', 6),
(55, 55, 1, '2023-09-10', '2023-09-24', 3),
(56, 56, 5, '2023-07-02', '2023-07-16', 2),
(57, 57, 6, '2023-08-06', '2023-08-20', 6),
(58, 58, 7, '2023-07-07', '2023-07-21', 4),
(59, 59, 9, '2023-06-29', '2023-07-13', 5),
(60, 60, 3, '2023-08-15', '2023-08-29', 3),
(61, 61, 1, '2023-09-04', '2023-09-18', 6),
(62, 62, 6, '2023-07-17', '2023-07-31', 2),
(63, 63, 10, '2023-06-25', '2023-07-09', 5),
(64, 64, 8, '2023-08-12', '2023-08-26', 4),
(65, 65, 9, '2023-09-02', '2023-09-16', 3),
(66, 66, 2, '2023-07-06', '2023-07-20', 2),
(67, 61, 7, '2023-08-11', '2023-08-25', 6),
(68, 45, 1, '2023-07-04', '2023-07-18', 5),
(69, 30, 8, '2023-09-01', '2023-09-15', 4),
(70, 3, 3, '2023-08-18', '2023-08-31', 2),
(71, 25, 6, '2023-07-13', '2023-07-27', 4),
(72, 11, 5, '2023-06-28', '2023-07-12', 5),
(73, 12, 9, '2023-08-02', '2023-08-16', 3),
(74, 13, 2, '2023-09-09', '2023-09-23', 6),
(75, 44, 4, '2023-07-10', '2023-07-24', 2),
(76, 47, 7, '2023-08-07', '2023-08-21', 5),
(77, 13, 1, '2023-09-06', '2023-09-20', 4),
(78, 13, 6, '2023-07-14', '2023-07-28', 2),
(79, 12, 9, '2023-06-30', '2023-07-14', 5),
(80, 11, 3, '2023-08-20', '2023-09-03', 4);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `StaID` int NOT NULL,
  `StaNom` varchar(30) NOT NULL DEFAULT '',
  `StaCapacite` int NOT NULL,
  `StaVilID` int NOT NULL,
  `StaTarif` decimal(10,2) NOT NULL DEFAULT '0.00'
) ;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`StaID`, `StaNom`, `StaCapacite`, `StaVilID`, `StaTarif`) VALUES
(1, 'Club Soleil Fluo', 300, 1, '1200.00'),
(2, 'Resort Banana Paradise', 150, 5, '950.00'),
(3, 'Villa Relax au Fromage', 200, 13, '800.00'),
(4, 'Hôtel Lama Chic', 250, 22, '1100.00'),
(5, 'Bungalows des Licornes', 180, 40, '700.00'),
(6, 'Camp Aventure Sans Retour', 120, 26, '500.00'),
(7, 'Village Vacances Choucroute', 300, 19, '850.00'),
(8, 'Beach Club Requin Rieur', 400, 49, '1500.00'),
(9, 'Igloo Deluxe Pingouin Déraillé', 100, 30, '600.00'),
(10, 'Hôtel Spa Nutella Palace', 220, 45, '1300.00');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `VilID` int NOT NULL,
  `VilNom` varchar(30) NOT NULL,
  `VilPayID` int NOT NULL
) ;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`VilID`, `VilNom`, `VilPayID`) VALUES
(1, 'Cairo', 1),
(2, 'Alexandrie', 1),
(3, 'Lagos', 2),
(4, 'Abuja', 2),
(5, 'Johannesburg', 3),
(6, 'Cape Town', 3),
(7, 'Nairobi', 4),
(8, 'Mombasa', 4),
(9, 'Casablanca', 5),
(10, 'Rabat', 5),
(11, 'Addis Ababa', 6),
(12, 'Gondar', 6),
(13, 'New York', 7),
(14, 'Los Angeles', 7),
(15, 'Chicago', 7),
(16, 'Toronto', 8),
(17, 'Vancouver', 8),
(18, 'Montreal', 8),
(19, 'Mexico City', 9),
(20, 'Cancún', 9),
(21, 'Havana', 10),
(22, 'Rio de Janeiro', 11),
(23, 'São Paulo', 11),
(24, 'Buenos Aires', 12),
(25, 'Córdoba', 12),
(26, 'Bogotá', 13),
(27, 'Medellín', 13),
(28, 'Lima', 14),
(29, 'Cusco', 14),
(30, 'McMurdo Station', 15),
(31, 'Tokyo', 16),
(32, 'Osaka', 16),
(33, 'Beijing', 17),
(34, 'Shanghai', 17),
(35, 'Mumbai', 18),
(36, 'Delhi', 18),
(37, 'Seoul', 19),
(38, 'Busan', 19),
(39, 'Paris', 20),
(40, 'Lyon', 20),
(41, 'London', 21),
(42, 'Manchester', 21),
(43, 'Berlin', 22),
(44, 'Hamburg', 22),
(45, 'Rome', 23),
(46, 'Naples', 23),
(47, 'Madrid', 24),
(48, 'Barcelona', 24),
(49, 'Sydney', 25),
(50, 'Melbourne', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`ActID`),
  ADD KEY `FK_actsta` (`ActStaID`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`CliID`),
  ADD KEY `FK_clivil` (`CliVilID`);

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`ConID`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`PayID`),
  ADD KEY `FK_paysCon` (`PayConID`);

--
-- Indexes for table `sejours`
--
ALTER TABLE `sejours`
  ADD PRIMARY KEY (`SejID`),
  ADD KEY `FK_cli` (`SejCliID`),
  ADD KEY `FK_sta` (`SejStaID`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`StaID`),
  ADD KEY `FK_vil` (`StaVilID`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`VilID`),
  ADD KEY `FK_pay` (`VilPayID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sejours`
--
ALTER TABLE `sejours`
  MODIFY `SejID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `StaID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `VilID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activites`
--
ALTER TABLE `activites`
  ADD CONSTRAINT `activites_ibfk_1` FOREIGN KEY (`ActStaID`) REFERENCES `stations` (`StaID`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`CliVilID`) REFERENCES `villes` (`VilID`);

--
-- Constraints for table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_ibfk_1` FOREIGN KEY (`PayConID`) REFERENCES `continents` (`ConID`);

--
-- Constraints for table `sejours`
--
ALTER TABLE `sejours`
  ADD CONSTRAINT `FK_cli` FOREIGN KEY (`SejCliID`) REFERENCES `clients` (`CliID`),
  ADD CONSTRAINT `FK_sta` FOREIGN KEY (`SejStaID`) REFERENCES `stations` (`StaID`);

--
-- Constraints for table `stations`
--
ALTER TABLE `stations`
  ADD CONSTRAINT `FK_vil` FOREIGN KEY (`StaVilID`) REFERENCES `villes` (`VilID`);

--
-- Constraints for table `villes`
--
ALTER TABLE `villes`
  ADD CONSTRAINT `FK_pay` FOREIGN KEY (`VilPayID`) REFERENCES `pays` (`PayID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
