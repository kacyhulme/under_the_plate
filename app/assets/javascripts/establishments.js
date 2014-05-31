
$(document).ready(function(){
	$(".flash").fadeOut(5000)
	$(".thumbnail").on("mouseenter", function() {
		$(this).addClass('highlight');
		}).on("mouseleave", function() {
		$(this).removeClass('highlight');
	});
});
