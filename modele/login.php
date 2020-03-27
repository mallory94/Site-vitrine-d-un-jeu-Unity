<?php
function logingame()
{


    require("connect.php");
    $username = $_GET["uname"];
    $password = $_GET["psw"];




    $sql_login = "SELECT * FROM compte where pseudo=? and mdp=?";
    $sql_score = "SELECT meilleurScore FROM score where pseudo=? and mdp=?";
    $resultat = array();

    try {

        $commande = $pdo->prepare($sql_login);
        $commande2 = $pdo->prepare($sql_score);

        $bool = $commande->execute([$username, $password]);
        $bool2 = $commande2->execute([$username, $password]);

        if ($bool) {
            $resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
            $_SESSION['username'] = $username;
            $_SESSION['password'] = $password;
            $_SESSION['name'] = $resultat[0]['prenom'];
            if ($bool2) {
                $bestscore = $commande2->fetchAll(PDO::FETCH_ASSOC);
                $_SESSION['bestscore'] = $resultat[0]['meilleurScore'];
            } else {
                $score = 0;
                $_SESSION['bestscore'] = 0;
            }
        } else {
            print_r("pas trouvé");
            return;
        }
    } catch (PDOException $e) {
        echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
        die();
    }
    //echo "connexion reussie";
    //var_dump($resultat);
    $retour = array();
    $retour[0] = $resultat[0]['prenom'];
    $retour[1] = $score;
    print_r($retour[0] . " " . $retour[1]);
}
