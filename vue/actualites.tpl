<!doctype html>
<html class="no-js" lang="fr">
    <head>
    <title>Actualités</title>
    <link rel="icon" type="image/png" href="./vue/images/icons/portail.png"/>
    <link href="https://fonts.googleapis.com/css?family=Luckiest+Guy&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./vue/css/carousel.css" media="all">
    <link rel="stylesheet" href="./vue/css/actualites.css" media="all">
    <link rel="stylesheet" href="./vue/css/cartesActualites.css" media="all">
    <link rel="stylesheet" href="./vue/css/static_menu.css">
    <script src="./vue/js/cartesActualites.js"></script>
    
      <script src="./vue/js/static_menu.js"></script>
    </head>

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
    
<body>
<div id="titre">ACTUALITÉS</div>
    <!-- DEBUT DU CODE POUR LE CAROUSEL -->



    
    <!-- <div class="container-fluid">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="https://image.noelshack.com/fichiers/2020/09/4/1582820572-labo.png" alt="slide1">
                    <div class="carousel-caption d-none d-sm-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./vue/images/carousel/laboDrawing.jfif" alt="slide2">
                    <div class="carousel-caption d-none d-sm-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./vue/images/carousel/laboDrawing.jfif" alt="slide3">
                    <div class="carousel-caption d-none d-sm-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./vue/images/carousel/laboDrawing.jfif" alt="slide4 ">
                    <div class="carousel-caption d-none d-sm-block">
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div> -->
    
    
    <!-- FIN DU CODE POUR LE CAROUSEL -->

     
    <div class="row mt-5">
        <div class="col-md-1"></div>
        <div class="col-md-5">
            <div class="dcard premiereColonne">
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>

                <div class="paracard carteMediatron" style="background-image: url(./vue/images/actus/laboDrawing.jfif);">
                   
                    <div class="frame">
                   
                        <h2>
                            <div class="titreArticle">Le jeu sort officiellement en Beta ouverte !</div>
                            <div class="sousTitreArticle">Nous sommes heureux de pouvoir vous l'annoncer après des années de travail intensif sans rémunération</div>
                        </h2>
                    </div>
                    <div class="fond"></div>
                </div>
            </div>
        </div>

        <div class="col-md-5">
            <div class="dcard">
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>

                <div class="paracard carteMinitron" style="background:linear-gradient(to left, black, black 50%, aqua 70%, black 75%);">
                    <div class="frame">
                    <img src="./vue/images/actus/prof.png" style="width:70%" />
                        <h2>
                            <div class="titreArticle">Mme. Enokson, la professeure à l’origine de tout ce chaos vient d’arriver dans l’univers d’U.M.S.I !</div>
                            <div class="sousTitreArticle case-md5">Personne ne s'attendait à ça</div>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
    </div>


  <div class="lignesCartesActualites">

    <div class="row mt-5">
        <div class="col-md-1"></div>
        <div class="col-md-6">
            <div class="dcard premiereColonne">
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>

                <div class="paracard" style="background-image: url(./vue/images/actus/preliminaire.png);">
                    <div class="frame">
                        <h2>
                            <div class="titreArticle">La carte du labo vient d'être implantée !</div>
                            <div class="sousTitreArticle">Nous venons de mettre en place le décor du laboratoire où vous attendent d'interminables batailles.</div>
                        </h2>
                    </div>
                    <div class="fond"></div>
                </div>
            </div>
        </div>

        
        <div class="col-md-4">
            <div class="dcard">
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>

                <div class="paracard carteBF-Bot" style="background-image: url(./vue/images/actus/BF-Bot-portal.png);">
                    <div class="frame">
                        <h2>
                            <div class="titreArticle">Les BF-Bot ont franchi le portail !</div>
                            <div class="sousTitreArticle case-md4">Ces créatures aussi corpulentes que résistantes écrasent tout sur leur passage</div>
                        </h2>
                    </div>
                </div>
            </div>
        </div>

    </div>





    <div class="row mt-5">
        <div class="col-md-1"></div>
        <div class="col-md-5">
            <div class="dcard premiereColonne">
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>

                <div class="paracard carteMediatron" style="background-image: url(./vue/images/actus/mediatron.png);">
                    <div class="frame">
                        <h2>
                            <div class="titreArticle">Les Mediatrons débarquent !</div>
                            <div class="sousTitreArticle case-md5">Personne ne sait de quoi sont capables leurs longs bras</div>
                        </h2>
                    </div>
                    <div class="fond"></div>
                </div>
            </div>
        </div>

        <div class="col-md-5">
            <div class="dcard">
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>

                <div class="paracard carteMinitron" style="background-image: url(./vue/images/actus/minitron-spark-bg.png);">
                    <div class="frame">
                        <h2>
                            <div class="titreArticle">Les Minitrons nous envahissent !</div>
                            <div class="sousTitreArticle case-md5">Ne les laissez pas sortir</div>
                        </h2>
                    </div>
                </div>
            </div>
        </div>

    </div>

   


    <div class="row mt-5">
        <div class="col-md-1"></div>
       

        <div class="col-md-4">
            <div class="dcard">
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>

                <div class="paracard carteStagiaire" style="background-image: url(./vue/images/actus/stagiaire.png);">
                    <div class="frame">
                        <h2>
                            <div class="titreArticle">Bravo ! Vous avez été sélectionné !</div>
                            <div class="sousTitreArticle case-md4">Mme. Enokson vous a choisi pour réaliser de multiples expériences farfelues !</div>
                        </h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="dcard premiereColonne">
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>
                <div class="trigger"></div>

                <div class="paracard carteLabo" style="background-image: url(./vue/images/actus/tours.png);">
                    <div class="frame">
                        <h2>
                            <div class="titreArticle">Le shop a ouvert !</div>
                            <div class="sousTitreArticle">Nous venons de mettre en place le shop qui vous permettra d'évoluer</div>
                        </h2>
                    </div>
                    <div class="fond"></div>
                </div>
            </div>
        </div>

    </div>


    <!-- https://image.noelshack.com/fichiers/2020/09/4/1582820572-labo.png -->


</div>












    



<body>
</html>