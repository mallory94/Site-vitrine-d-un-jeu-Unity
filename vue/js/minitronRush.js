var element;
var count = 0;
var right = "110%";
var left = "-10%";
var direction;

$( function() {
    direction = right;
    var rush = setTimeout(function() {
        element.style.left = "110%";
        if (direction === right) {
            direction = left;
            console.log("changement de direction");
        }
        else {
            direction = right;
            console.log("changement de direction");
        }
        }, 200); 
    
    

    element = document.querySelector("#minitron");
    setTimeout(rush, 8000);
    
    setTimeout(function(){
        console.log(direction);
    }, 1000);
    

});