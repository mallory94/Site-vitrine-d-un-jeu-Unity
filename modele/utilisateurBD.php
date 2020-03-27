<?php
    function inscrireBD($infos, $statut){
        require ("./modele/connect.php");
        $sql = 'INSERT INTO compte (pseudo, mail, mdp, statut) VALUES ( ? , ? , ? , ?)';

        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute(array($infos['pseudo'], $infos['email'] , $infos['mdp'], $statut));
            inscrireJoueurBD($infos['pseudo']);
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die();
        }
        return ;
    }

    function inscrireJoueurBD($pseudo){
        require ("./modele/connect.php");
        $sql = 'INSERT INTO joueur (IdJoueur , derniereUtilisation, nbUtilisation) VALUES ((SELECT IdCompte FROM COMPTE WHERE pseudo=?), NULL, 0)';
        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute(array($pseudo));
        }
        catch (PDOException $e) {
            return($e);
            die();
        }
    }

    function setBConnectBD($pseudo, $boolean){
        require ("./modele/connect.php");
        $sql = "UPDATE compte SET bConnecte =:val
        WHERE pseudo=:utilisateurPseudo";
    
        try {
            $commande = $pdo->prepare($sql);
            $commande->bindParam(':val', $boolean);
            $commande->bindParam(':utilisateurPseudo', $pseudo);
            $bool = $commande->execute();	
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die();
        }
    }

    function recupMdpBD($pseudo) {
        require ("./modele/connect.php");
        $sql = "SELECT mdp FROM compte WHERE pseudo=?";
        $resultat = array();
        try{
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute(array($pseudo));
            if($bool){
                $resultat = $commande->fetch(PDO::FETCH_ASSOC);
                if ($resultat == false) {
                    return("");
                }
                else {
                    return($resultat['mdp']);
                }
            }
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die(); 
        }
    }



    function pseudoDejaPrisBD($pseudo){
        require ("./modele/connect.php");

        $sql = "SELECT pseudo FROM compte WHERE pseudo=?";
        $resultat = array();
        try{
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute(array($pseudo));
            if($bool){
                $resultat = $commande->fetch(PDO::FETCH_ASSOC);
                if ($resultat == false) {
                    return(false);
                }
                else {
                    return(true);
                }
            }
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die(); 
        }
    }

    

    function emailDejaUtiliseBD($email){
        require ("./modele/connect.php");

        $sql = "SELECT mail FROM compte WHERE mail=?";
        $resultat = array();
        try{
            $commande = $pdo->prepare($sql);
            
            $bool = $commande->execute(array($email));
            if($bool){
                $resultat = $commande->fetch(PDO::FETCH_ASSOC);
                if ($resultat == false) {
                    return(false);
                }
                else {
                    return(true);
                }
            }
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die(); 
        }
    }

    function pseudoInexistantBD($pseudo){
        require ("./modele/connect.php");
        $sql = "SELECT pseudo FROM compte WHERE pseudo=?";
        $resultat = array();
        try{
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute(array($pseudo));
            if($bool){
                $resultat = $commande->fetch(PDO::FETCH_ASSOC);
                if ($resultat == false) {
                    return(true);
                }
                else {
                    return(false);
                }
            }
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die(); 
        }
    }

?>