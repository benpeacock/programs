// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
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
//= require bootstrap
//= require_tree .

<<<<<<< HEAD
function tabs(container){
	$(container).find(".tabs").on("click", "li > a", function(e){
		e.preventDefault();
		$(".tab").removeClass("active");
		$(".tabs").find("a").removeClass("active");
		var targetTab = $(this).attr("href");
		$(targetTab).addClass("active");
		$(this).addClass("active")
		});
}
 
$(function() {
	tabs("body");
}); 
=======
$(document).ready(function(){
  $(".toggleLink").click(function(event){
  	event.preventDefault();
  	var id_val = '#field_' + event.target.id;
    $(id_val).show();
    return false;
  });
});

>>>>>>> Layout, scripts for click to edit working, but record not getting saved.
