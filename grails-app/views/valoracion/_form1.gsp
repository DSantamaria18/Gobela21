<%@ page import="gobela21.Valoracion" %>



<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1antiguedad', 'error')} required">
	<label for="l1antiguedad">
		<g:message code="valoracion.l1antiguedad.label" default="L1antiguedad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1antiguedad" type="number" value="${valoracionInstance.l1antiguedad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1centrosEscolares', 'error')} required">
	<label for="l1centrosEscolares">
		<g:message code="valoracion.l1centrosEscolares.label" default="L1centros Escolares" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1centrosEscolares" type="number" value="${valoracionInstance.l1centrosEscolares}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1costesActividadDe', 'error')} required">
	<label for="l1costesActividadDe">
		<g:message code="valoracion.l1costesActividadDe.label" default="L1costes Actividad De" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1costesActividadDe" type="number" value="${valoracionInstance.l1costesActividadDe}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1deporteEscolar', 'error')} required">
	<label for="l1deporteEscolar">
		<g:message code="valoracion.l1deporteEscolar.label" default="L1deporte Escolar" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1deporteEscolar" type="number" value="${valoracionInstance.l1deporteEscolar}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1dificultadFinanciacion', 'error')} required">
	<label for="l1dificultadFinanciacion">
		<g:message code="valoracion.l1dificultadFinanciacion.label" default="L1dificultad Financiacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1dificultadFinanciacion" type="number" value="${valoracionInstance.l1dificultadFinanciacion}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1getxoKirolak', 'error')} required">
	<label for="l1getxoKirolak">
		<g:message code="valoracion.l1getxoKirolak.label" default="L1getxo Kirolak" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1getxoKirolak" type="number" value="${valoracionInstance.l1getxoKirolak}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1marcaGetxo', 'error')} required">
	<label for="l1marcaGetxo">
		<g:message code="valoracion.l1marcaGetxo.label" default="L1marca Getxo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1marcaGetxo" type="number" value="${valoracionInstance.l1marcaGetxo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1mediosPropios', 'error')} required">
	<label for="l1mediosPropios">
		<g:message code="valoracion.l1mediosPropios.label" default="L1medios Propios" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1mediosPropios" type="number" value="${valoracionInstance.l1mediosPropios}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1otrosClubes', 'error')} required">
	<label for="l1otrosClubes">
		<g:message code="valoracion.l1otrosClubes.label" default="L1otros Clubes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1otrosClubes" type="number" value="${valoracionInstance.l1otrosClubes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaComarcal', 'error')} required">
	<label for="l1prensaComarcal">
		<g:message code="valoracion.l1prensaComarcal.label" default="L1prensa Comarcal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1prensaComarcal" type="number" value="${valoracionInstance.l1prensaComarcal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaEstatalInternacional', 'error')} required">
	<label for="l1prensaEstatalInternacional">
		<g:message code="valoracion.l1prensaEstatalInternacional.label" default="L1prensa Estatal Internacional" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1prensaEstatalInternacional" type="number" value="${valoracionInstance.l1prensaEstatalInternacional}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaLocal', 'error')} required">
	<label for="l1prensaLocal">
		<g:message code="valoracion.l1prensaLocal.label" default="L1prensa Local" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1prensaLocal" type="number" value="${valoracionInstance.l1prensaLocal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaRegional', 'error')} required">
	<label for="l1prensaRegional">
		<g:message code="valoracion.l1prensaRegional.label" default="L1prensa Regional" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1prensaRegional" type="number" value="${valoracionInstance.l1prensaRegional}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoCoherencia', 'error')} required">
	<label for="l1proyectoDeportivoCoherencia">
		<g:message code="valoracion.l1proyectoDeportivoCoherencia.label" default="L1proyecto Deportivo Coherencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1proyectoDeportivoCoherencia" type="number" value="${valoracionInstance.l1proyectoDeportivoCoherencia}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoDiversidad', 'error')} required">
	<label for="l1proyectoDeportivoDiversidad">
		<g:message code="valoracion.l1proyectoDeportivoDiversidad.label" default="L1proyecto Deportivo Diversidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1proyectoDeportivoDiversidad" type="number" value="${valoracionInstance.l1proyectoDeportivoDiversidad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoEuskera', 'error')} required">
	<label for="l1proyectoDeportivoEuskera">
		<g:message code="valoracion.l1proyectoDeportivoEuskera.label" default="L1proyecto Deportivo Euskera" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1proyectoDeportivoEuskera" type="number" value="${valoracionInstance.l1proyectoDeportivoEuskera}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoParticipacionFemenina', 'error')} required">
	<label for="l1proyectoDeportivoParticipacionFemenina">
		<g:message code="valoracion.l1proyectoDeportivoParticipacionFemenina.label" default="L1proyecto Deportivo Participacion Femenina" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1proyectoDeportivoParticipacionFemenina" type="number" value="${valoracionInstance.l1proyectoDeportivoParticipacionFemenina}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1residentes', 'error')} required">
	<label for="l1residentes">
		<g:message code="valoracion.l1residentes.label" default="L1residentes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l1residentes" type="number" value="${valoracionInstance.l1residentes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="valoracion.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label> ${params.solicitudId}
	%{--<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${valoracionInstance?.solicitud?.id}" class="many-to-one"/>--}%

</div>

