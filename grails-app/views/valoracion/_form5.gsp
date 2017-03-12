<%@ page import="gobela21.Valoracion" %>


<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5comunicacionAMedios', 'error')} required">
	<label for="l5comunicacionAMedios">
		<g:message code="valoracion.l5comunicacionAMedios.label" default="L5comunicacion AM edios" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l5comunicacionAMedios" type="number" value="${valoracionInstance.l5comunicacionAMedios}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5experienciaSolicitante', 'error')} required">
	<label for="l5experienciaSolicitante">
		<g:message code="valoracion.l5experienciaSolicitante.label" default="L5experiencia Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l5experienciaSolicitante" type="number" value="${valoracionInstance.l5experienciaSolicitante}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5numeroEspectadores', 'error')} required">
	<label for="l5numeroEspectadores">
		<g:message code="valoracion.l5numeroEspectadores.label" default="L5numero Espectadores" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l5numeroEspectadores" type="number" value="${valoracionInstance.l5numeroEspectadores}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5participacionEstimada', 'error')} required">
	<label for="l5participacionEstimada">
		<g:message code="valoracion.l5participacionEstimada.label" default="L5participacion Estimada" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l5participacionEstimada" type="number" value="${valoracionInstance.l5participacionEstimada}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5participacionFemenina', 'error')} required">
	<label for="l5participacionFemenina">
		<g:message code="valoracion.l5participacionFemenina.label" default="L5participacion Femenina" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l5participacionFemenina" type="number" value="${valoracionInstance.l5participacionFemenina}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5recursosPropios', 'error')} required">
	<label for="l5recursosPropios">
		<g:message code="valoracion.l5recursosPropios.label" default="L5recursos Propios" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l5recursosPropios" type="number" value="${valoracionInstance.l5recursosPropios}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5usoNuevasTecnologías', 'error')} required">
	<label for="l5usoNuevasTecnologías">
		<g:message code="valoracion.l5usoNuevasTecnologías.label" default="L5uso Nuevas Tecnologías" />
		<span class="required-indicator">*</span>
	</label>${params.solicitudId}
	%{--<g:field name="l5usoNuevasTecnologías" type="number" value="${valoracionInstance.l5usoNuevasTecnologías}" required=""/>--}%

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="valoracion.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>${params.solicitudId}
	%{--<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${valoracionInstance?.solicitud?.id}" class="many-to-one"/>--}%

</div>

