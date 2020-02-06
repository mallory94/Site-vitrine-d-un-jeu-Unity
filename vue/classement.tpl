
<!doctype html>
<html class="no-js" lang="fr">

    <head>
        <meta charset="UTF-8">
    </head>
    <body>
        <thead>
        <!-- récupérer le nom de la colonne -->
        <tr>
        <?php
            $compteur = 0;
            foreach ($listeCategorie as $categorie){
                echo("<th class=\"categorieClassement\"> " + $categorie[$compteur++] +  "</th>");
            }
        ?>
        </tr>
        </thead>
        <tbody>
        <?php
            foreach ($listeScores as $score) {
                echo("<tr class=\"ligneClassement\" id=\""+ $score['IdJoueur'] + "\">"); 
                        
                        for($i = 1; $i <= $compteur; $i++) {
                            echo("<td class\"elementClassement\">" + $score[$i] + "</td>"); 
                        }
                echo("</tr>");
            }
        ?>
        </tbody>

        
    <body>
