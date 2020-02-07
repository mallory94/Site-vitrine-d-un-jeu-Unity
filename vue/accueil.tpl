<!doctype html>
<html class="no-js" lang="fr">
  <head>
    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Titre du document</title>
    <link rel="stylesheet" href="vue/css/knacss.css" media="all">
    <link rel="stylesheet" href="vue/css/styles.css" media="all">
    
    
    <link rel="stylesheet" href="vue/css/backgroundVideo.css" media="all">
    <link rel="stylesheet" href="vue/css/animistaFichierPourLettre.css" media="all">
    <link rel="stylesheet" href="vue/css/testMenu.css">
    <link rel="stylesheet" href="vue/css/accueil.css" media="all">
    <link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Signika+Negative&display=swap" rel="stylesheet">
  </head>
  <body>
  
  <header id="header" role="banner" class="pam">
      

      <div class="container">
          <ul class="menu">
            <li></li>
            <li></li>
            <li></li>
          </ul>
          <ul class="links">
            <li><a href='./index.php?controleur=utilisateur&pageClassement'>Classement</a></li>
            <li><a href="#">Actualités</a></li>
            <li><a href="#">Encyclopédie</a></li>
            <li><a href="#">Connexion</a></li>
            <li><a href="#">À propos</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
      <script type="text/javascript" src="vue/js/testMenu.js"></script>
    <!-- <nav id="navigation" role="navigation">
      <ul class="pam">
        <li class="pam inbl">Picon bière</li>
        <li class="pam inbl">Melfor</li>
        <li class="pam inbl">Carola</li>
        <li class="pam inbl">Kuglof</li>
        <li class="pam inbl">Wurscht</li>
      </ul>
    </nav> -->
  </header>

  <div class="espace-vide"></div>
  <!-- est situé hors du flux -->
  <video playsinline autoplay muted loop poster="vue/exempleVideo.jpg" id="bgvid">
    <source src="vue/exempleVideo.webm" type="video/webm">
    <source src="vue/exempleVideo.mp4" type="video/mp4">
  </video>

  <main id="main" role="main" class="pam">
    <!-- <p>TELECHARGER LE JEU</p> -->
    <div class="anim-object active telechargerJeu" id="letter-object">JOUER AU JEU</div>
    
  </main>

  </body>
</html>