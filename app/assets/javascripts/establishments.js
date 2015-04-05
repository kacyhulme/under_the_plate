if ($('body.establishments.index').length) {

  $(".thumbnail")
  .on("mouseenter", function() {
      $(this).addClass('highlight');
    })
  .on("mouseleave", function() {
      $(this).removeClass('highlight');
    });

  $(".flash .alert").fadeOut(5000);
}

if ($('body.establishments.show').length) {
  $(".flash .alert").fadeOut(5000);
}