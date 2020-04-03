-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 03 avr. 2020 à 00:30
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
-- Base de données :  `base-pjs4`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `IdAdmin` int(11) NOT NULL,
  `rôle` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IdAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`IdAdmin`, `rôle`) VALUES
(1, 'web'),
(2, 'jeu'),
(6, 'web'),
(7, 'jeu'),
(8, 'design'),
(12, 'spectateur');

-- --------------------------------------------------------

--
-- Structure de la table `commente`
--

DROP TABLE IF EXISTS `commente`;
CREATE TABLE IF NOT EXISTS `commente` (
  `IdCompte` int(11) NOT NULL,
  `IdTopics` int(11) NOT NULL,
  `dateC` date NOT NULL,
  `heureC` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`IdCompte`,`IdTopics`),
  KEY `IdTopics` (`IdTopics`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commente`
--

INSERT INTO `commente` (`IdCompte`, `IdTopics`, `dateC`, `heureC`) VALUES
(3, 1, '2020-02-03', '18:00:00'),
(4, 2, '2020-02-07', '10:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `commentea`
--

DROP TABLE IF EXISTS `commentea`;
CREATE TABLE IF NOT EXISTS `commentea` (
  `IdMAJ` int(11) NOT NULL,
  `IdCompte` int(11) NOT NULL,
  `dateA` date NOT NULL,
  `heureA` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`IdMAJ`,`IdCompte`),
  KEY `IdCompte` (`IdCompte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentea`
--

INSERT INTO `commentea` (`IdMAJ`, `IdCompte`, `dateA`, `heureA`) VALUES
(1, 2, '2020-02-08', '09:05:00'),
(1, 7, '2020-02-09', '08:09:00');

-- --------------------------------------------------------

--
-- Structure de la table `composede`
--

DROP TABLE IF EXISTS `composede`;
CREATE TABLE IF NOT EXISTS `composede` (
  `IdTourelles` int(11) NOT NULL,
  `IdNiveau` int(11) NOT NULL,
  `IdMonstre` int(11) NOT NULL,
  PRIMARY KEY (`IdNiveau`,`IdMonstre`,`IdTourelles`),
  KEY `composeDe_ibfk_2` (`IdMonstre`),
  KEY `composeDe_ibfk_3` (`IdTourelles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `composede`
--

INSERT INTO `composede` (`IdTourelles`, `IdNiveau`, `IdMonstre`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `IdCompte` int(11) NOT NULL AUTO_INCREMENT,
  `mail` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mdp` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pseudo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `statut` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bConnecte` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdCompte`),
  UNIQUE KEY `mail` (`mail`(50)) USING HASH,
  UNIQUE KEY `pseudo` (`pseudo`(50)) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`IdCompte`, `mail`, `mdp`, `pseudo`, `statut`, `bConnecte`) VALUES
(1, 'gare@gmail.com', 'OJ8UHN3D0', 'Coop3', 'administrateur', 1),
(2, 'manger@gmail.com', 'ERTFG', 'Houi2', 'administrateur', 1),
(3, 'garfieldCatFat@gmail.com', 'OJ20S98UHN3D0', 'Catman93', 'joueur', 1),
(4, 'beybou@gmail.com', '987UYHGJ', 'BeyKing', 'joueur', 0),
(5, 'elise@gmail.com', '0987YHENR', 'Dune09', 'joueur', 1),
(6, 'idolaJerem@hotmail.fr', '234R5TGFD', 'Admin98', 'administrateur', 1),
(7, 'flemme@gmail.com', 'GT567UYHG', 'FlemmeDeLetre', 'administrateur', 1),
(8, 'julesF@hotmail.fr', '6TGHU7', 'JulementDrole', 'administrateur', 1),
(9, 'edouardhultembourg@gmail.com', 'VFT5678UH', 'Huledou07', 'joueur', 0),
(10, 'berenice@hotmail.fr', 'VFRT56', 'Berner87', 'joueur', 1),
(11, 'plusdinspi@gmail.com', '98O9IUI', 'Eheh', 'joueur', 0),
(12, 'finishme@gmail.com', '0987YTG', 'Ouiiii', 'administrateur', 1),
(13, 'intru@gmail.com', '123ERR', 'FiereDetreUnIntru', 'joueur', 1),
(14, 'jeancharles@gmail.com', '2ZE3R', 'Kingeek34', 'joueur', 1),
(15, 'erine@gmail.com', '2ZE3R4T', 'ErineIR345', 'joueur', 0),
(16, 'sorry@gmail.com', 'HHH87YH', 'Okey', 'joueur', 1);
-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `IdJoueur` int(11) NOT NULL,
  `derniereUtilisation` date NOT NULL,
  `nbUtilisation` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdJoueur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`IdJoueur`, `derniereUtilisation`, `nbUtilisation`) VALUES
(3, '2019-12-03', 2),
(4, '2020-02-05', 5),
(5, '2020-02-09', 23),
(9, '2020-02-03', 6),
(10, '2020-01-30', 9),
(11, '2020-02-04', 3),
(13, '2020-02-08', 9),
(14, '2020-02-02', 2),
(15, '2020-02-04', 7),
(16, '2020-02-09', 1);

-- --------------------------------------------------------

--
-- Structure de la table `maj`
--

DROP TABLE IF EXISTS `maj`;
CREATE TABLE IF NOT EXISTS `maj` (
  `IdMAJ` int(11) NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `titre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dateM` date NOT NULL,
  `IdAdmin` int(11) NOT NULL,
  PRIMARY KEY (`IdMAJ`),
  KEY `IdAdmin` (`IdAdmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maj`
--

INSERT INTO `maj` (`IdMAJ`, `description`, `titre`, `dateM`, `IdAdmin`) VALUES
(1, 'Que diriez-vous d\'un nouveau type de monstre super badasse ? Venez le découvrir en exclusivité ', 'Nouveau Monstre !', '2020-02-09', 6);

-- --------------------------------------------------------

--
-- Structure de la table `monstres`
--

DROP TABLE IF EXISTS `monstres`;
CREATE TABLE IF NOT EXISTS `monstres` (
  `IdMonstre` int(11) NOT NULL AUTO_INCREMENT,
  `vitesseM` int(11) NOT NULL,
  `nomMonstre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sante` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IdMonstre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `monstres`
--

INSERT INTO `monstres` (`IdMonstre`, `vitesseM`, `nomMonstre`, `sante`) VALUES
(1, 3, 'Tueur', ''),
(2, 2, 'Ravageur', ''),
(3, 4, 'Fuyeur', '');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `IdNiveau` int(11) NOT NULL AUTO_INCREMENT,
  `nomNiv` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nbMonstres` int(11) NOT NULL,
  PRIMARY KEY (`IdNiveau`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`IdNiveau`, `nomNiv`, `nbMonstres`) VALUES
(1, 'Preliminaire', 8);

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

DROP TABLE IF EXISTS `score`;
CREATE TABLE IF NOT EXISTS `score` (
  `IdJoueur` int(11) NOT NULL,
  `IdNiveau` int(11) NOT NULL,
  `dernierScore` int(11) NOT NULL,
  `nbMonstresTues` int(11) NOT NULL,
  `tpsJeu` time NOT NULL DEFAULT '00:00:00',
  `meilleurScore` int(11) NOT NULL,
  PRIMARY KEY (`IdJoueur`,`IdNiveau`),
  KEY `IdNiveau` (`IdNiveau`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`IdJoueur`, `IdNiveau`, `dernierScore`, `nbMonstresTues`, `tpsJeu`, `meilleurScore`) VALUES
(3, 1, 4, 8, '04:03:00', 4),
(4, 1, 1, 1, '00:04:00', 1),
(5, 1, 5, 11, '32:00:00', 6),
(9, 1, 8, 13, '10:00:00', 8),
(10, 1, 6, 6, '00:06:00', 6),
(11, 1, 4, 5, '04:00:00', 4),
(13, 1, 3, 12, '00:05:00', 5),
(14, 1, 7, 7, '00:04:00', 7),
(15, 1, 8, 15, '02:00:00', 8),
(16, 1, 2, 2, '00:04:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `IdTopics` int(11) NOT NULL AUTO_INCREMENT,
  `nomT` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IdTopics`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `topics`
--

INSERT INTO `topics` (`IdTopics`, `nomT`) VALUES
(1, 'Comment tricher ?'),
(2, 'Comment gagner ?');

-- --------------------------------------------------------

--
-- Structure de la table `tourelles`
--

DROP TABLE IF EXISTS `tourelles`;
CREATE TABLE IF NOT EXISTS `tourelles` (
  `IdTourelles` int(11) NOT NULL AUTO_INCREMENT,
  `prix` int(11) NOT NULL,
  `nomTourelles` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `degats` int(11) NOT NULL,
  `vitesseT` int(11) NOT NULL,
  PRIMARY KEY (`IdTourelles`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tourelles`
--

INSERT INTO `tourelles` (`IdTourelles`, `prix`, `nomTourelles`, `degats`, `vitesseT`) VALUES
(1, '', 'Tour1', 12, 2),
(2, '', 'Tour2', 14, 3),
(3, '', 'Tour3', 15, 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `administrateur_ibfk_1` FOREIGN KEY (`IdAdmin`) REFERENCES `compte` (`IdCompte`);

--
-- Contraintes pour la table `commente`
--
ALTER TABLE `commente`
  ADD CONSTRAINT `commente_ibfk_1` FOREIGN KEY (`IdCompte`) REFERENCES `compte` (`IdCompte`),
  ADD CONSTRAINT `commente_ibfk_2` FOREIGN KEY (`IdTopics`) REFERENCES `topics` (`IdTopics`);

--
-- Contraintes pour la table `commentea`
--
ALTER TABLE `commentea`
  ADD CONSTRAINT `commentea_ibfk_2` FOREIGN KEY (`IdMAJ`) REFERENCES `maj` (`IdMAJ`),
  ADD CONSTRAINT `commentea_ibfk_3` FOREIGN KEY (`IdCompte`) REFERENCES `administrateur` (`IdAdmin`);

--
-- Contraintes pour la table `composede`
--
ALTER TABLE `composede`
  ADD CONSTRAINT `composeDe_ibfk_1` FOREIGN KEY (`IdNiveau`) REFERENCES `niveau` (`IdNiveau`),
  ADD CONSTRAINT `composeDe_ibfk_2` FOREIGN KEY (`IdMonstre`) REFERENCES `monstres` (`IdMonstre`),
  ADD CONSTRAINT `composeDe_ibfk_3` FOREIGN KEY (`IdTourelles`) REFERENCES `tourelles` (`IdTourelles`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `joueur_ibfk_1` FOREIGN KEY (`IdJoueur`) REFERENCES `compte` (`IdCompte`);

--
-- Contraintes pour la table `maj`
--
ALTER TABLE `maj`
  ADD CONSTRAINT `maj_ibfk_1` FOREIGN KEY (`IdAdmin`) REFERENCES `administrateur` (`IdAdmin`);

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`IdNiveau`) REFERENCES `niveau` (`IdNiveau`),
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`IdJoueur`) REFERENCES `joueur` (`IdJoueur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
