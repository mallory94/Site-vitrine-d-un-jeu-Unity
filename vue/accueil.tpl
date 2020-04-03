<!doctype html>
<html class="no-js" lang="fr">
  <head>
    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Accueil</title>
    <script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  <link rel="icon" type="image/png" href="./vue/images/icons/portail.png"/>
    <link rel="stylesheet" href="vue/css/knacss.css" media="all">
    <link rel="stylesheet" href="vue/css/styles.css" media="all">
    
    
    <link rel="stylesheet" href="vue/css/backgroundVideo.css" media="all">
    <link rel="stylesheet" href="vue/css/animistaFichierPourLettre.css" media="all">
    <link rel="stylesheet" href="vue/css/menu.css">
    <link rel="stylesheet" href="vue/css/accueil.css" media="all">
    <link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Signika+Negative&display=swap" rel="stylesheet">
  </head>
  <body>
  
  <header id="header" role="banner" class="pam">
      

      <div class="container">
          <ul id="menu" class="menu">
            <li></li>
            <li></li>
            <li></li>
          </ul>
          <ul class="links">
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
            
          </ul>
        </div>
      <script type="text/javascript" src="vue/js/menu.js"></script>

  </header>

  <div class="espace-vide"></div>
  <!-- est situé hors du flux -->
  <video playsinline autoplay muted loop poster="vue/exempleVideo.jpg" id="bgvid">
    <source src="vue/exempleVideo.webm" type="video/webm">
    <source src="vue/exempleVideo.mp4" type="video/mp4">
  </video>

  <div id="btnTelechargerJeu" role="" class="pam">
    <!-- <p>TELECHARGER LE JEU</p> -->
    <div class="anim-object active telechargerJeu" id="letter-object">JOUER AU JEU</div>
    
  </div>

  </body>
</html>