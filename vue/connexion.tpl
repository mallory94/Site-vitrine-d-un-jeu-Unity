<!DOCTYPE html>
<html>
<head>
    <title>Se connecter</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "stylesheet" type="text/css" href="./vue/css/connexion.css"/>
</head>

<body>

<div id="id01" class="modal">
<div class="majuscule" id="titre" >se connecter</div>
  <form class="modal-content animate" action="./index.php?controleur=utilisateur&action=verifConnexion" method="post">
  
    
    <div class="container">
      <label for="uname"><b>Pseudo</b></label>
      <input type="text" placeholder=
      <?php
        if (isset($_POST['options']['pseudoInexistant'])) {
					if ($_POST['options']['pseudoInexistant']) {
            echo("\"Pseudo inexistant\"" . " class=\"rouge\"");
          }
          else {
            echo("\"Pseudo\"");
          }
        }
        else {
          echo("\"Pseudo\"");
        }
      ?>
      
      name="pseudo" required>

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder=
      <?php
        $pseudoInexistant = isset($_POST['options']['pseudoInexistant']) && $_POST['options']['pseudoInexistant'];
        if (isset($_POST['options']['mdpIncorrect'])) {
          if ($_POST['options']['mdpIncorrect'] && ($pseudoInexistant == false)) {
            echo("\"Mot de passe incorrect\"" . " class=\"rouge\"");
          }
          else {
            echo("\"Mot de passe\"");
          }
        }
        else {
          echo("\"Mot de passe\"");
        }
      ?>
       name="mdp" required>
        
      <button type="submit" class="btnConnexion majuscule">Connexion</button>
      <!-- <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label> -->
    </div>

    <div class="container">
    <a href="./index.php?controleur=utilisateur&action=accueil"><button type="button" class="btnAnnuler majuscule">Annuler</button></a>
      <span class="psw">Pas de compte ? <a href="./index.php?controleur=utilisateur&action=redirectionInscription">s'incrire</a>    |   <a href="#">Mot de passe oublié ?</a></span>
    </div>
  </form>
</div>


</body>

</html>
