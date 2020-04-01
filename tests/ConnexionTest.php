<?php

use PHPUnit\Framework\TestCase;

class ConnexionTest extends TestCase  {

    public function testMdpDifferents(){
        require("../../controleur/utilisateur.php");
        $this->assertFalse(mdpDifferents("oh","oh"));
    }
}



?>