<?php

use PHPUnit\Framework\TestCase;

class ConnexionTest extends TestCase  {

    

    

    public function test_mdpDifferents(){
        // chdir("../../");
        echo("-------------------------------------\n\n");
        echo ("répertoire courant = " . getcwd() . "\n\n");
        require_once("./controleur/utilisateur.php");
        echo("lancement du test de la fonction mdpDifferents\n");
        $this->assertFalse(mdpDifferents("oh","oh"));
    }
    
    public function test_pseudoInexistant(){
        // chdir("../../");
        echo("lancement du test de la fonction pseudoInexistant\n");
        $this->assertFalse(pseudoInexistant("Coop3"));
    }

    public function test_emailDejaUtilise(){
        // chdir("../../");
        require_once("./controleur/utilisateur.php");
        echo("lancement du test de la fonction emailDejaUtilise\n");
        $this->assertTrue(emailDejaUtilise("gare@gmail.com"));
    }

    public function test_pseudoDejaPris(){
        // chdir("../../");
        require_once("./controleur/utilisateur.php");
        echo("lancement du test de la fonction pseudoDejaPris\n");
        $this->assertTrue(pseudoDejaPris("Coop3"));
    }

    public function test_recupMdpBD(){
        // chdir("../../");
        //require_once("./controleur/utilisateur.php");
        echo("lancement du test de la fonction recupMdpBD\n");
        $this->assertEquals(recupMdpBD("Coop3"), "OJ8UHN3D0");
        echo("-------------------------------------\n\n");
    }


}



?>