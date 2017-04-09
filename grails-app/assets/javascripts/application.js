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
    (function ($) {
        $(document).ajaxStart(function () {
            $('#spinner').fadeIn();
        }).ajaxStop(function () {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}

function sumar(linea) {
    if (linea != 2){
        var total = 0.0;
        total = (total == null || total == undefined || total == "") ? 0.0 : total;
        $('[data="suma"]').each(function () {
            valor = parseFloat($(this).val());
            total = (parseFloat(total) + parseFloat(valor));
        });
        var sTotal = total.toString().replace(/\./,',')
        $('#puntuacion').attr('value',sTotal);
        recalcularImporteConcedido();
    }
}

function sumarL2() {
    /*   var total = 0.0;
     total = (total == null || total == undefined || total == "") ? 0.0 : total;

     $('[data="suma"]').each(function(){
     valor = parseFloat($(this).val());
     total = (parseFloat(total) + parseFloat(valor));
     });
     document.getElementById('puntuacion-value').innerHTML = total.toFixed(2);
     recalcularImporteConcedido();*/
}

function recalcularImporteConcedido() {
    var solicitado = parseFloat($('#importeSolicitado').text().replace(/\./, '').replace(/,/, '.')).toFixed(2);
    console.log("SOLICITADO: " + solicitado);

    var puntuacion = parseFloat($('#puntuacion').val().toString().replace(',', '.')).toFixed(2);
    // var puntuacion = parseFloat($('#puntuacion').val()).toFixed(2);
    console.log("PUNTOS: " + puntuacion);

    var concedido = solicitado * puntuacion / 100;
    console.log("CONCEDIDO: " + concedido.toFixed(2));

    $('[name="importeConcedido"]').val(concedido.toFixed(2).toString().replace(/\./, ','));
}
