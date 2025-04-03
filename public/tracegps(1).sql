-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 19 déc. 2024 à 10:32
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tracegps`
--

-- --------------------------------------------------------

--
-- Structure de la table `tracegps_autorisations`
--

DROP TABLE IF EXISTS `tracegps_autorisations`;
CREATE TABLE IF NOT EXISTS `tracegps_autorisations` (
  `idAutorisant` int NOT NULL,
  `idAutorise` int NOT NULL,
  PRIMARY KEY (`idAutorisant`,`idAutorise`),
  KEY `fkuser2` (`idAutorise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tracegps_autorisations`
--

INSERT INTO `tracegps_autorisations` (`idAutorisant`, `idAutorise`) VALUES
(2, 3),
(2, 4),
(3, 4),
(3, 5),
(4, 5),
(4, 6),
(5, 6),
(5, 7),
(6, 7),
(6, 8),
(7, 8),
(7, 9),
(8, 9),
(8, 10),
(9, 10),
(9, 11),
(10, 11),
(10, 12),
(11, 12),
(11, 13);

-- --------------------------------------------------------

--
-- Structure de la table `tracegps_points`
--

DROP TABLE IF EXISTS `tracegps_points`;
CREATE TABLE IF NOT EXISTS `tracegps_points` (
  `idTrace` int NOT NULL,
  `id` int NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `altitude` double NOT NULL,
  `dateHeure` timestamp NOT NULL,
  `rythmeCardio` int NOT NULL,
  PRIMARY KEY (`idTrace`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tracegps_points`
--

INSERT INTO `tracegps_points` (`idTrace`, `id`, `latitude`, `longitude`, `altitude`, `dateHeure`, `rythmeCardio`) VALUES
(1, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(1, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(1, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(1, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(1, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(4, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(4, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(4, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(4, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(4, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(4, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(4, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(4, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(4, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(4, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(4, 11, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 12, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 13, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 14, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 15, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 16, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 17, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 18, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 19, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(4, 20, 48.2159, 1.5486, 110, '2018-01-19 12:10:28', 86),
(5, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(5, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(5, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(5, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(5, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(6, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(6, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(6, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(6, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(6, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(6, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(6, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(6, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(6, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(6, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(7, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(7, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(7, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(7, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(7, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(8, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(8, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(8, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(8, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(8, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(8, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(8, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(8, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(8, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(8, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(9, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(9, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(9, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(9, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(9, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(10, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(10, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(10, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(10, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(10, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(10, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(10, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(10, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(10, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(10, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(11, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(11, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(11, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(11, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(11, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(12, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(12, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(12, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(12, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(12, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(12, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(12, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(12, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(12, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(12, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(13, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(13, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(13, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(13, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(13, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(14, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(14, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(14, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(14, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(14, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(14, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(14, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(14, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(14, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(14, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(15, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(15, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(15, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(15, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(15, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(16, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(16, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(16, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(16, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(16, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(16, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(16, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(16, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(16, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(16, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(17, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(17, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(17, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(17, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(17, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(18, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(18, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(18, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(18, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(18, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(18, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(18, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(18, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(18, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(18, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(19, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(19, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(19, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(19, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(19, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(20, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(20, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(20, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(20, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(20, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(20, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(20, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(20, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(20, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(20, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90),
(21, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(21, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(21, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(21, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(21, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(22, 1, 48.2109, -1.5535, 60, '2018-01-19 12:08:48', 81),
(22, 2, 48.2119, -1.5525, 70, '2018-01-19 12:09:08', 82),
(22, 3, 48.2129, -1.5515, 80, '2018-01-19 12:09:28', 83),
(22, 4, 48.2139, -1.5505, 90, '2018-01-19 12:09:48', 84),
(22, 5, 48.2149, -1.5495, 100, '2018-01-19 12:10:08', 85),
(22, 6, 48.2159, -1.5485, 110, '2018-01-19 12:10:28', 86),
(22, 7, 48.2169, -1.5475, 120, '2018-01-19 12:10:48', 87),
(22, 8, 48.2179, -1.5465, 130, '2018-01-19 12:11:08', 88),
(22, 9, 48.2189, -1.5455, 140, '2018-01-19 12:11:28', 89),
(22, 10, 48.2199, -1.5445, 150, '2018-01-19 12:11:48', 90);

-- --------------------------------------------------------

--
-- Structure de la table `tracegps_traces`
--

DROP TABLE IF EXISTS `tracegps_traces`;
CREATE TABLE IF NOT EXISTS `tracegps_traces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateDebut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateFin` timestamp NULL DEFAULT NULL,
  `terminee` tinyint(1) NOT NULL,
  `idUtilisateur` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkuser3` (`idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tracegps_traces`
--

INSERT INTO `tracegps_traces` (`id`, `dateDebut`, `dateFin`, `terminee`, `idUtilisateur`) VALUES
(1, '2018-01-19 12:08:48', '2018-01-19 12:10:08', 1, 2),
(4, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 3),
(5, '2018-01-19 12:08:48', NULL, 0, 4),
(6, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 4),
(7, '2018-01-19 12:08:48', NULL, 0, 5),
(8, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 5),
(9, '2018-01-19 12:08:48', NULL, 0, 6),
(10, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 6),
(11, '2018-01-19 12:08:48', NULL, 0, 7),
(12, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 7),
(13, '2018-01-19 12:08:48', NULL, 0, 8),
(14, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 8),
(15, '2018-01-19 12:08:48', NULL, 0, 9),
(16, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 9),
(17, '2018-01-19 12:08:48', NULL, 0, 10),
(18, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 10),
(19, '2018-01-19 12:08:48', NULL, 0, 11),
(20, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 11),
(21, '2018-01-19 12:08:48', NULL, 0, 12),
(22, '2018-01-19 12:08:48', '2018-01-19 12:11:48', 1, 12),
(87, '2024-12-13 08:33:58', NULL, 0, 2),
(88, '2024-12-13 08:34:13', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `tracegps_utilisateurs`
--

DROP TABLE IF EXISTS `tracegps_utilisateurs`;
CREATE TABLE IF NOT EXISTS `tracegps_utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `mdpSha1` varchar(40) NOT NULL,
  `adrMail` varchar(75) NOT NULL,
  `numTel` varchar(14) DEFAULT NULL,
  `niveau` int NOT NULL DEFAULT '1',
  `dateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tracegps_utilisateurs`
--

INSERT INTO `tracegps_utilisateurs` (`id`, `pseudo`, `mdpSha1`, `adrMail`, `numTel`, `niveau`, `dateCreation`) VALUES
(1, 'admin', 'ff9fff929a1292db1c00e3142139b22ee4925177', 'delasalle.sio.eleves@gmail.com', '11.22.33.44.55', 2, '2024-10-01 14:39:30'),
(2, 'callisto', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '22.33.44.55.66', 1, '2024-10-01 14:39:30'),
(3, 'europa', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '22.33.44.55.66', 1, '2024-10-01 14:39:30'),
(4, 'galileo', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '22.33.44.55.66', 1, '2024-10-01 14:39:30'),
(5, 'helios', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '33.44.55.66.77', 1, '2024-10-01 14:39:30'),
(6, 'indigo', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '44.55.66.77.88', 1, '2024-10-01 14:39:30'),
(7, 'juno', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '44.55.66.77.88', 1, '2024-10-01 14:39:30'),
(8, 'kepler', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '44.55.66.77.88', 1, '2024-10-01 14:39:30'),
(9, 'luna', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '44.55.66.77.88', 1, '2024-10-01 14:39:30'),
(10, 'mars', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '44.55.66.77.88', 1, '2024-10-01 14:39:30'),
(11, 'neon', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '44.55.66.77.88', 1, '2024-10-01 14:39:30'),
(12, 'oxygen', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '44.55.66.77.88', 1, '2024-10-01 14:39:30'),
(13, 'photon', '13e3668bbee30b004380052b086457b014504b3e', 'delasalle.sio.eleves@gmail.com', '44.55.66.77.88', 1, '2024-10-01 14:39:30'),
(14, 'toto', 'ff9fff929a1292db1c00e3142139b22ee4925177', 'delasalle.sio.xxxx@gmail.com', '55.66.77.88.99', 1, '2024-10-04 11:05:49'),
(15, 'tomlefevrebonzon', '044874528eb6ed2a1d5b95a7e6c170e6f8a32f06', 'lefevreb.t@lyceedelasalle.fr', '01.02.03.04.05', 1, '2024-12-13 06:55:05');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `tracegps_vue_traces`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `tracegps_vue_traces`;
CREATE TABLE IF NOT EXISTS `tracegps_vue_traces` (
`dateDebut` timestamp
,`dateFin` timestamp
,`id` int
,`idUtilisateur` int
,`nbPoints` bigint
,`pseudo` varchar(30)
,`terminee` tinyint(1)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `tracegps_vue_utilisateurs`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `tracegps_vue_utilisateurs`;
CREATE TABLE IF NOT EXISTS `tracegps_vue_utilisateurs` (
`adrMail` varchar(75)
,`dateCreation` timestamp
,`dateDerniereTrace` timestamp
,`id` int
,`mdpSha1` varchar(40)
,`nbTraces` bigint
,`niveau` int
,`numTel` varchar(14)
,`pseudo` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure de la vue `tracegps_vue_traces`
--
DROP TABLE IF EXISTS `tracegps_vue_traces`;

DROP VIEW IF EXISTS `tracegps_vue_traces`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tracegps_vue_traces` (`id`, `dateDebut`, `dateFin`, `terminee`, `idUtilisateur`, `pseudo`, `nbPoints`) AS   select `tracegps_traces`.`id` AS `id`,`tracegps_traces`.`dateDebut` AS `dateDebut`,`tracegps_traces`.`dateFin` AS `dateFin`,`tracegps_traces`.`terminee` AS `terminee`,`tracegps_traces`.`idUtilisateur` AS `idUtilisateur`,`tracegps_utilisateurs`.`pseudo` AS `pseudo`,count(`tracegps_points`.`id`) AS `count(tracegps_points.id)` from ((`tracegps_traces` join `tracegps_utilisateurs` on((`tracegps_traces`.`idUtilisateur` = `tracegps_utilisateurs`.`id`))) left join `tracegps_points` on((`tracegps_traces`.`id` = `tracegps_points`.`idTrace`))) group by `tracegps_traces`.`id`,`tracegps_traces`.`dateDebut`,`tracegps_traces`.`dateFin`,`tracegps_traces`.`terminee`,`tracegps_traces`.`idUtilisateur`,`tracegps_utilisateurs`.`pseudo` order by `tracegps_traces`.`id`  ;

-- --------------------------------------------------------

--
-- Structure de la vue `tracegps_vue_utilisateurs`
--
DROP TABLE IF EXISTS `tracegps_vue_utilisateurs`;

DROP VIEW IF EXISTS `tracegps_vue_utilisateurs`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tracegps_vue_utilisateurs` (`id`, `pseudo`, `mdpSha1`, `adrMail`, `numTel`, `niveau`, `dateCreation`, `nbTraces`, `dateDerniereTrace`) AS   select `tracegps_utilisateurs`.`id` AS `id`,`tracegps_utilisateurs`.`pseudo` AS `pseudo`,`tracegps_utilisateurs`.`mdpSha1` AS `mdpSha1`,`tracegps_utilisateurs`.`adrMail` AS `adrMail`,`tracegps_utilisateurs`.`numTel` AS `numTel`,`tracegps_utilisateurs`.`niveau` AS `niveau`,`tracegps_utilisateurs`.`dateCreation` AS `dateCreation`,count(`tracegps_traces`.`id`) AS `count(tracegps_traces.id)`,max(`tracegps_traces`.`dateDebut`) AS `max(dateDebut)` from (`tracegps_utilisateurs` left join `tracegps_traces` on((`tracegps_utilisateurs`.`id` = `tracegps_traces`.`idUtilisateur`))) group by `tracegps_utilisateurs`.`id`,`tracegps_utilisateurs`.`pseudo`,`tracegps_utilisateurs`.`mdpSha1`,`tracegps_utilisateurs`.`adrMail`,`tracegps_utilisateurs`.`numTel`,`tracegps_utilisateurs`.`niveau`,`tracegps_utilisateurs`.`dateCreation` order by `tracegps_utilisateurs`.`pseudo`  ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tracegps_autorisations`
--
ALTER TABLE `tracegps_autorisations`
  ADD CONSTRAINT `fkuser1` FOREIGN KEY (`idAutorisant`) REFERENCES `tracegps_utilisateurs` (`id`),
  ADD CONSTRAINT `fkuser2` FOREIGN KEY (`idAutorise`) REFERENCES `tracegps_utilisateurs` (`id`);

--
-- Contraintes pour la table `tracegps_points`
--
ALTER TABLE `tracegps_points`
  ADD CONSTRAINT `fktrace` FOREIGN KEY (`idTrace`) REFERENCES `tracegps_traces` (`id`);

--
-- Contraintes pour la table `tracegps_traces`
--
ALTER TABLE `tracegps_traces`
  ADD CONSTRAINT `fkuser3` FOREIGN KEY (`idUtilisateur`) REFERENCES `tracegps_utilisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
