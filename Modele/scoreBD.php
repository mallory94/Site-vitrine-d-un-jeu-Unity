<?php

function getListeCategorieBD(){
	require ("../modele/connect.php"); 

    $sql = "SELECT column_name 
    FROM information_schema.columns 
    WHERE table_name='score' 
    AND table_schema='base-pjs4'";
    
    $resultat= array();

	try{
		$commande = $pdo->prepare($sql);
        $commande->bindParam(':idTest', $id_test);
		$bool = $commande->execute();
		
		if($bool){
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
			//var_dump($resultat);
			return $resultat;
		}
		else{
			return array();
		}

	}
	catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die(); 
	}
}





function getListeScoreBD(){
	require ("../modele/connect.php"); 

    $sql = "SELECT column_name 
    FROM information_schema.columns 
    WHERE table_name='score' 
    AND table_schema='base-pjs4'";
    
    $resultat= array();

	try{
		$commande = $pdo->prepare($sql);
        $commande->bindParam(':idTest', $id_test);
		$bool = $commande->execute();
		
		if($bool){
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
			//var_dump($resultat);
			return $resultat;
		}
		else{
			return array();
		}

	}
	catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die(); 
	}
}
?>