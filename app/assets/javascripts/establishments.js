$(document).ready(function(){
	$(".thumbnail").on("mouseenter", function() {
		$(this).addClass('highlight');
  }).on("mouseleave", function() {
    $(this).removeClass('highlight');
  });
});

$('.establishments.index').ready(function() {
  $(".flash").fadeOut(5000)
});
