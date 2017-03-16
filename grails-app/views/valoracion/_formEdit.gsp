<%@ page import="gobela21.Valoracion" %>
%{--<h4>Desde FORM EDIT</h4>--}%

<fieldset class="form">
    <div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'codigo', 'error')} required">
        <span id="l6prensaEstatal-label" class="property-label">
            <g:message code="valoracion.solicitud.label" default="Número de solicitud:"/>
        </span>
        <span class="property-value" aria-labelledby="solicitud-label">
            <g:fieldValue bean="${valoracionInstance}" field="solicitud"/></span>
    </div>
    <g:hiddenField name="version" value="${valoracionInstance?.version}"/>
</fieldset>

<fieldset class="form">
    <g:if test="${valoracionInstance.linea == 1}">
        <g:render template="form1"/>
    </g:if>
    <g:if test="${valoracionInstance.linea == 2}">
        <g:render template="form2"/>
    </g:if>
    <g:if test="${valoracionInstance.linea == 3}">
        <g:render template="form3"/>
    </g:if>
    <g:if test="${valoracionInstance.linea == 4}">
        <g:render template="form4"/>
    </g:if>
    <g:if test="${valoracionInstance.linea == 5}">
        <g:render template="form5"/>
    </g:if>
    <g:if test="${valoracionInstance.linea == 6}">
        <g:render template="form6"/>
    </g:if>
    <g:if test="${valoracionInstance.linea == 7}">
        <g:render template="form7"/>
    </g:if>
</fieldset>

<fieldset class="form">
    <div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'importeConcedido', 'error')} required">
        <label for="importeConcedido">
            <g:message code="valoracion.importeConcedido.label" default="Importe concedido:"/>
        </label>
        <g:field name="importeConcedido" value="${fieldValue(bean: valoracionInstance, field: 'importeConcedido')}"/>
        <span>€</span>
    </div>
</fieldset>





















