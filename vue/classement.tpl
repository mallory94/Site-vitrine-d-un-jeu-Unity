
<!doctype html>
<html class="no-js website" lang="fr">

    <head>
        <title>Classement</title>
        <meta charset="UTF-8">
        <link rel="icon" type="image/png" href="./vue/images/icons/portail.png"/>
        <link href="https://fonts.googleapis.com/css?family=Luckiest+Guy&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        
        <link rel="stylesheet" href="./vue/css/classement.css">
        <link rel="stylesheet" href="./vue/css/static_menu.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="./vue/js/minitronRush.js"></script>
        
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



<div class="titreEtMinitron">
    <div id="titre">
        <div id="texteInterneTitre"><div class="lettresDevant">Cla</div><div class="lettresDerriere">sse</div><div class="lettresDevant">ment</div></div>
    </div>
    <img id="minitron" src="./vue/images/crop-img/crop-minitron.gif" alt="minitron" />
</div>
</header>
<body>
    
    <main id="main" role="main" class="main">
    <div class="divTable tableauClassement">
        <div class="divTableHeading">
            <div class="divTableRow">
                
                <?php for ($k = 0; $k < $nbCategories; ++$k) {
                    echo('<div class="divTableHead">' . $listeCategories[$k] . '</div>');
                }
                ?>
            </div>
        </div>
        <div class="divTableBody">
            <?php for ($k = 0; $k < $nbJoueurs; ++$k) {
                    echo('<div class="divTableRow">
                            <div class="divTableCell">' . $listeScores[$k]['pseudo'] . '</div>
                            <div class="divTableCell">' . $listeScores[$k]['niveau'] . '</div>
                            <div class="divTableCell">' . $listeScores[$k]['dernierScore'] . '</div>
                            <div class="divTableCell">' . $listeScores[$k]['nbMonstresTues'] . '</div>
                            <div class="divTableCell">' . $listeScores[$k]['tempsJeu'] . '</div>
                            <div class="divTableCell">' . $listeScores[$k]['meilleurScore'] . '</div>
                            </div>');
                    }
            ?>
                

    </div>
    </main>
<body>
    <footer class="footer full-bleed" role="contentinfo">
    Vous pensez voir une erreur dans le classement?<br>
    Contactez nous <a href="./index.php?controleur=utilisateur&action=redirectionContact">ici</a>
    </footer>
</html>
