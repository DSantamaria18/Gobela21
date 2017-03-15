<%@ page import="gobela21.Balance" %>



<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'gastosEjercicioAnterior', 'error')} required">
	<label for="gastosEjercicioAnterior">
		<g:message code="balance.gastosEjercicioAnterior.label" default="Gastos Ejercicio Anterior" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gastosEjercicioAnterior" value="${fieldValue(bean: balanceInstance, field: 'gastosEjercicioAnterior')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'gastosEstimados', 'error')} required">
	<label for="gastosEstimados">
		<g:message code="balance.gastosEstimados.label" default="Gastos Estimados" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gastosEstimados" value="${fieldValue(bean: balanceInstance, field: 'gastosEstimados')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'ingresosEjercicioAnterior', 'error')} required">
	<label for="ingresosEjercicioAnterior">
		<g:message code="balance.ingresosEjercicioAnterior.label" default="Ingresos Ejercicio Anterior" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ingresosEjercicioAnterior" value="${fieldValue(bean: balanceInstance, field: 'ingresosEjercicioAnterior')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'ingresosEstimados', 'error')} required">
	<label for="ingresosEstimados">
		<g:message code="balance.ingresosEstimados.label" default="Ingresos Estimados" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ingresosEstimados" value="${fieldValue(bean: balanceInstance, field: 'ingresosEstimados')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'dificultades', 'error')} required">
	<label for="dificultades">
		<g:message code="balance.dificultades.label" default="Dificultades" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="dificultades" cols="40" rows="5" maxlength="500" required="" value="${balanceInstance?.dificultades}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'clubConvenio', 'error')} required">
	<label for="clubConvenio">
		<g:message code="balance.clubConvenio.label" default="Club Convenio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clubConvenio" value="${balanceInstance?.clubConvenio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'aportacionConvenio', 'error')} required">
	<label for="aportacionConvenio">
		<g:message code="balance.aportacionConvenio.label" default="Aportacion Convenio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="aportacionConvenio" value="${fieldValue(bean: balanceInstance, field: 'aportacionConvenio')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'fechaInicioConvenio', 'error')} ">
	<label for="fechaInicioConvenio">
		<g:message code="balance.fechaInicioConvenio.label" default="Fecha Inicio Convenio" />
		
	</label>
	<g:datePicker name="fechaInicioConvenio" precision="day"  value="${balanceInstance?.fechaInicioConvenio}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'fechaFinConvenio', 'error')} ">
	<label for="fechaFinConvenio">
		<g:message code="balance.fechaFinConvenio.label" default="Fecha Fin Convenio" />
		
	</label>
	<g:datePicker name="fechaFinConvenio" precision="day"  value="${balanceInstance?.fechaFinConvenio}" default="none" noSelection="['': '']" />

</div>
<g:hiddenField name="solicitud.id" value="${balanceInstance?.solicitud?.id}" />

%{--<div class="fieldcontain ${hasErrors(bean: balanceInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="balance.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${balanceInstance?.solicitud?.id}" class="many-to-one"/>
</div>--}%

