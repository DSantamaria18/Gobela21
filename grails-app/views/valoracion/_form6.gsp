<%@ page import="gobela21.Valoracion" %>


<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6costeActividad', 'error')} required">
	<label for="l6costeActividad">
		<g:message code="valoracion.l6costeActividad.label" default="L6coste Actividad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l6costeActividad" type="number" value="${valoracionInstance.l6costeActividad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6mediosPropios', 'error')} required">
	<label for="l6mediosPropios">
		<g:message code="valoracion.l6mediosPropios.label" default="L6medios Propios" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l6mediosPropios" type="number" value="${valoracionInstance.l6mediosPropios}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6patrcinioPrivado', 'error')} required">
	<label for="l6patrcinioPrivado">
		<g:message code="valoracion.l6patrcinioPrivado.label" default="L6patrcinio Privado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l6patrcinioPrivado" type="number" value="${valoracionInstance.l6patrcinioPrivado}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6prensaComarcal', 'error')} required">
	<label for="l6prensaComarcal">
		<g:message code="valoracion.l6prensaComarcal.label" default="L6prensa Comarcal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l6prensaComarcal" type="number" value="${valoracionInstance.l6prensaComarcal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6prensaEstatal', 'error')} required">
	<label for="l6prensaEstatal">
		<g:message code="valoracion.l6prensaEstatal.label" default="L6prensa Estatal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l6prensaEstatal" type="number" value="${valoracionInstance.l6prensaEstatal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6prensaLocal', 'error')} required">
	<label for="l6prensaLocal">
		<g:message code="valoracion.l6prensaLocal.label" default="L6prensa Local" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l6prensaLocal" type="number" value="${valoracionInstance.l6prensaLocal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6prensaRegional', 'error')} required">
	<label for="l6prensaRegional">
		<g:message code="valoracion.l6prensaRegional.label" default="L6prensa Regional" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l6prensaRegional" type="number" value="${valoracionInstance.l6prensaRegional}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="valoracion.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>${params.solicitudId}
	%{--<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${valoracionInstance?.solicitud?.id}" class="many-to-one"/>--}%

</div>

