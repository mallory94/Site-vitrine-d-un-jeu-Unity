
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
        <script src="./vue/js/static_menu.js"></script>

        <script >
			function conversion_seconde_heure(time) {
				var reste=time;
				var result='';
 
				var nbJours=Math.floor(reste/(3600*24));
				reste -= nbJours*24*3600;
 
				var nbHours=Math.floor(reste/3600);
				reste -= nbHours*3600;
 
				var nbMinutes=Math.floor(reste/60);
				reste -= nbMinutes*60;
 
				var nbSeconds=reste;
 
				if (nbJours>0)
					result=result+nbJours+'j ';
 
				if (nbHours>0)
					result=result+nbHours+'h ';
 
				if (nbMinutes>0)
					result=result+nbMinutes+'min ';
 
				if (nbSeconds>0)
					result=result+nbSeconds+'s ';
         
         return result;
			 document.getElementById("tempsdiv").innerHTML= result;
			}


      function init() {
		document.getElementById("dialog").style.display = "none";
	}
	
	function profil() {
	    	document.getElementById("dialog").style.display = "block";		
	}

  function fin() {
	    	document.getElementById("dialog").style.display = "none";		
	}
		</script>
    </head>

 

<header id="menu" onload="init();">

		<div class="container">
          
          <ul class="links active_links">
            <li  style=" padding-top: 16px;"><a href="./index.php">Accueil</a></li>
            <li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionClassement">Classement</a></li>
            <li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionActualites">Actualités</a></li>
            <li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionScenario">Scénario</a></li>
            <li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionEncyclopedie">Encyclopédie</a></li>
            <li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionAPropos">À propos</a></li>
            <li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionContact">Contact</a></li>
            <?php 
              if (isset($_SESSION['bConnect'])){
                if ($_SESSION['bConnect']) {
                  echo('<li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=accueilApresDeconnexion">Déconnexion</a></li>
                  
                        <a href="javascript:void(0)" id="profil" onclick="profil();"><img style="width: 62px; padding: 0px 11px 2px 13px;" src="./vue/images/stagiaire.png" alt="Profil" /><figcaption style="color:#4afaff; text-align:center;">Profil</figcaption></a>
                       ');
                }
                else {
                  echo('<li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionConnexion">Connexion</a></li>
                        <li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionInscription">Inscription</a></li>
                      ');
                }
              }
              else {
                echo('<li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionConnexion">Connexion</a></li>
                      <li style=" padding-top: 16px;"><a href="./index.php?controleur=utilisateur&action=redirectionInscription">Inscription</a></li>
                    ');
              }
            ?>
          
            <li id="li-btnMenu"><a id="btnMenu">MENU</a></li>
          </ul>
        </div>

		</header>

<body>
<br>
<div id="bg-img"> <img src="./vue/images/laboDrawing.png"></div>

            <div class="titreEtMinitron">
    <div id="titre">
        <div id="texteInterneTitre"><div class="lettresDevant">Cla</div><div class="lettresDerriere">sse</div><div class="lettresDevant">ment</div></div>
    </div>
    <img id="minitron" src="./vue/images/crop-img/crop-minitron.gif" alt="minitron" />
</div>

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
               
                    echo('
                    <div class="divTableRow">
                            <div class="divTableCell">' . $listeScores[$k]['pseudo'] . '</div>
                            <div class="divTableCell">' . $listeScores[$k]['niveau'] . '</div>
                            <div class="divTableCell">' . $listeScores[$k]['dernierScore'] . '</div>
                            <div class="divTableCell">' . $listeScores[$k]['nbMonstresTues'] . '</div>
                            <div  id="tempsdiv'.$k.'" class="divTableCell"></div> 
                            <div class="divTableCell">' . $listeScores[$k]['meilleurScore'] . '</div>
                            </div>
                            <script type="text/javascript">
                    document.getElementById("tempsdiv'.$k.'").innerHTML= conversion_seconde_heure(' . $listeScores[$k]['tempsJeu'] .');
                          </script> ');

 if (isset($_SESSION['bConnect'])){   
if($listeScores[$k]['pseudo'] == $_SESSION['pseudo'] ) {
  echo(  '<dialog id="dialog" style="color :#4afaff; background-color:black; ">
  <form method="dialog" >
   <p><label><h2 style="text-align : center;">Votre profil ' . $_SESSION['pseudo'] .' </h2>
   <p> Niveau :'.$listeScores[$k]['niveau'].'</p>
   <p> Nombre de monstres tués : '.$listeScores[$k]['nbMonstresTues'].'</p>
   <p> Dernier score : '.$listeScores[$k]['dernierScore'].'</p>
   <p> Meilleur score : '.$listeScores[$k]['meilleurScore'].'</p>
   </label></p>
   <input type="button" onclick="fin();" value="OK" style="color :black; background-color:#4afaff; margin-left: 71px;"></input>
   </form>
   </dialog>');
}
                          }
                         
                    }

                    

                   
            ?>
                
              
    </div>
    </main>
</body>
    <footer class="footer full-bleed" role="contentinfo">
    Vous pensez voir une erreur dans le classement?<br>
    Contactez nous <a href="./index.php?controleur=utilisateur&action=redirectionContact">ici</a>
    </footer>




</html>