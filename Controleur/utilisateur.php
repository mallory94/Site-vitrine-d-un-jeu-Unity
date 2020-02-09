<?php

    function accueil(){
        require ("./vue/accueil.tpl");
    }

    function pageClassement(){
        //$listeCategories contient le nom des colonnes du classement
        $listeCategories = array();
        $listeScores = getListeScores($listeCategories); 
        $nbCategories = count($listeCategories);
        var_dump($listeCategories);
        var_dump($listeScores);
        
        
        require ("./vue/classement.tpl");
    }


    function getListeCategories(){
        require ("./modele/scoreBD.php");
        return getListeCategoriesBD();
    }

    function getListeScores(&$listeCategories){
        require ("./modele/scoreBD.php");
        return getListeScoresBD($listeCategories);
    }


?>