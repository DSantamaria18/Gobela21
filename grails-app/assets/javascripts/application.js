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

function sumar() {
    var total = 0.0;
    total = (total == null || total == undefined || total == "") ? 0.0 : total;

    $('[data="suma"]').each(function () {
        valor = parseFloat($(this).val());
        total = (parseFloat(total) + parseFloat(valor));
    });
    // document.getElementById('puntuacion-value').innerHTML = total.toFixed(2);
    // console.log("PUNTOS: " + total);
    var sTotal = total.toString().replace(/\./,',')
    // console.log("PUNTOS STRING: " + sTotal);
    $('#puntuacion').attr('value',sTotal);
    // $('#puntuacion').attr('value',total.toFixed(2));
    recalcularImporteConcedido();
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
    console.log("CONCEDIDO: " + concedido);

    $('[name="importeConcedido"]').val(concedido.toString().replace(/\./, ','));
}
