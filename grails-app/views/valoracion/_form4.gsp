<%@ page import="gobela21.Valoracion" %>

%{--Participación en la actividad--}%
<h3>Participación en la actividad. Agentes implicados en el evento (max 60 pts):</h3>
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4propioClub', 'error')} required">
<label for="l4propioClub">
    <g:message code="valoracion.l4propioClub.label" default="Propio club:"/>
</label>
<g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4propioClub" value="10"/> 10 pts
</label>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4otrosClubes', 'error')} required">
    <label for="l4otrosClubes">
        <g:message code="valoracion.l4otrosClubes.label" default="Otros clubes:"/>
    </label>
    %{--<g:field onchange="sumar();" data="suma" name="l4otrosClubes" type="number" value="${valoracionInstance.l4otrosClubes}" required=""/>--}%
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4otrosClubes" value="15"/> 15 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4ampas', 'error')} required">
    <label for="l4ampas">
        <g:message code="valoracion.l4ampas.label" default="AMPAS:"/>
    </label>
    %{--<g:field  onchange="sumar();" data="suma" name="l4ampas" type="number" value="${valoracionInstance.l4ampas}" required=""/>--}%
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4ampas" value="5"/> 5 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4categoriasEscolares', 'error')} required">
    <label for="l4categoriasEscolares">
        <g:message code="valoracion.l4categoriasEscolares.label" default="Categorias escolares:"/>
    </label>
    %{--<g:field  onchange="sumar();" data="suma" name="l4categoriasEscolares" type="number" value="${valoracionInstance.l4categoriasEscolares}"
             required=""/>--}%
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4categoriasEscolares" value="15"/> 15 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4categoriasFederadas', 'error')} required">
    <label for="l4categoriasFederadas">
        <g:message code="valoracion.l4categoriasFederadas.label" default="Categorias federadas:"/>
    </label>
    %{--<g:field  onchange="sumar();" data="suma" name="l4categoriasFederadas" type="number" value="${valoracionInstance.l4categoriasFederadas}"
             required=""/>--}%
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4categoriasFederadas" value="10"/> 10 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4veteranos', 'error')} required">
    <label for="l4veteranos">
        <g:message code="valoracion.l4veteranos.label" default="Personas veteranas:"/>
    </label>
    %{--<g:field  onchange="sumar();" data="suma" name="l4veteranos" type="number" value="${valoracionInstance.l4veteranos}" required=""/>--}%
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l4veteranos" value="5"/> 5 pts
</div>
%{--fin--}%
<br>
%{--Adecuación del presupuesto--}%
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
%{--fin--}%

%{--Calidad del diseño de la actividad--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4participacionEstimada', 'error')} required">
    <label for="l4participacionEstimada">
        <g:message code="valoracion.l4participacionEstimada.label" default="Participacion estimada:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field onchange="sumar();" data="suma" name="l4participacionEstimada" type="number"
             value="${valoracionInstance.l4participacionEstimada}"
             required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4comunicacionAMedios', 'error')} required">
    <label for="l4comunicacionAMedios">
        <g:message code="valoracion.l4comunicacionAMedios.label" default="Comunicación a medios:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field onchange="sumar();" data="suma" name="l4comunicacionAMedios" type="number"
             value="${valoracionInstance.l4comunicacionAMedios}"
             required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4usoNuevasTecnologías', 'error')} required">
    <label for="l4usoNuevasTecnologías">
        <g:message code="valoracion.l4usoNuevasTecnologías.label" default="Uso de nuevas tecnologías:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field onchange="sumar();" data="suma" name="l4usoNuevasTecnologías" type="number"
             value="${valoracionInstance.l4usoNuevasTecnologías}"
             required=""/>

</div>
%{--fin--}%


%{--Trtamiento de temáticas transversales--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4participacionFemeninaEvento', 'error')} required">
    <label for="l4participacionFemeninaEvento">
        <g:message code="valoracion.l4participacionFemeninaEvento.label" default="Participación femenina:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field onchange="sumar();" data="suma" name="l4participacionFemeninaEvento" type="number"
             value="${valoracionInstance.l4participacionFemeninaEvento}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4experienciaSolicitante', 'error')} required">
    <label for="l4experienciaSolicitante">
        <g:message code="valoracion.l4experienciaSolicitante.label" default="Experiencia del solicitante:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field onchange="sumar();" data="suma" name="l4experienciaSolicitante" type="number"
             value="${valoracionInstance.l4experienciaSolicitante}"
             required=""/>
</div>
%{--fin--}%

