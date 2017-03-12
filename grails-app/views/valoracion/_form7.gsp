<%@ page import="gobela21.Valoracion" %>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7costeActividad', 'error')} required">
	<label for="l7costeActividad">
		<g:message code="valoracion.l7costeActividad.label" default="L7coste Actividad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7costeActividad" type="number" value="${valoracionInstance.l7costeActividad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7mediosPropios', 'error')} required">
	<label for="l7mediosPropios">
		<g:message code="valoracion.l7mediosPropios.label" default="L7medios Propios" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7mediosPropios" type="number" value="${valoracionInstance.l7mediosPropios}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7patrcinioPrivado', 'error')} required">
	<label for="l7patrcinioPrivado">
		<g:message code="valoracion.l7patrcinioPrivado.label" default="L7patrcinio Privado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7patrcinioPrivado" type="number" value="${valoracionInstance.l7patrcinioPrivado}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7prensaComarcal', 'error')} required">
	<label for="l7prensaComarcal">
		<g:message code="valoracion.l7prensaComarcal.label" default="L7prensa Comarcal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7prensaComarcal" type="number" value="${valoracionInstance.l7prensaComarcal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7prensaEstatal', 'error')} required">
	<label for="l7prensaEstatal">
		<g:message code="valoracion.l7prensaEstatal.label" default="L7prensa Estatal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7prensaEstatal" type="number" value="${valoracionInstance.l7prensaEstatal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7prensaLocal', 'error')} required">
	<label for="l7prensaLocal">
		<g:message code="valoracion.l7prensaLocal.label" default="L7prensa Local" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7prensaLocal" type="number" value="${valoracionInstance.l7prensaLocal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7prensaRegional', 'error')} required">
	<label for="l7prensaRegional">
		<g:message code="valoracion.l7prensaRegional.label" default="L7prensa Regional" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7prensaRegional" type="number" value="${valoracionInstance.l7prensaRegional}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="valoracion.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>${params.solicitudId}
	%{--<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${valoracionInstance?.solicitud?.id}" class="many-to-one"/>--}%

</div>

