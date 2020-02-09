<?php

    function accueil(){
        require ("./vue/accueil.tpl");
    }

    function redirectionClassement(){
        //$listeCategories contient le nom des colonnes du classement
        $listeCategories = array();
        $listeScores = getListeScores($listeCategories); 
        $nbCategories = count($listeCategories);
        var_dump($listeCategories);
        var_dump($listeScores);
        
        
        require ("./vue/classement.tpl");
    }

    function redirectionActualites(){
        require ("./vue/actualites.tpl");
    }

    function redirectionEncyclopedie(){
        require ("./vue/encyclopedie.tpl");
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