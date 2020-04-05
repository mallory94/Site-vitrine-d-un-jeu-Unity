<?php

/* DEBUT API PRIVEE */


function enregistrerNouveauScore()
{
    require_once("./modele/scoreBD.php");

    enregistrerNouveauScoreBD(
        $_GET['idJoueur'],
        $_GET['idNiveau'],
        $_GET['dernierScore'],
        $_GET['nbMonstresTues'],
        $_GET['tpsJeu'],
        $_GET['meilleurScore']
    );
}

/* API FIN */
