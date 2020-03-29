
var menu;
var links;


$( function() {
  menu = document.querySelector(".menu");
  links = document.querySelector(".links");

  

  setTimeout(function(){
    
    menu.classList.toggle("active_menu");
    links.classList.add("active_links");
    
    
    setTimeout(function(){
      menu.addEventListener("click",function(e){
        e.preventDefault();
        if(!(this.classList.contains('active_menu'))){
          this.classList.toggle("active_menu");
          links.classList.add("active_links");
        } else {
          this.classList.remove("active_menu");
          links.classList.remove("active_links");
        }
      });
    },2000);
  }, 1000);



});