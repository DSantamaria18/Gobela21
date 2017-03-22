<%@ page import="gobela21.Valoracion" %>


<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5numeroEspectadores', 'error')} required">
	<label for="l5numeroEspectadores">
		<g:message code="valoracion.l5numeroEspectadores.label" default="Impacto de la actividad:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l5numeroEspectadores" type="number" value="${valoracionInstance.l5numeroEspectadores}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5recursosPropios', 'error')} required">
	<label for="l5recursosPropios">
		<g:message code="valoracion.l5recursosPropios.label" default="Adecuación del presupuesto:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l5recursosPropios" type="number" value="${valoracionInstance.l5recursosPropios}" required=""/>
</div>

%{--Calidad en el diseño de la actividad--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5participacionEstimada', 'error')} required">
	<label for="l5participacionEstimada">
		<g:message code="valoracion.l5participacionEstimada.label" default="Inclusión de resultados esperados:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l5participacionEstimada" type="number" value="${valoracionInstance.l5participacionEstimada}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5comunicacionAMedios', 'error')} required">
	<label for="l5comunicacionAMedios">
		<g:message code="valoracion.l5comunicacionAMedios.label" default="Comunicación a medios:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l5comunicacionAMedios" type="number" value="${valoracionInstance.l5comunicacionAMedios}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5usoNuevasTecnologías', 'error')} required">
	<label for="l5usoNuevasTecnologías">
		<g:message code="valoracion.l5usoNuevasTecnologías.label" default="Uso de nuevas tecnologías:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l5usoNuevasTecnologías" type="number" value="${valoracionInstance.l5usoNuevasTecnologías}" required=""/>
</div>
%{--fin--}%

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5participacionFemenina', 'error')} required">
	<label for="l5participacionFemenina">
		<g:message code="valoracion.l5participacionFemenina.label" default="Participación femenina:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l5participacionFemenina" type="number" value="${valoracionInstance.l5participacionFemenina}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l5experienciaSolicitante', 'error')} required">
	<label for="l5experienciaSolicitante">
		<g:message code="valoracion.l5experienciaSolicitante.label" default="Valoración solicitante:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l5experienciaSolicitante" type="number" value="${valoracionInstance.l5experienciaSolicitante}" required=""/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="valoracion.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>${params.solicitudId}
	--}%%{--<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${valoracionInstance?.solicitud?.id}" class="many-to-one"/>--}%%{--

</div>--}%

