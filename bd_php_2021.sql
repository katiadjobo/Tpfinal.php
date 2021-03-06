-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 30 juin 2021 à 21:53
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_php_2021`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

DROP TABLE IF EXISTS `absence`;
CREATE TABLE IF NOT EXISTS `absence` (
  `idAbsence` int(255) NOT NULL AUTO_INCREMENT,
  `dateAbsence` date NOT NULL,
  `etudiantMatricule` varchar(100) NOT NULL,
  `coursId` varchar(100) NOT NULL,
  PRIMARY KEY (`idAbsence`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`idAbsence`, `dateAbsence`, `etudiantMatricule`, `coursId`) VALUES
(1, '2021-05-18', 'PPP-PPP-PPP', '1');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `libelleClass` varchar(100) NOT NULL,
  `niveauClass` varchar(10) NOT NULL,
  `filiereClass` varchar(100) NOT NULL,
  PRIMARY KEY (`libelleClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`libelleClass`, `niveauClass`, `filiereClass`) VALUES
('maths', 'L2', 'Maths');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `idCours` int(255) NOT NULL AUTO_INCREMENT,
  `dateCours` date NOT NULL,
  `classeCours` varchar(100) NOT NULL,
  `professeurCours` varchar(100) NOT NULL,
  `moduleCours` varchar(100) NOT NULL,
  `semestreCours` varchar(100) NOT NULL,
  `nbrHeureCours` int(10) NOT NULL,
  `heureDebutCours` time NOT NULL,
  `heureFinCours` time NOT NULL,
  PRIMARY KEY (`idCours`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`idCours`, `dateCours`, `classeCours`, `professeurCours`, `moduleCours`, `semestreCours`, `nbrHeureCours`, `heureDebutCours`, `heureFinCours`) VALUES
(1, '2021-06-16', 'L1 web designer', 'Olafa', 'informatique', 's1', 10, '07:15:00', '12:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `matriculeEtu` varchar(100) NOT NULL,
  `nomEtu` varchar(25) NOT NULL,
  `prenomEtu` varchar(25) NOT NULL,
  `dateNaissanceEtu` date NOT NULL,
  `sexeEtu` varchar(10) NOT NULL,
  `classeEtu` varchar(25) NOT NULL,
  `competenceEtu` varchar(255) NOT NULL,
  `parcoursEtu` varchar(255) NOT NULL,
  PRIMARY KEY (`matriculeEtu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`matriculeEtu`, `nomEtu`, `prenomEtu`, `dateNaissanceEtu`, `sexeEtu`, `classeEtu`, `competenceEtu`, `parcoursEtu`) VALUES
('LLL-LLL-LLL', 'Yameogo', 'Ivan', '2005-05-20', 'm', 'L1 web developper', 'integration web', 'Ingenieur'),
('MMM-MMM-MMM', 'Mbaye', 'Arame', '2000-09-27', 'f', 'L1 web marketing', 'designer', 'Marketer'),
('NNN-NNN-NNN', 'Dibert-Dollet', 'Jean-Paul', '2000-05-04', 'm', 'L1 web player', 'playing', 'ceinture arc-en-ciel');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `libelleModule` varchar(100) NOT NULL,
  PRIMARY KEY (`libelleModule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`libelleModule`) VALUES
('economie'),
('Maths');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `matriculeProf` varchar(100) NOT NULL,
  `nomProf` varchar(100) NOT NULL,
  `prenomProf` varchar(100) NOT NULL,
  `dateNaissanceProf` date NOT NULL,
  `sexeProf` varchar(100) NOT NULL,
  `gradeProf` varchar(100) NOT NULL,
  `classeProf` varchar(100) NOT NULL,
  `moduleProf` varchar(100) NOT NULL,
  PRIMARY KEY (`matriculeProf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`matriculeProf`, `nomProf`, `prenomProf`, `dateNaissanceProf`, `sexeProf`, `gradeProf`, `classeProf`, `moduleProf`) VALUES
('PPP-PPP-PPP', 'Olafa', 'Divine', '2000-12-26', 'f', 'Doctor', 'Actuariat', 'Maths'),
('QQQ-QQQ-QQQ', 'Adaisso', 'Hugues', '2000-04-21', 'm', 'Professeur', 'monnaie', 'economie');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `matriculeEtu` varchar(12) DEFAULT NULL,
  `nomEtu` varchar(255) DEFAULT NULL,
  `prenomEtu` varchar(255) DEFAULT NULL,
  `classeEtu` varchar(255) DEFAULT NULL,
  `sexeEtu` char(1) DEFAULT NULL,
  `dateNaissanceEtu` varchar(255) DEFAULT NULL,
  `parcoursEtu` varchar(255) DEFAULT NULL,
  `competenceEtu` varchar(255) DEFAULT NULL,
  `avatarEtu` varchar(255) DEFAULT NULL,
  `anneeScolaire` varchar(255) DEFAULT NULL,
  `matriculeProf` varchar(255) DEFAULT NULL,
  `nomProf` varchar(255) DEFAULT NULL,
  `prenomProf` varchar(255) DEFAULT NULL,
  `classeProf` varchar(255) DEFAULT NULL,
  `moduleProf` varchar(255) DEFAULT NULL,
  `avatarProf` varchar(255) DEFAULT NULL,
  `sexeProf` char(1) DEFAULT NULL,
  `gradeProf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginUser` (`login`),
  UNIQUE KEY `1` (`login`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `login`, `password`, `nom`, `role`, `avatar`, `matriculeEtu`, `nomEtu`, `prenomEtu`, `classeEtu`, `sexeEtu`, `dateNaissanceEtu`, `parcoursEtu`, `competenceEtu`, `avatarEtu`, `anneeScolaire`, `matriculeProf`, `nomProf`, `prenomProf`, `classeProf`, `moduleProf`, `avatarProf`, `sexeProf`, `gradeProf`) VALUES
(1, 'Babou@gmail.com', 'jesus', 'BABOU', 'ROLE_ADMIN', 'Babou@gmail.com', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '', ''),
(2, 'jean@gmail.com', 'jean', '', 'ROLE_PROF', '', 'PPP-PPP-PPP', 'SANOGO', 'tidiane', 'L1 web designer', 'M', '2020-05-07', 'MAE2', 'maths', '', '', '', '', '', '', '', '', '', ''),
(4, 'dem@gmail.com', 'dem', 'divine                     ', 'ROLE_AC', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'zidol@gmail.com', 'zidol', 'AGBODAZE                     ', 'ROLE_RP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'tid@gmail.com', 'tid', NULL, 'ROLE_PROF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FFF-JHL-VHG', 'SANOGO', 'tidiane', 'L1 web designer', 'mathematique', NULL, 'M', 'doctorat');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
