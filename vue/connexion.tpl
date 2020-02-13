<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel = "stylesheet" type="text/css" href="./vue/css/connexion.css"/>
<style>

</style>
</head>
<body>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php" method="post">
  

    <div class="container">
      <label for="uname"><b>Pseudo</b></label>
      <input type="text" placeholder="Entrer pseudo" name="uname" required>

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder="Enter Pas" name="psw" required>
        
      <button type="submit">Connexion</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Pas de compte ? <a href="./index.php?controleur=utilisateur&action=redirectionInscription">s'incrire</a>    |   <a href="#">Mot de passe oublié ?</a></span>
    </div>
  </form>
</div>



</body>
</html>
