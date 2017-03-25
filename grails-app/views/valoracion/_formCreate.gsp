<%@ page import="gobela21.Valoracion" %>
%{--<h4>Desde FORM CREATE</h4>--}%


<input type="hidden" name="solicitud" value="${params.solicitudId}"/>
<input type="hidden" name="linea" value="${params.linea}"/>

<fieldset class="form">
    <div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'codigo', 'error')} required">
        <label for="solicitud">
            <g:message code="valoracion.solicitud.label" default="Solicitud:"/>
        </label> ${params.token}
    </div>
</fieldset>

<fieldset class="form">
    <g:if test="${params.linea == '1'}">
        <g:render template="form1"/>
    </g:if>
    <g:if test="${params.linea == '2'}">
        <g:render template="form2"/>
    </g:if>
    <g:if test="${params.linea == '3'}">
        <g:render template="form3"/>
    </g:if>
    <g:if test="${params.linea == '4'}">
        <g:render template="form4"/>
    </g:if>
    <g:if test="${params.linea == '5'}">
        <g:render template="form5"/>
    </g:if>
    <g:if test="${params.linea == '6'}">
        <g:render template="form6"/>
    </g:if>
    <g:if test="${params.linea == '7'}">
        <g:render template="form7"/>
    </g:if>
</fieldset>

<fieldset class="form">
    <div class="fieldcontain">
        <span id="puntuacion-label" class="property-label">
            <g:message code="valoracion.puntuacion.label" default="Puntuación total:"/>
        </span>
        <span class="property-value" aria-labelledby="puntuacion-label" id="puntuacion-value">0.0
        </span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'importeConcedido', 'error')} required">
        <label for="importeConcedido">
            <g:message code="valoracion.importeConcedido.label" default="Importe concedido:"/>
        </label>
        <g:field name="importeConcedido" value="${fieldValue(bean: valoracionInstance, field: 'importeConcedido')}"/>
        <span>€</span>
    </div>
</fieldset>

<g:javascript>
    $(document).ready(function(){
        sumar()
    });
</g:javascript>




















