<?php
function logingame()
{


    require("connect.php");
    $username = $_GET["uname"];
    $password = $_GET["psw"];

    require_once("./modele/utilisateurBD.php");

    if (password_verify($password, recupMdpBD($username))) {
        $boool = true;
    } else {
        $boool = false;
    }
    //var_dump($boool);

    if ($boool) {


        $sql_login = "SELECT * FROM compte where pseudo=? and mdp=?";
        $sql_score = "SELECT * FROM score s INNER JOIN compte c ON c.IdCompte=s.IdJoueur where pseudo=? and mdp=?";
        $resultat = array();

        try {

            $commande = $pdo->prepare($sql_login);
            $commande2 = $pdo->prepare($sql_score);

            $bool = $commande->execute([$username, recupMdpBD($username)]);
            $bool2 = $commande2->execute([$username, recupMdpBD($username)]);

            if ($bool) {
                $resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
                $_SESSION['username'] = $username;
                $_SESSION['password'] = $password;
            } else {
                print_r("pas trouvé");
                return;
            }
            $retour2 = $resultat;
            $bestscore = $commande2->fetchAll(PDO::FETCH_ASSOC);
            if ($bestscore == null) {
                $sql_newscore = "INSERT INTO score(IdJoueur,IdNiveau,dernierScore,nbMonstresTues,tpsJeu,meilleurScore) VALUES(?,1,0,0,0,0)";
                $commande3 = $pdo->prepare($sql_newscore);

                $bool3 = $commande3->execute([$retour2[0]['IdCompte']]);
                $score = 0;
                $_SESSION['bestscore'] = 0;
            } else {


                $score = $bestscore[0]['meilleurScore'];
            }
        } catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die();
        }
        //echo "connexion reussie";

        $retour = array();
        $retour[0] = $resultat[0]['pseudo'];
        $retour[1] = $score;

        $retour2 = $resultat;
        print_r($retour[0] . " " . $retour[1] . " ");
        print_r($retour2[0]['IdCompte'] . " " . $retour2[0]['mail'] . " " . $password . " " . $retour2[0]['pseudo'] . " " . $retour2[0]['statut'] . " " . $retour2[0]['bConnecte'] . " ");
        if ($bool2) {
            print_r($bestscore[0]['IdJoueur'] . " " . $bestscore[0]['IdNiveau'] . " " . $bestscore[0]['dernierScore'] . " " . $bestscore[0]['nbMonstresTues'] . " " . $bestscore[0]['tpsJeu'] . " " . $bestscore[0]['meilleurScore']);
        } else {
            print_r($retour2[0]['IdCompte'] . " 1 0 0 0 0");
        }
    } else {
        print_r("Veuillez vous inscrire d abord");
    }
}
