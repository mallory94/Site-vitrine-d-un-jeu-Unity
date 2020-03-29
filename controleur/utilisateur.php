<?php




function inscrire($infos)
{
    require_once("./modele/utilisateurBD.php");
    var_dump($infos);
    inscrireBD($infos, "Joueur");
}

function connecte($pseudo)
{
    require_once("./modele/utilisateurBD.php");
    $_SESSION['pseudo'] = $_POST['pseudo'];
    setBConnectBD($pseudo, true);
    $_SESSION['bConnect'] = true;
}

function deconnecte($pseudo)
{
    require_once("./modele/utilisateurBD.php");
    $_SESSION['bConnect'] = false;
    $_SESSION = array();
    setBConnectBD($pseudo, "0");
}

/* FONCTIONS DE VERIFICATION */

/* vérifie que les informations entrées lors de la connexion sont coérentes avec la base de données */
function verifConnexion()
{
    $_POST['options'] = array();

    if (pseudoInexistant($_POST['pseudo'])) {
        $_POST['options']['pseudoInexistant'] = true;
    }
    if (mdpIncorrect($_POST['pseudo'], $_POST['mdp'])) {
        $_POST['options']['mdpIncorrect'] = true;
    }
    if (count($_POST['options']) == 0) {
        connecte($_POST['pseudo']);
        accueilApresConnexion();
        var_dump("vous êtes connecté");
    } else {
        redirectionConnexion();
    }
}

/* vérifie que les informations entrées lors de l'inscription sont coérentes entre elles mais aussi avec la base de données */
function verifInscription()
{

    //$options est un tableau qui spécifie les erreurs lors d'une inscription.
    $_POST['options'] = array();
    if (mdpDifferents()) {
        $_POST['options']['mdpDifferents'] = true;
    }
    if (pseudoDejaPris()) {
        $_POST['options']['pseudoDejaPris'] = true;
    }
    if (emailDejaUtilise()) {
        $_POST['options']['emailDejaUtilise'] = true;
    }
    if (count($_POST['options']) == 0) {
        $infos = $_POST;
        $infos['mdp'] = password_hash($infos['mdp'], PASSWORD_DEFAULT);
        inscrire($infos);
        connecte($_POST['pseudo']);
        accueilApresInscription();
    } else {
        redirectionInscription();
    }
}

function mdpDifferents()
{
    return ($_POST['mdp'] != $_POST['mdp_bis']);
}

function pseudoDejaPris()
{
    require_once("./modele/utilisateurBD.php");
    return pseudoDejaPrisBD($_POST['pseudo']);
}

function emailDejaUtilise()
{
    require_once("./modele/utilisateurBD.php");
    return (emailDejaUtiliseBD($_POST['email']));
}

function mdpIncorrect($pseudo, $mdpSaisi)
{
    require_once("./modele/utilisateurBD.php");
    return (!password_verify($mdpSaisi, recupMdpBD($pseudo)));
}

function pseudoInexistant($pseudo)
{
    require_once("./modele/utilisateurBD.php");
    return pseudoInexistantBD($pseudo);
}

/* FIN DES FONCTIONS DE VERIFICATION */










/* FONCTIONS DE REDIRECTIONS */


function accueil()
{
    require("./vue/accueil.tpl");
}

function redirectionClassement()
{
    require("./modele/scoreBD.php");


    //$listeCategories contient le nom des colonnes du classement
    //$listeCategoriesBD = getListeCategoriesBD();

    $listeScores = getListeScoresBD();
    $nbJoueurs = count($listeScores);

    $listeCategories = array();
    array_push($listeCategories, "Pseudo", "Niveau", "Dernier score", "Nombre de monstre tué", "Temps de jeu", "Meilleur score");
    $nbCategories = count($listeCategories);




    require("./vue/classement.tpl");
}

function redirectionActualites()
{
    require("./vue/actualites.tpl");
}

function redirectionEncyclopedie()
{
    require("./vue/encyclopedie.tpl");
}

function redirectionAPropos()
{
    require("./vue/aPropos.tpl");
}

function redirectionContact()
{
    require("./vue/contact.tpl");
}

function redirectionConnexion()
{
    require("./vue/connexion.tpl");
}

function redirectionInscription()
{
    require("./vue/inscription.tpl");
}

function redirectionScenario()
{
    require("./vue/scenario.tpl");
}

function accueilApresInscription()
{
    $options['provenance'] = "inscription";
    header("Location:index.php");
}

function accueilApresDeconnexion()
{
    if (count($_SESSION) != 0) {
        deconnecte($_SESSION['pseudo']);
        $options['provenance'] = "deconnexion";
    }
    header("Location:index.php");
    // require ("./vue/accueil.tpl");
}

function accueilApresConnexion()
{
    $options['provenance'] = "connexion";

    header("Location:index.php");
}
function getlogingame()
{
    require("./Modele/login.php");
    return logingame();
}

function getListeCategories()
{
    require_once("./Modele/scoreBD.php");
    return getListeCategoriesBD();
}

function getListeScores(&$listeCategories)
{
    require_once("./Modele/scoreBD.php");
    return getListeScoresBD($listeCategories);
}


    


?>

