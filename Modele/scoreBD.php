<?php




// function getListeCategoriesBD(){
// 	require ("./modele/connect.php"); 

//     $sql = "SELECT column_name 
//     FROM information_schema.columns 
//     WHERE table_name='score' 
//     AND table_schema='base-pjs4'";
    
//     $resultat= array();

// 	try{
// 		$commande = $pdo->prepare($sql);
// 		$bool = $commande->execute();
		
// 		if($bool){
// 			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
// 			//var_dump($resultat);
// 			return $resultat;
// 		}
// 		else{
// 			return array();
// 		}

// 	}
// 	catch (PDOException $e) {
// 		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
// 		die(); 
// 	}
// }




//prend en parametre un tableau que la fonction rempli avec le nom des colonnes
function getListeScoresBD(&$listeCategories){
	require ("../modele/connect.php"); 

    $sql = "SELECT c.pseudo as Pseudo, niv.nomNiv as Niveau, s.meilleurScore as MeilleurScore, s.nbMonstresTues as ,
			s.tpsJeu, s.dernierScore
			FROM SCORE as s , JOUEUR as j, NIVEAU as niv, COMPTE c
			WHERE 
				s.IdJoueur = j.IdJoueur AND
				j.IdCompte = c.IdCompte AND
				s.IdNiveau = niv.IdNiveau
			ORDER BY s.meilleurScore DESC";
    
	$resultat= array();
	
	try{
		$commande = $pdo->prepare($sql);
		$bool = $commande->execute();
		
		if($bool){
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
			$listeCategories = array("Pseudo", "Niveau", "Meilleur Score", "Nombre de monstres tués", "Temps de jeu total", "Dernier score enregistré");
			var_dump($resultat);
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