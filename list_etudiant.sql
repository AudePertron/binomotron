-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2020 at 07:54 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `list_etudiant`
--

-- --------------------------------------------------------

--
-- Table structure for table `apprenants_groupe`
--

CREATE TABLE `apprenants_groupe` (
  `id_etudiant` int(3) NOT NULL,
  `id_groupe` int(3) NOT NULL,
  `id_projet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apprenants_groupe`
--

INSERT INTO `apprenants_groupe` (`id_etudiant`, `id_groupe`, `id_projet`) VALUES
(4, 1, 40),
(12, 1, 40),
(17, 2, 40),
(15, 2, 40),
(20, 3, 40),
(8, 3, 40),
(2, 4, 40),
(3, 4, 40),
(9, 5, 40),
(10, 5, 40),
(7, 6, 40),
(6, 6, 40),
(18, 7, 40),
(1, 7, 40),
(19, 8, 40),
(14, 8, 40),
(5, 9, 40),
(13, 9, 40),
(16, 10, 40),
(11, 10, 40),
(8, 1, 41),
(11, 1, 41),
(18, 1, 41),
(19, 2, 41),
(9, 2, 41),
(4, 2, 41),
(12, 3, 41),
(10, 3, 41),
(15, 3, 41),
(16, 4, 41),
(20, 4, 41),
(2, 4, 41),
(14, 5, 41),
(13, 5, 41),
(6, 5, 41),
(5, 6, 41),
(3, 6, 41),
(7, 6, 41),
(1, 7, 41),
(17, 7, 41),
(8, 1, 42),
(11, 1, 42),
(4, 1, 42),
(3, 1, 42),
(12, 2, 42),
(9, 2, 42),
(2, 2, 42),
(5, 2, 42),
(17, 3, 42),
(16, 3, 42),
(15, 3, 42),
(18, 3, 42),
(6, 4, 42),
(20, 4, 42),
(14, 4, 42),
(13, 4, 42),
(7, 5, 42),
(19, 5, 42),
(1, 5, 42),
(10, 5, 42),
(4, 1, 43),
(20, 1, 43),
(11, 2, 43),
(17, 2, 43),
(10, 3, 43),
(8, 3, 43),
(1, 4, 43),
(16, 4, 43),
(12, 5, 43),
(15, 5, 43),
(19, 6, 43),
(13, 6, 43),
(5, 7, 43),
(6, 7, 43),
(2, 8, 43),
(9, 8, 43),
(18, 9, 43),
(14, 9, 43),
(3, 10, 43),
(7, 10, 43),
(13, 1, 44),
(19, 1, 44),
(6, 1, 44),
(3, 2, 44),
(10, 2, 44),
(5, 2, 44),
(4, 3, 44),
(15, 3, 44),
(20, 3, 44),
(14, 4, 44),
(17, 4, 44),
(7, 4, 44),
(2, 5, 44),
(11, 5, 44),
(18, 5, 44),
(12, 6, 44),
(16, 6, 44),
(1, 6, 44),
(8, 7, 44),
(9, 7, 44),
(4, 1, 45),
(17, 1, 45),
(1, 1, 45),
(16, 1, 45),
(14, 2, 45),
(19, 2, 45),
(3, 2, 45),
(8, 2, 45),
(6, 3, 45),
(12, 3, 45),
(2, 3, 45),
(9, 3, 45),
(13, 4, 45),
(15, 4, 45),
(5, 4, 45),
(10, 4, 45),
(20, 5, 45),
(11, 5, 45),
(7, 5, 45),
(18, 5, 45),
(3, 1, 47),
(20, 1, 47),
(6, 2, 47),
(15, 2, 47),
(10, 3, 47),
(2, 3, 47),
(17, 4, 47),
(14, 4, 47),
(1, 5, 47),
(13, 5, 47),
(12, 6, 47),
(9, 6, 47),
(8, 7, 47),
(4, 7, 47),
(7, 8, 47),
(5, 8, 47),
(19, 9, 47),
(18, 9, 47),
(16, 10, 47),
(11, 10, 47),
(6, 1, 48),
(9, 1, 48),
(19, 1, 48),
(5, 2, 48),
(10, 2, 48),
(3, 2, 48),
(20, 3, 48),
(17, 3, 48),
(2, 3, 48),
(7, 4, 48),
(14, 4, 48),
(11, 4, 48),
(13, 5, 48),
(12, 5, 48),
(18, 5, 48),
(15, 6, 48),
(8, 6, 48),
(1, 6, 48),
(4, 7, 48),
(16, 7, 48);

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`nom`, `prenom`, `id`) VALUES
('Furiga', 'Julien', 1),
('Bokalli', 'Luigi', 2),
('Bokalli', 'Luigi', 3),
('Bertho', 'Amaury', 4),
('Chaigneau', 'Thomas', 5),
('Cloatre', 'Erwan', 6),
('Guillen', 'Céline', 7),
('Hergoualc-h', 'Pereg', 8),
('Ibanni', 'Jamal', 9),
('Le Joncour', 'Jeremy', 10),
('Le Goff', 'Baptiste', 11),
('Le Berre', 'Baptiste', 12),
('Le Moal', 'Patricia', 13),
('Maintier', 'Ludivine', 14),
('Mbarga Mvogo', 'Christian', 15),
('Moulard', 'Eva', 16),
('Pertron', 'Aude', 17),
('Rioual', 'Ronan', 18),
('Sabia', 'Paul', 19),
('Verpoest', 'Guillaume', 20);

-- --------------------------------------------------------

--
-- Table structure for table `groupes`
--

CREATE TABLE `groupes` (
  `id_groupe` int(11) NOT NULL,
  `libelle` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupes`
--

INSERT INTO `groupes` (`id_groupe`, `libelle`) VALUES
(1, 'Groupe 1'),
(2, 'Groupe 2'),
(3, 'Groupe 3'),
(4, 'Groupe 4'),
(5, 'Groupe 5'),
(6, 'Groupe 6'),
(7, 'Groupe 7'),
(8, 'Groupe 8'),
(9, 'Groupe 9'),
(10, 'Groupe 10');

-- --------------------------------------------------------

--
-- Table structure for table `projets`
--

CREATE TABLE `projets` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projets`
--

INSERT INTO `projets` (`id`, `nom`, `date`) VALUES
(3, 'Machin', '2020-10-19'),
(4, 'Machin', '2020-10-19'),
(5, 'Projet 3', '2020-10-19'),
(6, 'Projet 2', '2020-10-19'),
(7, 'Projet 4', '2020-10-19'),
(8, 'Projet 2', '2020-10-19'),
(9, 'Projet 2', '2020-10-19'),
(10, 'Projet 3', '2020-10-19'),
(11, 'Projet 3', '2020-10-19'),
(12, 'Projet 3', '2020-10-19'),
(13, 'Projet 4', '2020-10-19'),
(14, 'Projet 4', '2020-10-19'),
(15, 'Projet 4', '2020-10-19'),
(16, 'Projet 3', '2020-10-10'),
(17, 'Projet 2', '2020-10-10'),
(18, 'Projet 2', '2020-10-10'),
(19, 'Projet 2', '2020-10-10'),
(20, 'Projet 2', '2020-10-19'),
(21, 'Projet 2', '2020-10-19'),
(22, 'Projet 2', '2020-10-19'),
(23, 'Projet 2', '2020-10-19'),
(24, 'Projet 2', '2020-10-19'),
(25, 'Projet 2', '2020-10-19'),
(26, 'Projet 2', '2020-10-19'),
(27, 'Projet 2', '2020-10-28'),
(28, 'Projet 2', '2020-10-28'),
(29, 'Projet 2', '2020-10-28'),
(30, 'Projet 2', '2020-10-28'),
(31, 'Projet 2', '2020-10-28'),
(32, 'Projet 2', '2020-10-28'),
(33, 'Projet 2', '2020-10-28'),
(34, 'Projet 2', '2020-10-28'),
(35, 'Projet 2', '2020-10-28'),
(36, 'Projet 2', '2020-10-28'),
(37, 'Projet 2', '2020-10-28'),
(38, 'Projet 2', '2020-10-28'),
(39, 'Projet 2', '2020-10-28'),
(40, 'Projet Binomotron', '2020-10-28'),
(41, 'Projet Binomotron', '2020-10-28'),
(42, 'Projet Binomotron', '2020-10-28'),
(43, 'Projet Binomotron', '2020-10-28'),
(44, 'Projet Binomotron', '2020-10-28'),
(45, 'Projet Binomotron', '2020-10-28'),
(46, 'Projet Binomotron', '2020-10-28'),
(47, 'Projet Binomotron', '2020-10-28'),
(48, 'Projet Binomotron', '2020-10-28'),
(49, 'Projet Binomotron', '2020-10-28'),
(50, 'aze', '2020-10-29'),
(51, 'sqdf', '2020-10-29'),
(52, 'sqdf', '2020-10-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apprenants_groupe`
--
ALTER TABLE `apprenants_groupe`
  ADD KEY `apprenants_groupe_ibfk_2` (`id_projet`),
  ADD KEY `apprenants_groupe_ibfk_3` (`id_groupe`),
  ADD KEY `apprenants_groupe_ibfk_4` (`id_etudiant`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apprenants_groupe`
--
ALTER TABLE `apprenants_groupe`
  ADD CONSTRAINT `apprenants_groupe_ibfk_2` FOREIGN KEY (`id_projet`) REFERENCES `projets` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `apprenants_groupe_ibfk_3` FOREIGN KEY (`id_groupe`) REFERENCES `groupes` (`id_groupe`) ON DELETE NO ACTION,
  ADD CONSTRAINT `apprenants_groupe_ibfk_4` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiants` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
