// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){
  $("#alertBox").fadeOut(10000);
  $('.navbar-nav .has-inner-dropdown').on('click', function(e){
    e.preventDefault();
    $('#' + $(this).data('target')).toggleClass('open');
    console.log($(this).parents('.dropdown').length);
    $(this).parents('.dropdown').addClass('open');
  });
  $('.navbar-toggle').click(function(){
    $("#navbar-ex1-collapse").css('visibility','visible');

  });
});