-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 21 fév. 2020 à 13:33
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
  `IdAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `rôle` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IdCompte` int(11) NOT NULL,
  PRIMARY KEY (`IdAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`IdCompte`,`IdTopics`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Structure de la table `composé_de`
--

DROP TABLE IF EXISTS `composé_de`;
CREATE TABLE IF NOT EXISTS `composé_de` (
  `IdTourelles` int(11) NOT NULL,
  `IdNiveau` int(11) NOT NULL,
  `IdMonstre` int(11) NOT NULL,
  PRIMARY KEY (`IdNiveau`,`IdMonstre`,`IdTourelles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `IdCompte` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text CHARACTER SET utf8 COLLATE utf8_bin,
  `prenom` text CHARACTER SET utf8 COLLATE utf8_bin,
  `mail` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dateN` date DEFAULT NULL,
  `mdp` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pseudo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_bin,
  `bConnecte` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IdCompte`),
  UNIQUE KEY `mail` (`mail`(50)) USING HASH,
  UNIQUE KEY `pseudo` (`pseudo`(50)) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`IdCompte`, `nom`, `prenom`, `mail`, `dateN`, `mdp`, `pseudo`, `type`, `bConnecte`) VALUES
(3, NULL, NULL, 'test@gmail.com', NULL, '$2y$10$6OUBYLmKoJTVFu9sT2KE9uw9VmO9TrzsLh0.3B2zo3XgoUlNYahy.', 'test', NULL, 1),
(4, NULL, NULL, 'test2@gmail.com', NULL, '$2y$10$bJJQprRBztsSHyutvKaxmu1fhVB4Tj//fLpBhA0k/siIdvByEt6ty', 'test2', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `IdJoueur` int(11) NOT NULL AUTO_INCREMENT,
  `derniereUtilisation` time NOT NULL DEFAULT '00:00:00',
  `nbUtilisation` int(11) NOT NULL DEFAULT '0',
  `IdCompte` int(11) NOT NULL,
  PRIMARY KEY (`IdJoueur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`IdMAJ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `monstres`
--

DROP TABLE IF EXISTS `monstres`;
CREATE TABLE IF NOT EXISTS `monstres` (
  `IdMonstre` int(11) NOT NULL AUTO_INCREMENT,
  `vitesseM` int(11) NOT NULL,
  `nomMonstre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imgMonstre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `typeMonstre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IdMonstre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `IdNiveau` int(11) NOT NULL AUTO_INCREMENT,
  `imgNiv` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nomNiv` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nbMonstres` int(11) NOT NULL,
  PRIMARY KEY (`IdNiveau`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `IdTopics` int(11) NOT NULL AUTO_INCREMENT,
  `nomT` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IdTopics`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tourelles`
--

DROP TABLE IF EXISTS `tourelles`;
CREATE TABLE IF NOT EXISTS `tourelles` (
  `IdTourelles` int(11) NOT NULL AUTO_INCREMENT,
  `imgTourelle` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nomTourelles` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `degats` int(11) NOT NULL,
  `vitesseT` int(11) NOT NULL,
  PRIMARY KEY (`IdTourelles`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
  ADD CONSTRAINT `commente_ibfk_1` FOREIGN KEY (`IdCompte`) REFERENCES `compte` (`IdCompte`);

--
-- Contraintes pour la table `commentea`
--
ALTER TABLE `commentea`
  ADD CONSTRAINT `commentea_ibfk_1` FOREIGN KEY (`IdCompte`) REFERENCES `compte` (`IdCompte`),
  ADD CONSTRAINT `commentea_ibfk_2` FOREIGN KEY (`IdMAJ`) REFERENCES `maj` (`IdMAJ`);

--
-- Contraintes pour la table `composé_de`
--
ALTER TABLE `composé_de`
  ADD CONSTRAINT `composé_de_ibfk_1` FOREIGN KEY (`IdNiveau`) REFERENCES `niveau` (`IdNiveau`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `joueur_ibfk_1` FOREIGN KEY (`IdJoueur`) REFERENCES `compte` (`IdCompte`);

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
