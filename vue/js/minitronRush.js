var element;
var elementJquery;
var count = 0;
var right = "110%";
var left = "-10%";
var direction = right;
var rush;


$( function() {
    direction = right;
    element = document.querySelector("#minitron");
    elementJquery = $('#minitron');
    console.log(elementJquery);
    setTimeout(function(){
        console.log("s'active")
        element.style.left = direction;
        direction = left;
    }, 1000);
    

    setInterval(function() {
        element.style.left = direction;
        console.log(element.style.left);
        if (direction === right) {
            direction = left;
            elementJquery.removeClass("avanceVersGauche");
            elementJquery.addClass("avanceVersDroite");
            console.log("changement de direction");
        }
        else {
            direction = right;
            elementJquery.removeClass("avanceVersDroite");
            elementJquery.addClass("avanceVersGauche");
            console.log("changement de direction");
        }
    }, 7000);
    
    
    

});