
$(document).on('ready page:load', function() {
  // fix owl carousel's bug
  //$('.owl-carousel').append('<div class="unit item"></div>');

  $('.owl-carousel').owlCarousel({
    margin:5,
    autoWidth:true

  });

});