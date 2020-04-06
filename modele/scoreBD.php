<?php




function getListeCategoriesBD()
{
	require("./modele/connect.php");

	$sql = "SELECT column_name 
    FROM information_schema.columns 
    WHERE table_name='score' 
    AND table_schema='base-pjs4'";

	$resultat = array();

	try {
		$commande = $pdo->prepare($sql);
		$bool = $commande->execute();

		if ($bool) {
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
			//var_dump($resultat);
			return $resultat;
		} else {
			return array();
		}
	} catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
	}
}




//prend en parametre un tableau que la fonction rempli avec le nom des colonnes

function getListeScoresBD()
{
	require("./modele/connect.php");

	$sql = "SELECT c.pseudo as pseudo, niv.nomNiv as niveau, s.meilleurScore as meilleurScore, s.nbMonstresTues as nbMonstresTues ,
			s.tpsJeu as tempsJeu, s.dernierScore as dernierScore
			FROM score as s , joueur as j, niveau as niv, compte as c
			WHERE 
				s.IdJoueur = j.IdJoueur AND
				j.IdJoueur = c.IdCompte AND
				s.IdNiveau = niv.IdNiveau
			ORDER BY s.meilleurScore DESC";

	$resultat = array();

	try {
		$commande = $pdo->prepare($sql);
		$bool = $commande->execute();

		if ($bool) {
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
			return $resultat;
		} else {
			return array();
		}
	} catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
	}
}



//////////////////////////////////////////////////////////////////////////////

//jsp si c'est utile 
function getTopics($id)
{
	require("./modele/connect.php");

	$sql = "SELECT * 
			FROM topics 
			WHERE IdTopics =:id";

	$resultat = array();

	try {
		$commande = $pdo->prepare($sql);

		$commande->bindParam(':id', $id);
		$bool = $commande->execute();

		if ($bool) {
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
		}
	} catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
	}

	return $resultat[0];
}


//renvoit la liste de tous les noms des topics
function topicsBD()
{
	require("./modele/connect.php");
	$res = array();

	$sql = "SELECT distinct nomT from topics";

	$reponse = $pdo->query($sql);
	while ($donnees = $reponse->fetch()) {
		$res[] = $donnees['nomT'];
	}
	$reponse->closeCursor();
	return $res;
}

//liste des tourelles 
function getListeTourellesBD()
{
	require("./modele/connect.php");

	$sql = "SELECT IdTourelles as Tourelles , imgTourelle as Image, nomTourelles as Nom, degats as Degats, vitesseT as Vitesse
			FROM tourelles";

	$resultat = array();

	try {
		$commande = $pdo->prepare($sql);
		$bool = $commande->execute();

		if ($bool) {
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
			var_dump($resultat);
			return $resultat;
		} else {
			return array();
		}
	} catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
	}
}

//liste des monstres
function getListeMonstresBD()
{
	require("./modele/connect.php");

	$sql = "SELECT IdMonstre as Monstre, imgMonstre as Image, nomMonstre as Nom, typeMonstre as Type, vitesseM as Vitesse
			FROM monstres";

	$resultat = array();

	try {
		$commande = $pdo->prepare($sql);
		$bool = $commande->execute();

		if ($bool) {
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
			var_dump($resultat);
			return $resultat;
		} else {
			return array();
		}
	} catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
	}
}

//liste des niveaux
function getListeNiveauBD()
{
	require("./modele/connect.php");

	$sql = "SELECT IdNiveau as Niveau, imgNiv as Image, nbMonstres as NombreMonstres, nomNiv as Nom
			FROM niveau";

	$resultat = array();

	try {
		$commande = $pdo->prepare($sql);
		$bool = $commande->execute();

		if ($bool) {
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
			var_dump($resultat);
			return $resultat;
		} else {
			return array();
		}
	} catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
	}
}

//fonction qui insère un nouveau test dans la base de données
// function insererMAJ($id_admin,$titre_maj){
// require ("./modele/connect.php"); 
// $resultat_reponse= array(); 
// $date = date("Y-m-d");
// $select_reponse="INSERT INTO maj (IdMAJ,description,titre,dateM,IdAdmin) VALUES (0,:,:num_grpe,:titre_test,:date,1)"; 
////	ici la valeur 0 permet d'auto incrémenter dans la colonne id_test
// $cde_question = $pdo->prepare($select_reponse);

// $b_question = $cde_question->execute(array(
// 'id_prof' => $id_prof,
// 'num_grpe' => $num_grpe,
// 'titre_test' => $titre_test,
// 'date' => $date
// )
// );
// }

//creation maj
function creerMAJ($idM, $description, $titre)
{
	require("./modele/connect.php");
	$date = date("Y-m-d");
	$sql = "INSERT INTO maj (IdMAJ,description,titre,dateM) VALUES (0, :description, :titre, :date)";

	$creer = $pdo->prepare($sql);
	$creer->bindParam(':IdMAJ', $idM);
	$creer->bindParam(':description', $description);
	$creer->bindParam(':titre', $titre);
	$creer->bindParam(':dateM', $date);
	$creer->execute();
}

//creation topics
function creerTopicsBD($idT, $nomT, $texte)
{
	require("./modele/connect.php");
	$sql = "INSERT INTO topics (IdTopics,nomT,texte) VALUES (0, :nomT, :texte)";

	$creer = $pdo->prepare($sql);
	$creer->bindParam(':IdTopics', $idT);
	$creer->bindParam(':nomT', $nomT);
	$creer->bindParam(':texte', $texte);
	$creer->execute();
}



function enregistrerNouveauScoreBD($IdJoueur, $IdNiveau, $dernierScore, $nbMonstresTues, $tpsJeu, $meilleurScore)
{
	require("./modele/connect.php");
	$sql = "INSERT INTO joueur (IdJoueur, derniereUtilisation, nbUtilisation )VALUES (?,CURRENT_DATE,?)";
	$sql2 = "INSERT INTO score (IdJoueur, IdNiveau, dernierScore, nbMonstresTues, tpsJeu, meilleurScore) VALUES (?,?,?,?,?,?)";
	try {
		$commande = $pdo->prepare($sql);
		$bool = $commande->execute(array($IdJoueur, 1));
		$commande2 = $pdo->prepare($sql2);
		$bool2 =  $commande2->execute(array($IdJoueur, $IdNiveau, $dernierScore, $nbMonstresTues, $tpsJeu, $meilleurScore));
		if (!$bool) {
			$sql4 = "UPDATE  joueur set nbUtilisation=nbUtilisation+1 where IdJoueur=?";
			$commande4 = $pdo->prepare($sql4);
			$bool4 = $commande4->execute(array($IdJoueur));
		}
		if (!$bool2) {
			$sql3 = "UPDATE score set IdNiveau=?,dernierScore=?,nbMonstresTues=?,tpsJeu=?,meilleurScore=? where IdJoueur=?";
			$commande3 = $pdo->prepare($sql3);
			$bool3 =  $commande3->execute(array($IdNiveau, $dernierScore, $nbMonstresTues, $tpsJeu, $meilleurScore, $IdJoueur));
		}


		var_dump("salut");
	} catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
	}
	return;
}
