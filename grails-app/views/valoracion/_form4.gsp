<%@ page import="gobela21.Valoracion" %>

<h3>Participación en la actividad. Agentes implicados en el evento (max 60 pts):</h3>
<g:set var="l4propioClubValue" value="${valoracionInstance.l4propioClub}" />
VALOR: ${l4propioClubValue}
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4propioClub', 'error')} required">
    <label for="l4propioClub">
        <g:message code="valoracion.l4propioClub.label" default="Propio club:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4propioClub" value="10" checked = "${l4propioClubValue == 10}"/> 10 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4otrosClubes', 'error')} required">
    <label for="l4otrosClubes">
        <g:message code="valoracion.l4otrosClubes.label" default="Otros clubes:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4otrosClubes" value="15" checked = "${l4otrosClubes == 15}"/> 15 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4ampas', 'error')} required">
    <label for="l4ampas">
        <g:message code="valoracion.l4ampas.label" default="AMPAS:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4ampas" value="5" checked = "${l4ampas == 5}"/> 5 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4categoriasEscolares', 'error')} required">
    <label for="l4categoriasEscolares">
        <g:message code="valoracion.l4categoriasEscolares.label" default="Categorias escolares:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4categoriasEscolares" value="15" checked = "${l4categoriasEscolares == 15}"/> 15 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4categoriasFederadas', 'error')} required">
    <label for="l4categoriasFederadas">
        <g:message code="valoracion.l4categoriasFederadas.label" default="Categorias federadas:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4categoriasFederadas" value="10" checked = "${l4categoriasFederadas == 10}"/> 10 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4veteranos', 'error')} required">
    <label for="l4veteranos">
        <g:message code="valoracion.l4veteranos.label" default="Personas veteranas:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4veteranos" value="5" checked = "${l4veteranos == 5}"/> 5 pts
</div>
<br>

<h3>Adecuación del presupuesto al del año pasado (max 10 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4desviacion', 'error')} required">
    <label for="l4desviacion">
        <g:message code="valoracion.l4desviacion.label" default="Desviación del presupuesto:"/>
    </label>
    <g:radio name="l4desviacion" value="2" onchange="sumar();" data="suma"/> Superior a 1.000€ (2 pts)
    <div class="fieldcontain">
        <label for="l4desviacion"></label>
        <g:radio name="l4desviacion" value="4" onchange="sumar();" data="suma"/> Superior a 3.000€ (4 pts)
    </div>

    <div class="fieldcontain">
        <label for="l4desviacion"></label>
        <g:radio name="l4desviacion" value="6" onchange="sumar();" data="suma"/> Superior a 5.000€ (6 pts)
    </div>

    <div class="fieldcontain">
        <label for="l4desviacion"></label>
        <g:radio name="l4desviacion" value="8" onchange="sumar();" data="suma"/> Superior a 8.000€ (8 pts)
    </div>

    <div class="fieldcontain">
        <label for="l4desviacion"></label>
        <g:radio name="l4desviacion" value="10" onchange="sumar();" data="suma"/> Superior a 10.000€ (10 pts)
    </div>
</div>
<br>

<h3>Calidad del diseño de la actividad (max 10 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4participacionEstimada', 'error')} required">
    <label for="l4participacionEstimada">
        <g:message code="valoracion.l4participacionEstimada.label" default="Participacion estimada:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4participacionEstimada" value="2"/> 2 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4comunicacionAMedios', 'error')} required">
    <label for="l4comunicacionAMedios">
        <g:message code="valoracion.l4comunicacionAMedios.label" default="Comunicación a medios:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4comunicacionAMedios" value="4"/> 4 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4usoNuevasTecnologías', 'error')} required">
    <label for="l4usoNuevasTecnologías">
        <g:message code="valoracion.l4usoNuevasTecnologías.label" default="Uso de nuevas tecnologías:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4usoNuevasTecnologías" value="4"/> 4 pts
</div>
<br>

<h3>Tratamiento de temáticas transversales (max 10 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4participacionFemeninaEvento', 'error')} required">
    <label for="l4participacionFemeninaEvento">
        <g:message code="valoracion.l4participacionFemeninaEvento.label" default="Participación femenina:"/>
    </label>
    <g:radio name="l4desviacion" value="1" onchange="sumar();" data="suma"/> Menos del 20% (1 pt)
</div>

<div class="fieldcontain">
    <label for="l4desviacion"></label>
    <g:radio name="l4desviacion" value="4" onchange="sumar();" data="suma"/> Entre el 20% y el 40% (4 pts)
</div>

<div class="fieldcontain">
    <label for="l4desviacion"></label>
    <g:radio name="l4desviacion" value="6" onchange="sumar();" data="suma"/> Entre el 40% y el 60% (6 pts)
</div>

<div class="fieldcontain">
    <label for="l4desviacion"></label>
    <g:radio name="l4desviacion" value="4" onchange="sumar();" data="suma"/> Entre el 60% y el 80% (8 pts)
</div>

<div class="fieldcontain">
    <label for="l4desviacion"></label>
    <g:radio name="l4desviacion" value="10" onchange="sumar();" data="suma"/> Mayor del 80% (10 pts)
</div>
<br>

<h3>Valoración de la persona física o jurídica solicitante (max 10 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4experienciaSolicitante', 'error')} required">
    <label for="l4experienciaSolicitante">
        <g:message code="valoracion.l4experienciaSolicitante.label" default="Experiencia del solicitante:"/>
    </label>
    <g:radio name="l4experienciaSolicitante" value="3" onchange="sumar();" data="suma"/> Más de 2 años (3 pts)
</div>

<div class="fieldcontain">
    <label for="l4desviacion"></label>
    <g:radio name="l4experienciaSolicitante" value="6" onchange="sumar();" data="suma"/> Más de 4 años (6 pts)
</div>

<div class="fieldcontain">
    <label for="l4desviacion"></label>
    <g:radio name="l4experienciaSolicitante" value="10" onchange="sumar();" data="suma"/> Más de 6 años (10 pts)
</div>

