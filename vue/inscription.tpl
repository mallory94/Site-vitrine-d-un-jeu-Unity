<!DOCTYPE html>
<html>
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"  />
		<link rel = "stylesheet" type="text/css" href="./vue/css/inscription.css"/>

<body>
    


<div id="id01" class="modal">
  <form class="modal-content" action="/action_page.php">
    <div class="container">
    
      <h1>Inscription</h1>
      <p>Veuillez remplir ce formulaire pour vous inscrire.</p>
      <hr>
        
      <label for="email"><b>Pseudo</b></label>
      <input type="text" placeholder="Entrer un pseudo" name="email" required>
        
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Entrer un pseudo" name="email" required>

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder="Entrer un pseudo" name="psw" required>

      <label for="psw-repeat"><b>Confirmation du mot de passe</b></label>
      <input type="password" placeholder="Confirmer mot de passe" name="psw-repeat" required>
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <a href="./index.php"><button type="button" class="cancelbtn">Cancel</button></a>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>
<script type="text/javascript" src="./vue/js/inscription.js"></script>

</body>
</html>
