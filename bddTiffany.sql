DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
   `IdNiveau` int(11) NOT NULL AUTO_INCREMENT,
   `imgNiv` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `nomNiv` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `nbMonstres` int(11) NOT NULL,
    PRIMARY KEY (`IdNiveau`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `monstres`;
CREATE TABLE IF NOT EXISTS `monstres` (
   `IdMonstre` int(11) NOT NULL AUTO_INCREMENT,
   `vitesseM` int(11) NOT NULL,
   `nomMonstre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `imgMonstre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `typeMonstre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
    PRIMARY KEY (`IdMonstre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tourelles`;
CREATE TABLE IF NOT EXISTS `tourelles` (
   `IdTourelles` int(11) NOT NULL AUTO_INCREMENT,
   `imgTourelle` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `nomTourelles` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `degats` int(11) NOT NULL,
   `vitesseT` int(11) NOT NULL,
   PRIMARY KEY (`IdTourelles`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
   `IdTopics` int(11) NOT NULL AUTO_INCREMENT,
   `nomT` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   PRIMARY KEY (`IdTopics`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
   `IdCompte` int(11) NOT NULL AUTO_INCREMENT,
   `nom` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `sexe` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `prenom` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `mail` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `dateN` date NOT NULL,
   `mdp` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `pseudo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `type` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `bConnecte` tinyint(1) NOT NULL,
   PRIMARY KEY (`IdCompte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `IdJoueur` int(11) NOT NULL AUTO_INCREMENT,  
  `derniereUtilisation` time NOT NULL DEFAULT '00:00:00',
  `nbUtilisation` int(11) NOT NULL DEFAULT '0',
  `IdCompte` int(11) NOT NULL,
  PRIMARY KEY (`IdJoueur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
   `IdAdmin` int(11) NOT NULL AUTO_INCREMENT, 
   `rôle` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `IdCompte` int(11) NOT NULL,
    PRIMARY KEY (`IdAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `maj`;
CREATE TABLE IF NOT EXISTS `maj` (
   `IdMAJ` int(11) NOT NULL AUTO_INCREMENT, 
   `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `titre` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
   `dateM` date NOT NULL,
   `IdAdmin` int(11) NOT NULL,
    PRIMARY KEY (`IdMAJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `score`;
CREATE TABLE IF NOT EXISTS `score` (
  `IdJoueur` int(11) NOT NULL,
  `IdNiveau` int(11) NOT NULL,
  `dernierScore` int(11) NOT NULL,
  `nbMonstresTues` int(11) NOT NULL,
  `tpsJeu` time NOT NULL DEFAULT '00:00:00',
  `meilleurScore` int(11) NOT NULL,
  PRIMARY KEY (`IdJoueur`,`IdNiveau`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `composé_de`;
CREATE TABLE IF NOT EXISTS `composé_de` (
  `IdTourelles` int(11) NOT NULL,
  `IdNiveau` int(11) NOT NULL,
  `IdMonstre` int(11) NOT NULL,
  PRIMARY KEY (`IdNiveau`,`IdMonstre`, `IdTourelles`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `commente`;
CREATE TABLE IF NOT EXISTS `commente` (
   `IdCompte` int(11) NOT NULL,
   `IdTopics` int(11) NOT NULL,
   `dateC` date NOT NULL,
   `heureC`  time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`IdCompte`,`IdTopics`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `commenteA`;
CREATE TABLE IF NOT EXISTS `commenteA` (
   `IdMAJ` int(11) NOT NULL,
   `IdCompte` int(11) NOT NULL,
   `dateA` date NOT NULL,
   `heureA` time NOT NULL DEFAULT '00:00:00',
   PRIMARY KEY(`IdMAJ`, `IdCompte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

