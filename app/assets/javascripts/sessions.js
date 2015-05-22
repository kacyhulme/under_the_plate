// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


var visited = document.cookie;

var firstVisit = (visited == "");


if (($('body.welcome.index').length) && firstVisit) {
 var $overlay = $('<div id="overlay"></div>');
 var $modal = $('<div id="modal"></div>');
 var $paragraph = $('<p>""</p>')
 var $button = $('<button id="modaldismiss">Dismiss</button>')
 var $text = $paragraph.html("Hi there!<br>Thanks for visiting my site!<br>To log in without signing up, just enter the email guest@guest.com and the password of 'password'.<br>Enjoy!");

 $("body").append($overlay);
 $("body").append($modal);
 $modal.append($paragraph);
 $modal.append($button);

 $overlay.show();

 $overlay.click(function(){
  $overlay.hide();
});

 $button.click(function(){
  $overlay.hide();
  $modal.hide();
  $button.hide();
})

}
