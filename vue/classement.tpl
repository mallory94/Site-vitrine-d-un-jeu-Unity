
<!doctype html>
<html class="no-js website" lang="fr">

    <head>
        <title>Classement</title>
        <meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Luckiest+Guy&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./vue/css/classement.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="./vue/js/minitronRush.js"></script>
        
    </head>
<header>
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
    Contactez nous sur le support
    </footer>
</html>
