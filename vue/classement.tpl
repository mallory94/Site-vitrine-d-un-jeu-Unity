
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

        
    <body>
