<?php

    function accueil(){
        require ("./vue/accueil.tpl");
    }

    function pageClassement(){
        
    }


    function getListeCategorie(){
        require (getListeCategorieBD());
    }


?>