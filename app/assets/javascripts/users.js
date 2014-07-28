$(document).ready(function(){
  $('header').on('mouseenter', function() {
    $(this).closest('div').find('.member').slideDown();
  });
  $('header').on('mouseleave', function() {
    $(this).closest('div').find('.member').slideUp();
  });
});
