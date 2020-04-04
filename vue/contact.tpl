<!DOCTYPE html>
<html >
<head>
	<title>Contact</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="./vue/images/icons/portail.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./vue/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./vue/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./vue/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./vue/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./vue/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./vue/css/contactUtil.css">
	<link rel="stylesheet" type="text/css" href="./vue/css/contactMain.css">
	<link rel="stylesheet" type="text/css" href="./vue/css/contact.css">
	<link rel="stylesheet" href="./vue/css/static_menu.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="./vue/js/static_menu.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Luckiest+Guy&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<!--===============================================================================================-->
</head>
<body>
	<header id="menu">
		<div class="container">
          
          <ul class="links active_links">
            <li><a href="./index.php">Accueil</a></li>
            <li><a href="./index.php?controleur=utilisateur&action=redirectionClassement">Classement</a></li>
            <li><a href="./index.php?controleur=utilisateur&action=redirectionActualites">Actualités</a></li>
            <li><a href="./index.php?controleur=utilisateur&action=redirectionScenario">Scénario</a></li>
            <li><a href="./index.php?controleur=utilisateur&action=redirectionEncyclopedie">Encyclopédie</a></li>
            <?php 
              if (isset($_SESSION['bConnect'])){
                if ($_SESSION['bConnect']) {
                  echo('<li><a href="./index.php?controleur=utilisateur&action=accueilApresDeconnexion">Déconnexion</a></li>');
                }
                else {
                  echo('<li><a href="./index.php?controleur=utilisateur&action=redirectionConnexion">Connexion</a></li>
                        <li><a href="./index.php?controleur=utilisateur&action=redirectionInscription">Inscription</a></li>
                      ');
                }
              }
              else {
                echo('<li><a href="./index.php?controleur=utilisateur&action=redirectionConnexion">Connexion</a></li>
                      <li><a href="./index.php?controleur=utilisateur&action=redirectionInscription">Inscription</a></li>
                    ');
              }
            ?>
            <li><a href="./index.php?controleur=utilisateur&action=redirectionAPropos">À propos</a></li>
            <li><a href="./index.php?controleur=utilisateur&action=redirectionContact">Contact</a></li>
            <li id="li-btnMenu"><a id="btnMenu">MENU</a></li>
          </ul>
        </div>
		</header>
	<div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form validate-form">
					<span class="contact2-form-title">
						Contactez nous
					</span>

					<div class="wrap-input2 validate-input" data-validate="Un nom est nécessaire">
						<input class="input2" type="text" name="name">
						<span class="focus-input2" data-placeholder="NOM"></span>
					</div>

					<div class="wrap-input2 validate-input" data-validate = "Un email valide est requis: ex@abc.xyz">
						<input class="input2" type="text" name="email">
						<span class="focus-input2" data-placeholder="EMAIL"></span>
					</div>

					<div class="wrap-input2 validate-input" data-validate = "Un message est nécessaire">
						<textarea class="input2" name="message"></textarea>
						<span class="focus-input2" data-placeholder="MESSAGE"></span>
					</div>
					
					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
							
								<button class="contact2-form-btn">
									Envoyer le message
								</button>
						</div>
					</div>
					<a href="./index.php"  class="btn btn-default btnRetour">Retour</a>
				</form>
				
			</div>
		</div>
		
	</div>




<!--===============================================================================================-->
	<script src="./vue/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="./vue/vendor/bootstrap/js/popper.js"></script>
	<script src="./vue/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="./vue/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="./vue/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>

</body>
</html>
