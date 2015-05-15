
var scrollToSection = function(button, location){
  $(button).click( function(){
    $('html, body').animate({
        scrollTop: location,
    }, 1000);
  });
}

var initialize = function(){
  scrollToSection('.findFlavourButton', 700);

  $('div.field input:radio').addClass('input_hidden');
  $('div.field img').on('click', function() {
    $(this).addClass('selected').prev('input').trigger('click');
    $(this).addClass('selected').siblings().removeClass('selected');
  });
}

$(initialize)