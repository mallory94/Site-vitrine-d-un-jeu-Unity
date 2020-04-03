<!doctype html>
<html>

<head>
    <title>Scénario</title>
    <link rel="stylesheet" href="vue/css/livre.css">
    <link href="https://fonts.googleapis.com/css?family=Luckiest+Guy&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <script src="vue/js/livre.js"></script>
    <link rel="stylesheet" href="./vue/css/static_menu.css">
    <link rel="stylesheet" href="./vue/css/scenario.css">
</head>

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
            
          </ul>
        </div>

</header>

<body>
    <div class="book">
        <div id="pages" class="pages">
            <div class="page" style="z-index:12;">
                <h1 style="line-height: 2.5em;"> Bienvenue dans l'univers<br>d'U.M.S.I !<br>Découvrez leur histoire</h1>
            </div>
            <div class="page" style="background-image : url(vue/images/persos.png); background-repeat:no-repeat; background-position: center; background-size: 100%; "></div>
            <div class="page" style="z-index:10;">
                <h1><br>Chapitre 1</h1>
                <br>
                <h2>Situation initiale </h2>
                <br>
                <p>Dans une petite ville d'Amérique du Nord, vit Mme.Enokson, une scientifique expérimentée et connue pour ses idées farfelues. Depuis son plus jeune âge, elle aime tenter l’impossible et l’inaccessible. Quelques années plus tard, elle décide de créer des trous de vers artificiels. Pour l’aider dans sa quête, elle embauche un stagiaire, en l'occurrence vous, afin de réaliser ces expériences. </p>
            </div>
            <div class="page" style="background-image : url(vue/images/essai.png); background-repeat:no-repeat; background-position: center; background-size: 90%; "></div>
            <div class="page" style="z-index:8;">
                <h1><br>Chapitre 2</h1>
                <br>
                <h2>Péripéties</h2>
                <br>
                <p>
                    Après de longues et rudes semaines de recherche, vous finissez par enfin créer ce qui semble être le tout premier trou de vers stable. Tout semble se dérouler comme prévu, lorsque tout à coup, le portail laisse échapper des créatures venant d’une toute autre dimension. La professeure comprend alors que vous vous êtes malencontreusement trompés… </p>
            </div>
            <div class="page" style="background-image : url(vue/images/all.png); background-repeat:no-repeat; background-position: center; background-size: 100%; "></div>
            <div class="page" style="z-index:6;">
                <h1><br>Chapitre 3</h1>
                <br>
                <h2>Mission </h2>
                <br>
                <p>Désormais, la professeure et vous-même allez tenter de réparer vos erreurs. Vous allez devoir placer des tourelles pour défendre le laboratoire et empêcher les ennemis de franchir le portail et réduire à néant votre dur travail.
                    <p id="question" style="font-size:22px"><b><i>Serez-vous à la hauteur pour empêcher ces ennemis de vous détruire ?</b></i>
                    </p>
                </p>
            </div>
            <div class="page ">
                <h1 id="titreDernierePage" style="line-height: 1.5em; padding : 100px 25px 12px 23px;">
               Mme. Enokson compte sur vous !  
               <h1>
            </div>
         </div>
      </div>
   </body>
</html>