<!DOCTYPE HTML>

<html>
	<head>
		<title>A propos</title>
		<meta charset="utf-8" />
		<link rel="icon" type="image/png" href="./vue/images/icons/portail.png"/>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="./vue/css/aProposAnimationText.css" />
		<link rel="stylesheet" href="./vue/css/aProposMain.css" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
		<link rel="stylesheet" href="./vue/css/static_menu.css">
		<link rel="stylesheet" href="./vue/css/aPropos.css">
		<script type="text/javascript" src="./vue/js/aProposAnimation.js"></script>
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="./vue/js/static_menu.js"></script>
	
		
	</head>
	<body>
		<header>
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
                        <li><a href="./index.php?controleur=utilisateur&action=redirectionInscription">S\'inscrire</a></li>
                      ');
                }
              }
              else {
                echo('<li><a href="./index.php?controleur=utilisateur&action=redirectionConnexion">Connexion</a></li>
                      <li><a href="./index.php?controleur=utilisateur&action=redirectionInscription">S\'inscrire</a></li>
                    ');
              }
            ?>
            <li><a href="./index.php?controleur=utilisateur&action=redirectionAPropos">À propos</a></li>
            <li><a href="./index.php?controleur=utilisateur&action=redirectionContact">Contact</a></li>
            <li id="li-btnMenu"><a id="btnMenu">MENU</a></li>
          </ul>
        </div>
		</header>


		<!-- Banner -->

		
			<section id="banner">
			<div id="home-news">
				<div class="home_header">
					<span>Tout savoir</span>
					<strong>sur l'équipe</strong>
				</div>
				<div class="home_header">
					<span>A propos de</span>
					<strong>Nous</strong>
				</div>
				<div class="home_header">
					<span>Les</span>
					<strong>parents</strong>
					<span>d'UMSI</span>
				</div>
				</div>
			</section>
			

		<!-- One -->
			<section id="one" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2>Quelques informations sur nous</h2>
						<p> Notre équipe se compose de 7 humains fous spécialisés dans le développement web, de jeu vidéo et de graphisme. Notre objectif est de produire un jeu divertissant, vous faisant voyager dans une autre dimension.</p>
					</header>
					
				</div>
			</section>

		<!-- Two -->
			<section id="two" class="wrapper style1 special">
				<div class="inner">
					<header>
						<h2 class="titreU">Voici les parents de U.M.S.I</h2>
					
					</header>
					<div class="flex flex-4">
						<div class="box person">
							<div class="image round">
								<img src="./vue/images/Minh-Quan.png" alt="Person 1" />
							</div>
							<h3>Minh-Quân BUI</h3>
							<p> Développeur Unity Game Designer, level Designer</p>
						</div>
						<div class="box person">
							<div class="image round">
								<img src="./vue/images/Mallory.png" alt="Person 2" />
							</div>
							<h3>Mallory GACK</h3>
							<p>Développeur WEB full stack</p>
						</div>
						<div class="box person">
							<div class="image round">
								<img src="./vue/images/Anthony.png" alt="Person 3" />
							</div>
							<h3>Anthony REINO JOAQUIM</h3>
							<p>Game Designer & Développeur Unity</p>
						</div>
						<div class="box person">
							<div class="image round">
								<img src="./vue/images/Damien.png" alt="Person 4" />
							</div>
							<h3>Damien HUANG</h3>
							<p>Développeur Unity Back-end</p>
						</div>
						<div class="box person">
							<div class="image round">
								<img src="./vue/images/Marine.png" alt="Person 4" />
							</div>
							<h3>Marine MARSAL</h3>
							<p>Artiste & Développeuse Unity Intégration animation</p>
						</div>
						<div class="box person">
							<div class="image round">
								<img src="./vue/images/Tiffany.png" alt="Person 4" />
							</div>
							<h3>Tiffany HAIDARALY</h3>
							<p>Développeuse WEB & base de données</p>
						</div>
						<div class="box person">
							<div class="image round">
								<img src="./vue/images/Marie-Amelie.png" alt="Person 4" />
							</div>
							<h3>Marie-Amélie DUGRAIS</h3>
							<p>Cheffe de projet & développeuse WEB</p>
						</div>
					</div>
				</div>
			</section>

		<!-- Three -->
			<section id="three" class="wrapper special">
				<div class="inner">
					
					
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex">
						<div class="copyright">
							
				</div>
			</footer>

		<!-- Scripts -->
			<script src="./vue/js/jquery.min.js"></script>
			<script src="./vue/js/skel.min.js"></script>
			<script src="./vue/js/util.js"></script>
			<script src="./vue/js/main.js"></script>

	</body>
</html>