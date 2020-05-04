-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 11 juil. 2019 à 14:12
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
-- Base de données :  `db_expressfood`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(3) COLLATE utf8_bin NOT NULL,
  `nom` varchar(100) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(100) COLLATE utf8_bin NOT NULL,
  `identifiant` varchar(15) COLLATE utf8_bin NOT NULL,
  `mdp` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `civilite`, `nom`, `prenom`, `identifiant`, `mdp`) VALUES
(1, 'Mme', 'Martin', 'Claude', 'claude75', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(2, 'M', 'Pillon', 'Marc', 'MarcPi', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(3, 'Mme', 'Blot', 'Sophie', 'SophieB', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(4, 'Mme', 'Marlène', 'Sasoeur', 'Mar1982', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(5, 'M', 'Rossi', 'Mario', 'Mario', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(6, 'Mme', 'Maoumoud', 'Viviane', 'Viv87', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(7, 'M', 'Le Blanc', 'Juste', 'JLeblanc', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(8, 'M', 'Le Moine', 'Nicolas', 'Nicolas81', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(9, 'Mme', 'Le Moine', 'Josephine', 'Jos84', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(10, 'M', 'La Fuente', 'Andreas', 'Andreas', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(11, 'Mme', 'La Fleur', 'Julie', 'Julie85', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(12, 'M', 'Petit', 'Jean', 'Jean', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(13, 'M', 'Tarantini', 'Didier', 'DidierT', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(14, 'Mme', 'Poisson', 'Laure-Hélène', 'LH79', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(15, 'Mme', 'Tarantini', 'Jeanne', 'Jeanne83', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(16, 'M', 'Rocher', 'Jean-Yves', 'JY', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(17, 'Mme', 'Germain', 'Justine', 'Justine', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(18, 'M', 'Sommier', 'Charles', 'CharlesSom', '$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `dateCommande` datetime NOT NULL,
  `etat` smallint(6) NOT NULL,
  `prixTotal_HT` decimal(10,2) NOT NULL,
  `prixTotal_TTC` decimal(10,2) NOT NULL,
  `livreur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `livreur_commande_fk` (`livreur_id`),
  KEY `client_commande_fk` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `client_id`, `dateCommande`, `etat`, `prixTotal_HT`, `prixTotal_TTC`, `livreur_id`) VALUES
(1, 1, '2019-05-19 00:00:00', 1, '23.50', '25.00', 4),
(2, 4, '2019-05-18 00:00:00', 2, '39.00', '41.00', 5),
(3, 1, '2019-05-19 00:00:00', 1, '23.50', '25.00', 4),
(4, 4, '2019-05-18 00:00:00', 2, '39.00', '41.00', 5),
(5, 5, '2019-06-14 00:00:00', 3, '13.50', '15.00', 3),
(6, 6, '2019-07-12 00:00:00', 1, '43.80', '45.00', 2),
(7, 12, '2019-06-03 00:00:00', 4, '13.00', '14.00', 3),
(8, 15, '2019-07-06 00:00:00', 1, '19.50', '21.00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `coordonnees`
--

DROP TABLE IF EXISTS `coordonnees`;
CREATE TABLE IF NOT EXISTS `coordonnees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `telephone` varchar(15) COLLATE utf8_bin NOT NULL,
  `adresse` varchar(100) COLLATE utf8_bin NOT NULL,
  `adresseComplement` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `infos` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `codePostal` varchar(5) COLLATE utf8_bin NOT NULL,
  `ville` varchar(100) COLLATE utf8_bin NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_coordonnees_fk` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `coordonnees`
--

INSERT INTO `coordonnees` (`id`, `client_id`, `email`, `telephone`, `adresse`, `adresseComplement`, `infos`, `codePostal`, `ville`, `latitude`, `longitude`) VALUES
(1, 1, 'c.martin@gmail.com', '665478952', '31 avenue des fleurs', NULL, NULL, '42000', 'Saint-Etienne', '45.433300', '4.400000'),
(2, 2, 'pillon23@orange.com', '624781401', '98 rue de la Paix', NULL, NULL, '86000', 'Poitiers', '46.583300', '0.333300'),
(3, 3, 's.blot@.com', '665418952', '25 rue des palmiers', NULL, NULL, '12100', 'Creissels', '44.100000', '3.083300'),
(4, 4, 'm.sasoeur@outlook.com', '624124352', '53 rue du marché', NULL, NULL, '17000', 'La Rochelle', '46.166700', '-1.150000'),
(5, 5, 'rossi1522@orange.fr', '612492178', '2 rue Malakoff', NULL, NULL, '75019', 'Paris', '48.881700', '2.382200'),
(6, 6, 'maoumoud@yahoo.fr', '251237810', '19 rue de la victoire', NULL, NULL, '85500', 'Les Herbiers', '46.866700', '-1.016700'),
(7, 7, 'leblanc1214@gmail.com', '65511452', '10 rue des Lilas', NULL, NULL, '75020', 'Paris', '48.853400', '2.348800'),
(8, 8, 'lemoine_nico@yahoo.fr', '118478412', '14 rue Saint-Michel', NULL, NULL, '35000', 'Rennes', '48.083300', '-1.683300'),
(9, 9, 'joseph_lem@msn.com', '722477852', '4 rue Blanche', NULL, NULL, '37100', 'Tours Nord', '47.383300', '0.683300'),
(10, 10, 'lafuente789@lapomme.com', '61244252', '158 Avenue du Mans', NULL, NULL, '78140', 'Vélizy-Villacoublay', '48.800000', '2.183300'),
(11, 11, 'lafleur@outlook.com', '217478944', '10 rue de la mer', NULL, NULL, '22000', 'Saint-Brieuc', '48.516700', '-2.783300'),
(12, 12, 'j.petit@gmail.com', '765478988', '12 Place de Bretagne', 'Bâtiment A, 2e étage', 'Au fond de l\'escalier', '56000', 'Vannes', '47.666700', '-2.750000'),
(13, 13, 'didier_12@orange.com', '624741401', '98 rue de la forteresse', NULL, NULL, '75012', 'Paris', '48.881700', '2.382200'),
(14, 14, 'poissonlh@free.fr', '678418952', '9 rue Blanche', NULL, NULL, '37100', 'Tours Nord', '47.383300', '0.683300'),
(15, 15, 'j.tarantini123@outlook.com', '624122252', '145 rue du marché', 'Bât C, 4e étage', 'A droite de l\'ascenseur', '35000', 'Rennes', '48.083300', '-1.683300'),
(16, 16, 'jyrocher@msn.com', '712478178', '2 rue Proudhon', NULL, NULL, '17000', 'La Rochelle', '46.166700', '-1.150000'),
(17, 17, 'justine.germain@yahoo.fr', '651237810', '45 rue de la victoire', NULL, NULL, '69000', 'Lyon', '45.764043', '4.835659'),
(18, 18, 'charles.sommier@gmail.com', '651237810', '12 rue de la Mairie', NULL, NULL, '69000', 'Lyon', '45.764043', '4.835659');

-- --------------------------------------------------------

--
-- Structure de la table `lignecommande`
--

DROP TABLE IF EXISTS `lignecommande`;
CREATE TABLE IF NOT EXISTS `lignecommande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_id` int(11) NOT NULL,
  `plat_id` int(11) NOT NULL,
  `qte` int(11) DEFAULT NULL,
  `prix_HT` decimal(8,2) NOT NULL,
  `prix_TTC` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plat_lignecommande_fk` (`plat_id`),
  KEY `commande_lignecommande_fk` (`commande_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `lignecommande`
--

INSERT INTO `lignecommande` (`id`, `commande_id`, `plat_id`, `qte`, `prix_HT`, `prix_TTC`) VALUES
(1, 3, 2, 12, '78.00', '84.00'),
(2, 10, 3, 13, '50.50', '54.50'),
(3, 5, 9, 18, '105.00', '110.20'),
(4, 4, 4, 14, '64.00', '68.00'),
(5, 9, 10, 9, '152.00', '158.00'),
(6, 4, 2, 12, '32.00', '34.85'),
(7, 7, 6, 20, '78.00', '82.00'),
(8, 6, 5, 22, '92.50', '96.00'),
(9, 1, 3, 17, '55.00', '57.26');

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

DROP TABLE IF EXISTS `livreur`;
CREATE TABLE IF NOT EXISTS `livreur` (
  `livreur_id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(100) COLLATE utf8_bin NOT NULL,
  `statut` tinyint(1) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`livreur_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `livreur`
--

INSERT INTO `livreur` (`livreur_id`, `nom`, `prenom`, `statut`, `latitude`, `longitude`) VALUES
(1, 'LePetit', 'Julian', 1, '48.800000', '2.183300'),
(2, 'Vergner', 'Matthieu', 0, '48.800000', '2.183300'),
(3, 'Loiset', 'Élodie', 0, '45.433300', '4.400000'),
(4, 'Usayn', 'Caleb', 1, '47.666700', '-2.750000'),
(5, 'Ponchet', 'Sylvie', 1, '48.800000', '2.183300'),
(6, 'Turrettini', 'Silvio', 0, '48.800000', '2.183300'),
(7, 'Marcault', 'Michelle', 0, '48.881700', '2.382200'),
(8, 'Magnot', 'Julie', 1, '47.383300', '0.683300'),
(9, 'Choum', 'Alpha', 1, '48.800000', '2.183300'),
(10, 'Briand', 'Frédéric', 0, '44.100000', '3.083300');

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

DROP TABLE IF EXISTS `plat`;
CREATE TABLE IF NOT EXISTS `plat` (
  `id` int(11) NOT NULL,
  `dateCreation` date NOT NULL,
  `dateDebutVente` datetime DEFAULT NULL,
  `typePlat` varchar(255) COLLATE utf8_bin NOT NULL,
  `nomPlat` varchar(255) COLLATE utf8_bin NOT NULL,
  `prixplat_HT` decimal(8,2) NOT NULL,
  `prixplat_TTC` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`id`, `dateCreation`, `dateDebutVente`, `typePlat`, `nomPlat`, `prixplat_HT`, `prixplat_TTC`) VALUES
(1, '2018-01-14', '2018-01-16 21:00:05', 'plat', 'ravioli bolognese', '11.50', '12.80'),
(2, '2019-03-18', '2019-03-19 19:00:05', 'dessert', 'mousse au chocolat', '13.00', '14.00'),
(3, '2018-05-10', '2018-05-16 18:25:05', 'plat', 'lasagnes', '18.00', '19.85'),
(4, '2019-12-04', '2019-12-05 14:02:05', 'plat', 'entrecôte de bouef', '14.00', '15.00'),
(5, '2019-10-21', '2019-10-26 19:26:05', 'dessert', 'profitoroles royal', '9.00', '9.85'),
(6, '2019-07-24', '2019-07-30 22:00:05', 'dessert', 'tiramisu', '12.00', '13.25'),
(7, '2019-03-25', '2019-03-25 17:00:50', 'plat', 'pommes dauphines', '20.00', '22.00');

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livreur_stock_id` int(11) NOT NULL,
  `plat_id` int(11) NOT NULL,
  `qte` int(11) DEFAULT NULL COMMENT 'Allows Nulls = Stock value could be <= 0',
  PRIMARY KEY (`id`),
  KEY `plat_stock_fk` (`plat_id`),
  KEY `livreur_stock_fk` (`livreur_stock_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id`, `livreur_stock_id`, `plat_id`, `qte`) VALUES
(1, 1, 3, 2),
(2, 2, 5, 2),
(3, 3, 9, 4),
(4, 4, 6, 2),
(5, 5, 6, 4),
(6, 6, 4, 2),
(7, 7, 1, 3),
(8, 8, 2, 1),
(9, 9, 5, 2),
(10, 10, 3, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
