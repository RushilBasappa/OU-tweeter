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
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require turbolinks

var jumboHeight = $('.jumbotron').Height;

function parallax(){
  var scrolled = $(window).scrollTop();

  $('.bg').css('height', (676 - scrolled) + 'px');

  if(scrolled>=625){
    $('#head').addClass('navbar-inverse');
  }
  else{
    $('#head').removeClass('navbar-inverse');
  }
}

$(window).scroll(function(e){
  parallax();
});

$('document').ready(function(){
  setTimeout(function(){
    $('#flash').slideUp();
  },5000);
});
