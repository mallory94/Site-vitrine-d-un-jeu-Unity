
<!doctype html>
<html class="no-js website" lang="fr">

    <head>
        <title>Classement</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="./vue/css/classementSchnaps.css">
        <link rel="stylesheet" href="./vue/css/classement.css">
    </head>
    <main id="main" role="main" class="main">
    blablablabla blablablabla blablablabla blablablablablablablablablablablablablablablablablablablablablablablabla blablablablablablablabla blablablablablablablablablablablablablablablablablablablabla blablablablablablablablablablablabla blablablablablablablabla. blablablablablablablablablablablablablablablabla blablablablablablablablablablablabla  blablablablablablablablablablablabla. blablablablablablablablablablablablablablablablablablablabla .. blablablablablablablablablablablabla .. blablablabla!!!! blablablablablablablabla blablablablablablablablablablablabla .
        <thead>
        <!-- récupérer le nom de la colonne -->
        <tr>
        <?php
            $compteur = 0;
            
            echo("<th class=\"categorieClassement\"> </th>");
            
        ?>
        </tr>
        </thead>
        <tbody>
        <?php
            foreach ($listeScores as $score) {
                echo("<tr class=\"ligneClassement\" id=\""+ $score['IdJoueur'] + "\">"); 
                        
                        for($i = 1; $i <= $nbCategories; $i++) {
                            echo("<td class\"elementClassement\">" + $score[$i] + "</td>"); 
                        }
                echo("</tr>");
            }
        ?>
        </tbody>

        
    </main>

    <footer class="footer full-bleed" role="contentinfo">
    Vous pensez voir une erreur dans le classement?<br>
    Contactez nous sur le support
    </footer>
</html>
