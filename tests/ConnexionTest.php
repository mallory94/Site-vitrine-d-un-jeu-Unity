<?php

use PHPUnit\Framework\TestCase;

class ConnexionTest extends TestCase  {

    

    

    public function test_mdpDifferents(){
        chdir("../../");
        echo ("répertoire courant = " . getcwd());
        require_once("./controleur/utilisateur.php");
        $this->assertFalse(mdpDifferents("oh","oh"));
    }
    
    public function test_pseudoInexistant(){
        chdir("../../");
        $this->assertFalse(pseudoInexistant("Coop3"));
    }

    public function test_emailDejaUtilise(){
        chdir("../../");
        require_once("./controleur/utilisateur.php");
        $this->assertTrue(emailDejaUtilise("gare@gmail.com"));
    }

    public function test_pseudoDejaPris(){
        chdir("../../");
        require_once("./controleur/utilisateur.php");
        $this->assertTrue(pseudoDejaPris("Coop3"));
    }

    public function test_recupMdpBD(){
        chdir("../../");
        require_once("./controleur/utilisateur.php");
        $this->assertEquals(recupMdpBD("Coop3"), "OJ8UHN3D0");
    }

    // public function test_(){
    //     chdir("../../");
    //     require_once("./controleur/utilisateur.php");
    //     $this->assert
    // }
    
    


}



?>