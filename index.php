<?php 
    if (!isset($_SESSION['connecte'])){
        session_start();
        $_SESSION['connecte'] = "";
    }

    if (isset($_GET['controleur']) & isset($_GET['action'])) {
 	    $controle = $_GET['controleur'];
	    $action= $_GET['action'];
    }
    else { //absence de paramètres : prévoir des valeurs par défaut
	    $controle = "utilisateur";
	    $action= "accueil";
    }
    
    //inclure le fichier php de contrôle 
    //et lancer la fonction-action issue de ce fichier.	

	require ('./controleur/' . $controle . '.php');   
    $action ();
?>