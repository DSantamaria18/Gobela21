<%@ page import="gobela21.Valoracion" %>

%{--Participación en la actividad--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4propioClub', 'error')} required">
    <label for="l4propioClub">
        <g:message code="valoracion.l4propioClub.label" default="Propio club:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4propioClub" type="number" value="${valoracionInstance.l4propioClub}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4otrosClubes', 'error')} required">
    <label for="l4otrosClubes">
        <g:message code="valoracion.l4otrosClubes.label" default="Otros clubes:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4otrosClubes" type="number" value="${valoracionInstance.l4otrosClubes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4ampas', 'error')} required">
    <label for="l4ampas">
        <g:message code="valoracion.l4ampas.label" default="AMPAS:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4ampas" type="number" value="${valoracionInstance.l4ampas}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4categoriasEscolares', 'error')} required">
    <label for="l4categoriasEscolares">
        <g:message code="valoracion.l4categoriasEscolares.label" default="Categorias escolares:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4categoriasEscolares" type="number" value="${valoracionInstance.l4categoriasEscolares}"
             required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4categoriasFederadas', 'error')} required">
    <label for="l4categoriasFederadas">
        <g:message code="valoracion.l4categoriasFederadas.label" default="Categorias federadas:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4categoriasFederadas" type="number" value="${valoracionInstance.l4categoriasFederadas}"
             required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4veteranos', 'error')} required">
    <label for="l4veteranos">
        <g:message code="valoracion.l4veteranos.label" default="Personas veteranas:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4veteranos" type="number" value="${valoracionInstance.l4veteranos}" required=""/>
</div>
%{--fin--}%

%{--Adecuación del presupuesto--}%

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4desviacion', 'error')} required">
    <label for="l4desviacion">
        <g:message code="valoracion.l4desviacion.label" default="Desviación del presupuesto:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4desviacion" type="number" value="${valoracionInstance.l4desviacion}" required=""/>
</div>
%{--fin--}%

%{--Calidad del diseño de la actividad--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4participacionEstimada', 'error')} required">
    <label for="l4participacionEstimada">
        <g:message code="valoracion.l4participacionEstimada.label" default="Participacion estimada:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4participacionEstimada" type="number" value="${valoracionInstance.l4participacionEstimada}"
             required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4comunicacionAMedios', 'error')} required">
    <label for="l4comunicacionAMedios">
        <g:message code="valoracion.l4comunicacionAMedios.label" default="Comunicación a medios:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4comunicacionAMedios" type="number" value="${valoracionInstance.l4comunicacionAMedios}"
             required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4usoNuevasTecnologías', 'error')} required">
    <label for="l4usoNuevasTecnologías">
        <g:message code="valoracion.l4usoNuevasTecnologías.label" default="Uso de nuevas tecnologías:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4usoNuevasTecnologías" type="number" value="${valoracionInstance.l4usoNuevasTecnologías}"
             required=""/>

</div>
%{--fin--}%


%{--Trtamiento de temáticas transversales--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4participacionFemeninaEvento', 'error')} required">
    <label for="l4participacionFemeninaEvento">
        <g:message code="valoracion.l4participacionFemeninaEvento.label" default="Participación femenina:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4participacionFemeninaEvento" type="number"
             value="${valoracionInstance.l4participacionFemeninaEvento}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l4experienciaSolicitante', 'error')} required">
    <label for="l4experienciaSolicitante">
        <g:message code="valoracion.l4experienciaSolicitante.label" default="Experiencia del solicitante:"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="l4experienciaSolicitante" type="number" value="${valoracionInstance.l4experienciaSolicitante}"
             required=""/>
</div>
%{--fin--}%

