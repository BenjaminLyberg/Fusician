// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require magnific-popup
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {
  
  var popup = $("#popup"),
      doc = $(document),
      popClass = "popped",
      showPopup = function (event) {
        popup.fadeIn(200);
        event.preventDefault();
      },
      hidePopup = function (event) {
        popup.hide();
        event.preventDefault();
      };
  
  doc.on("click", "#open-popup", showPopup);
  doc.on("click", ".popup__close", hidePopup);
  
  doc.keypress(function (event) {
    if (event.keyCode === 27) { // esc key
      hidePopup();
    }
  });
  
});