var btnMenu;
var ouvert = false;
var txtBtnFerme = "MENU";
var txtBtnOuvert = "FERMER LE MENU";
var btnsSaufBtnMenu;
var caseBtnMenu;

$(function(){
    btnMenu = $("#btnMenu");
    caseBtnMenu = $("#li-btnMenu");
    caseBtnMenu.hide();
    btnsSaufBtnMenu = $(".container .active_links li:not(#li-btnMenu)");
    
    
    changerContenuBouton();
    autoRedim();
    
    caseBtnMenu.onmouseover="this.style.cursor='pointer'"

    function changerContenuBouton(){
        if (ouvert){
            btnMenu.text(txtBtnOuvert);
        }
        else {
            btnMenu.text(txtBtnFerme);
        }
    }

    caseBtnMenu.click(function(){
        if (ouvert){
            fermeMenu();
        }
        else {
            ouvreMenu();
        }
    })

    function cacheBtns(){
        btnsSaufBtnMenu.hide();
    }
    function afficheBtns(){
        btnsSaufBtnMenu.show();
    }

    function fermeMenu(){
        ouvert = false;
        cacheBtns();
        changerContenuBouton();
    }

    function ouvreMenu(){
        ouvert = true;
        afficheBtns();
        changerContenuBouton();
    }


    function autoRedim() {
    
        if (window.innerWidth <= 920) {
            caseBtnMenu.show();
            if (ouvert) {
                afficheBtns()
            }
            else {
                cacheBtns();
            }
        }
        if (window.innerWidth > 920 ) {
            caseBtnMenu.hide();
            afficheBtns();
        }
    }
    window.onresize = function(){
        autoRedim();
    }

    

});