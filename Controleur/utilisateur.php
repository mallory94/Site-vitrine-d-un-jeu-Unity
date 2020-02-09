<?php

    function accueil(){
        require ("./vue/accueil.tpl");
    }

    function pageClassement(){
        $listeCategorie = getListeCategories();
        $listeScores = getListeScores();
        require ("./vue/classement.tpl");
    }


    function getListeCategories(){
        require ("./modele/scoreBD.php");
        return getListeCategoriesBD();
    }

    function getListeScores(){
        require ("./modele/scoreBD.php");
        return getListeScoreBDs();
    }


?>