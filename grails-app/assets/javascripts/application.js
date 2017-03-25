// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$(document).ajaxStart(function(){
			$('#spinner').fadeIn();
		}).ajaxStop(function(){
			$('#spinner').fadeOut();
		});
	})(jQuery);
}

function sumar () {
    var total = 0.0;
    total = (total == null || total == undefined || total == "") ? 0.0 : total;

    $('[data="suma"]').each(function(){
        valor = parseFloat($(this).val());
        total = (parseFloat(total) + parseFloat(valor));
    });
    document.getElementById('puntuacion-value').innerHTML = total;
}
