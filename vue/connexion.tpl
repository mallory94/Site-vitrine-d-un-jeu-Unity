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
      <input type="text" placeholder="Pseudo" name="pseudo" required>

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder="Mot de passe" name="mdp" required>
        
      <button type="submit" class="btnConnexion majuscule" >Connexion</button>
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
