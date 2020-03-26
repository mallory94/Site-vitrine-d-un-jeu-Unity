<!DOCTYPE html>
<html class="no-js" lang="fr">
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"  />
    <link rel = "stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/css/swiper.min.css "/>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.min.js"></script>
    <link rel = "stylesheet" type="text/css" href="./vue/css/scenario.css"/>


<body>
<div class="container">
    <h1 class="majuscule" id="titre">SCENARIO</h1>
    <div class="timeline">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background-image: url(./vue/images/essai.png);" data-year="Départ">
                    <div class="swiper-slide-content"><span class="timeline-year">Situation initiale</span>
                        <h4 class="timeline-title">Contexte</h4>
                        <p class="timeline-text">Dans une petite ville en Amérique du Nord, Mme.Enoksen est un vieille professeure de laboratoire connue pour ses idées farfelues. Depuis le plus jeune âge, cette dernière aime tenter l’impossible et l’inaccessible. De ce fait, quelques années plus tard, Mme.Enoksen venant de l’institut Rafenwer essaye de créer des trous de vers artificiels. Pour l’aider dans sa quête, elle embauche un stagiaire, en l'occurrence vous, afin de réaliser ses expériences. 
						</p>
                    </div>
                </div>
                <div class="swiper-slide" style="background-image: url(./vue/images/essai2.png);" data-year="Péripéties">
                    <div class="swiper-slide-content"><span class="timeline-year">Péripéties</span>
                        <h4 class="timeline-title">Que s'est-il passé ?</h4>
                        <p class="timeline-text">Après de longues et rudes semaines de recherche, ils finirent par enfin créer le tout premier trou de vers stable. Mais cela ne fut qu’un bel espoir très vite envolé dès lors que le portail laissa échapper des créatures semblant venir d’une autre dimension. 
						</p>
                    </div>
                </div>
                <div class="swiper-slide" style="background-image: url(./vue/images/essai.png);" data-year="Mission">
                    <div class="swiper-slide-content"><span class="timeline-year">Votre quête</span>
                        <h4 class="timeline-title">Le but</h4>
                        <p class="timeline-text"> Désormais, la professeure et vous-même allez tenter de réparer vos erreurs. Vous allez devoir placer des tourelles pour défendre le laboratoire et empêcher les ennemis de franchir le portail et réduire à néant votre dur travail.
							<br><strong> Serez-vous à la hauteur pour empêcher ces ennemis de vous détruire ? </strong></br>
						</p>
                    </div>
                </div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
</div>
</body>

    <script>   
var timelineSwiper = new Swiper ('.timeline .swiper-container', {
  direction: 'vertical',
  loop: false,
  speed: 1600,
  pagination: '.swiper-pagination',
  paginationBulletRender: function (swiper, index, className) {
    var year = document.querySelectorAll('.swiper-slide')[index].getAttribute('data-year');
    return '<span class="' + className + '">' + year + '</span>';
  },
  paginationClickable: true,
  nextButton: '.swiper-button-next',
  prevButton: '.swiper-button-prev',
  breakpoints: {
    768: {
      direction: 'horizontal',
    }
  }
});
</script> 
    

</html>

    

