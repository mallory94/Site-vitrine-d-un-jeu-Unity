<?php

    function accueil(){
        require ("./vue/accueil.tpl");
    }

    function pageClassement(){
        //$listeCategories contient le nom des colonnes du classement
        $listeCategories;
        $nbCategories = count($listeCategories);
        
        $listeScores = getListeScores($listeCategories); 
        
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