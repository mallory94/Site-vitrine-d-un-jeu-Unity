<?php

    function accueil(){
        require ("./vue/accueil.tpl");
    }

    function pageClassement(){
        require ("./vue/classement.tpl");
    }


    function getListeCategorie(){
        require ("./modele/scoreBD");
        return getListeCategorieBD();
    }

    function getListeScore(){
        require ("./modele/scoreBD");
        return getListeScoreBD();
    }


?>