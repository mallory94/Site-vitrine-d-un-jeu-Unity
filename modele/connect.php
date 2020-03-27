<?php
//Connexion à la base de donnée 

/*
	$hostname = "localhost";
	$base = "id12576817_umsi";
	$loginBD = "id12576817_umsi";
	$passBD = "root1234";
	$pdo = null;
*/
$hostname = "localhost";
$base = "base-pjs4";
$loginBD = "root";
$passBD = "";
$pdo = null;


try {
	$pdo = new PDO("mysql:server=$hostname; dbname=$base", "$loginBD", "$passBD");
} catch (PDOException $e) {
	die("Echec de connexion : " . $e->getMessage() . "\n");
}
