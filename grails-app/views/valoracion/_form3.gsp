<%@ page import="gobela21.Valoracion" %>



<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l3categoriaFaseFinal', 'error')} required">
	<label for="l3categoriaFaseFinal">
		<g:message code="valoracion.l3categoriaFaseFinal.label" default="L3categoria Fase Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l3categoriaFaseFinal" type="number" value="${valoracionInstance.l3categoriaFaseFinal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l3resultadoObtenido', 'error')} required">
	<label for="l3resultadoObtenido">
		<g:message code="valoracion.l3resultadoObtenido.label" default="L3resultado Obtenido" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l3resultadoObtenido" type="number" value="${valoracionInstance.l3resultadoObtenido}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="valoracion.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>${params.solicitudId}
	%{--<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${valoracionInstance?.solicitud?.id}" class="many-to-one"/>--}%

</div>

