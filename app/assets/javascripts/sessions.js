// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// var $overlay = $('<div id="overlay"></div>');
// var $modal = $('<div id="modal"></div>');
// var $button = $('<button id="modaldismiss">Dismiss</button>')

// $modal.text("Hey there. Thanks for visiting my site! To log in without signing up, just enter the email guest@guest.com and the password of 'password'. Enjoy!");

// $("body").append($overlay);
// $("body").append($modal);
// $("body").append($button);

// // on first session

// $overlay.show();

// $overlay.click(function(){
//   $overlay.hide();
// });

var $div = $('<div id="dialog" title="Welcome!">Thanks for visiting my site</div>');

$("body").append($div);

$div.dialog();