<!doctype html>
<html class="no-js" lang="fr">
   <head>
      <title>Encyclopédie</title>
      <link href="https://fonts.googleapis.com/css?family=Luckiest+Guy&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="vue/css/testReset.css" media="all">
      <link rel="stylesheet" href="vue/css/knacss.css" media="all">
      <link rel="stylesheet" href="vue/css/encyclopedieSchnaps.css">
      <link rel="stylesheet" href="vue/css/encyclopedie.css">
      <link rel="stylesheet" href="vue/css/encyclopedieCard.css">
      <link rel="stylesheet" href="./vue/css/static_menu.css">
      <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
      <script src="./vue/js/static_menu.js"></script>
   </head>
   <body onload="x=0" onkeydown="document.images[0].style.msTransform='rotate('+((x=++x%4)*90)+'deg)'">
      <div class="website">
         <header class="header" role="banner">
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
            <h1>ENCYCLOPEDIE</h1>
            <h1> Venez découvrir l'univers d'U.M.S.I</h1>
         </header>
         <br>
         <div class="slide-container">
            <div id='stars'></div>
            <div id='stars2'></div>
            <div id='stars3'></div>
            <div class="monstres" >
               <h1> MONSTRES </h1>
               <div class="wrapper">
                  <div class="clash-card fantome robot1">
                     <div class="clash-card__image  clash-card__image--minitron">
                        <img src="./vue/images/gifMonstres/robinet.gif" alt="minitron" />
                     </div>
                     <div class="clash-card__unit-name">Minitron</div>
                     <div class="clash-card__level clash-card__level--minitron">The small faster</div>
                     <div class="clash-card__unit-description">
                        Digne successeur de BB-8, rien ne lui échappe, sa rapidité est un atout incontestable. Et comme on dit : tout ce qui est petit est mignon mais tout ce qui est rapide est min...itron.
                     </div>
                     <div class="clash-card__unit-stats clash-card__unit-stats--minitron clearfix">
                        <div class="centrer">
                           <div class="one-third">
                              <div class="stat">❤️</div>
                              <div class="stat-value">santé</div>
                           </div>
                           <div class="one-third no-border">
                              <div class="stat">➕➕➕</div>
                              <div class="stat-value">vitesse</div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- end clash-card fantome-->
               </div>
               <!-- end wrapper -->
               <div class="wrapper">
                  <div class="clash-card">
                     <div class="clash-card__image clash-card__image--mediatron clash-card__image--rose_peche">
                        <img src="./vue/images/gifMonstres/robot2.gif" alt="mediatron" />
                     </div>
                     <div class="clash-card__unit-name">Mediatron</div>
                     <div class="clash-card__level clash-card__level--mediatron">The versatility robot</div>
                     <div class="clash-card__unit-description">
                        Malgré son apparence élancée et maigrichonne, sa polyvalence est néanmoins sa plus grande capacité, cela fera alors de lui : un de vos ennemis les plus redoutable.
                     </div>
                     <div class="clash-card__unit-stats clash-card__unit-stats--mediatron clearfix">
                        <div class="centrer">
                           <div class="one-third">
                              <div class="stat">❤️❤️</div>
                              <div class="stat-value">santé</div>
                           </div>
                           <div class="one-third no-border">
                              <div class="stat">➕➕</div>
                              <div class="stat-value">vitesse</div>
                           </div>
                           
                        </div>
                     </div>
                  </div>
                  <!-- end clash-card fantome-->
               </div>
               <!-- end wrapper -->
               <div class="wrapper">
                  <div class="clash-card ">
                     <div class="clash-card__image clash-card__image--BF-Bot">
                        <img src="./vue/images/gifMonstres/robot3.gif" alt="BF-Bot" />
                     </div>
                     <div class="clash-card__unit-name">BF-Bot</div>
                     <div class="clash-card__level clash-card__level--BF-Bot">The unbreakable brute</div>
                     <div class="clash-card__unit-description">
                        Derrière sa carapace de fer se cache une véritable machine de guerre. Sa plus grande faiblesse est néanmoins sa vitesse. Même si sa résistance est votre plus grande méfiance. 
                     </div>
                     <div class="clash-card__unit-stats clash-card__unit-stats--BF-Bot clearfix">
                        <div class="centrer">
                           <div class="one-third">
                              <div class="stat">❤️❤️❤️</div>
                              <div class="stat-value">santé</div>
                           </div>
                           <div class="one-third no-border">
                              <div class="stat">➕</div>
                              <div class="stat-value">vitesse</div>
                           </div>
                           
                        </div>
                     </div>
                  </div>
                  <!-- end clash-card fantome-->
               </div>
               <!-- end wrapper -->
              
              
            </div>
        
            <div id="cartes" style="
               padding: 674px 1px 1px 1px;">
               <div id="trait" style="
                  padding: 1px 1px 1px 1px;
                  background-color: aqua;
                  "></div>
               <div>
                  <div >
                     <h1 id="titreC" style=" padding: 23px 278px 23px 234px;">CARTES </h1>
                     <div>
                        <img src="./vue/images/laboEbauche.png" style="padding: 23px 50px 24px 22px; opacity:99%;"/>
                     </div>
                  </div>
               </div>
               <!-- end wrapper -->
            </div>
            <br> <br>
            <div >
               <div style="
                  padding: 1px 1px 1px;
                  background-color: aqua;
                  "></div>
               <div>
               <br><br>
            <div class="tourelles" >
               <h1> TOURELLES </h1>
               <div class="wrapper">
                  <div class="clash-card bois tourelle1">
                     <div class="clash-card__image  clash-card__image--bois">
                        <img src="./vue/images/tourelles/caisse.png" alt="caisse" /> <!-- image à insérer -->
                     </div>
                     <div class="clash-card__unit-name">Caisse en bois</div>
                     <div class="clash-card__level clash-card__level--bois">The shortcut breaker</div>
                     <div class="clash-card__unit-description">
                     Vous ne passerez pas
                     </div>
                     <div class="clash-card__unit-stats clash-card__unit-stats--bois clearfix">
                        <div class="centrer">
                           <div class="one-third">
                              <div class="statC">Aucune</div>
                              <div class="stat-value">Dégâts</div>
                           </div>
                           <div class="one-third">
                              <div class="statC">Aucune</div>
                              <div class="stat-value">Vitesse d'attaque</div>
                           </div>
                           <div class="one-third no-border">
                              <div class="statC">50</div>
                              <div class="stat-value">Prix</div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- end clash-card caisse en bois-->
               </div>
               <!-- end wrapper -->
               <div class="wrapper">
                  <div class="clash-card">
                     <div class="clash-card__image clash-card__image--Rayon-de-la-mort clash-card__image--rose_peche">
                        <img src="./vue/images/tourelles/tourelleCube.gif" alt="Rayon-de-la-mort" /> <!-- image -->
                     </div>
                     <div class="clash-card__unit-name">Rayon de la mort </div>
                     <div class="clash-card__level clash-card__level--Rayon-de-la-mort">The dreadful turret</div>
                     <div class="clash-card__unit-description">
                     Qui dit gros problème, dit gros moyen
                     </div>
                     <div class="clash-card__unit-stats clash-card__unit-stats--Rayon-de-la-mort clearfix">
                        <div class="centrer">
                           <div class="one-third">
                              <div class="statC">1 - ??? pts</div>
                              <div class="stat-value">Dégâts</div>
                           </div>
                           <div class="one-third">
                              <div class="statC">Continue</div>
                              <div class="stat-value">Vitesse d'attaque</div>
                           </div>
                           <div class="one-third no-border">
                              <div class="statC">4000</div>
                              <div class="stat-value">Prix</div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- end clash-card rayon de la mort-->
               </div>
               <!-- end wrapper -->
               <div class="wrapper">
                  <div class="clash-card ">
                     <div class="clash-card__image clash-card__image--generateur-foudre">
                        <img src="./vue/images/tourelles/tourelleTesla4.gif" alt="Tesla" /> <!-- image -->
                     </div>
                     <div class="clash-card__unit-name">Générateur de foudre</div>
                     <div class="clash-card__level clash-card__level--generateur-foudre">The Tesla Tower</div>
                     <div class="clash-card__unit-description">
                     Nikola serait fier
                     </div>
                     <div class="clash-card__unit-stats clash-card__unit-stats--generateur-foudre clearfix">
                        <div class="centrer">
                           <div class="one-third">
                              <div class="statC"><b>500 pts</b></div>
                              <div class="stat-value"><b>Dégâts</b></div>
                           </div>
                           <div class="one-third">
                           <div class="statC"><b>Lente</b></div>
                              <div class="stat-value"><b>Vitesse d'attaque</b></div>
                           </div>
                           <div class="one-third no-border">
                           <div class="statC"><b>5000</b></div>
                              <div class="stat-value"><b>Prix</b></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- end clash-card generateur de fouudre-->
               </div>

               <div class="wrapper">
                  <div class="clash-card ">
                     <div class="clash-card__image clash-card__image--pistocanon">
                        <img src="./vue/images/tourelles/tourelleClassique.gif" alt="pistocanon" /> <!-- image -->
                     </div>
                     <div class="clash-card__unit-name">Pistocanon à énergie</div>
                     <div class="clash-card__level clash-card__level--pistocanon">The Best Noise Maker</div>
                     <div class="clash-card__unit-description">
                         Pew Pew Pew
                     </div>
                     <div class="clash-card__unit-stats clash-card__unit-stats--pistocanon clearfix">
                        <div class="centrer">
                           <div class="one-third">
                              <div class="statC">35 pts</div>
                              <div class="stat-value">Dégâts</div>
                           </div>
                           <div class="one-third">
                              <div class="statC">Modérée</div>
                              <div class="stat-value">Vitesse d'attaque</div>
                           </div>
                           <div class="one-third no-border">
                              <div class="statC">2000</div>
                              <div class="stat-value">Prix</div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- end clash-card pistocanon-->
               </div>


            </div>
         </div>
         <!-- end stars -->
      </div>
      <!-- end website -->
      <script type="text/javascript" src="vue/js/encyclopedieCard.js"></script>
</html>