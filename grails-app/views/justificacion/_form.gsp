<%@ page import="gobela21.Justificacion" %>



<div class="fieldcontain ${hasErrors(bean: justificacionInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="justificacion.codigo.label" default="Número de justificación:" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	<g:textField name="codigo" required="" value="${justificacionInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: justificacionInstance, field: 'importeRecibido', 'error')} required">
	<label for="importeRecibido">
		<g:message code="justificacion.importeRecibido.label" default="Importe Recibido:" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	<g:field name="importeRecibido" value="${fieldValue(bean: justificacionInstance, field: 'importeRecibido')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: justificacionInstance, field: 'importeJustificado', 'error')} required">
	<label for="importeJustificado">
		<g:message code="justificacion.importeJustificado.label" default="Importe Justificado:" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	<g:field name="importeJustificado" value="${fieldValue(bean: justificacionInstance, field: 'importeJustificado')}" required=""/>

</div>

