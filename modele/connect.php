<?php
//Connexion à la base de donnée 

/*
	$hostname = "localhost";
	$base = "id12576817_umsi";
	$loginBD = "id12576817_umsi";
	$passBD = "root1234";
	$pdo = null;
*/
$hostname = "mysql";
$base = "base-pjs4";
$loginBD = "root";
$passBD = "root";
$pdo = null;


try {
	$pdo = new PDO("mysql:server=$hostname; dbname=$base", "$loginBD", "$passBD");
	echo("Connexion à la base de donnée effectuée");
} catch (PDOException $e) {
	die("Echec de connexion : " . $e->getMessage() . "\n Description =  " . $e->getTraceAsString() . "\n Code = " . $e->getCode() .
	"\n toString = " . $e->__toString() . "\n");
}