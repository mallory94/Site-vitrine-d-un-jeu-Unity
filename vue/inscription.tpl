<!DOCTYPE html>
<html>
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"  />
		<link rel = "stylesheet" type="text/css" href="./vue/css/inscription.css"/>

<body>
    


<div id="id01" class="modal">
<div id="titreInscription" class="majuscule centrer">S'inscrire</div>
  <form class="modal-content" action="/action_page.php">
    <div class="container">
    
      
      <p class="centrer">Veuillez remplir ce formulaire pour vous inscrire.</p>
      <hr>
        
      <label for="email"><b>Pseudo</b></label>
      <input type="text" placeholder="Entrer un mail" name="email" required>
        
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Entrer votre email" name="email" required>

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder="Entrer un mot de passe" name="mdp" required>

      <label for="psw-repeat"><b>Confirmation du mot de passe</b></label>
      <input type="password" placeholder="Confirmer votre mot de passe" name="mdp_bis" required>
      
      <!-- <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label> -->

      <p class="termesConditions">En créeant un compte vous acceptez nos <br><a href="#" style="color:dodgerblue">Termes et Conditions</a>.</p>

      <div class="clearfix">
        <a href="./index.php"><button type="button" class="btnAnnuler majuscule">Annuler</button></a>
        <button type="submit" class="btnInscription majuscule">S'enregistrer</button>
      </div>
    </div>
  </form>
</div>
<script type="text/javascript" src="./vue/js/inscription.js"></script>

</body>
</html>
