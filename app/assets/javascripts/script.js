
var scrollToSection = function(button, location){
  $(button).click( function(){
    $('html, body').animate({
        scrollTop: location,
    }, 1000);
  });
}

var initialize = function(){
  scrollToSection('button.findFlavourButton', 700);
}

$(initialize)