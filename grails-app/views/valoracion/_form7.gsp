<%@ page import="gobela21.Valoracion" %>

%{--Repercusión mediática--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7prensaLocal', 'error')} required">
	<label for="l7prensaLocal">
		<g:message code="valoracion.l7prensaLocal.label" default="Aparición en prensa local:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7prensaLocal" type="number" value="${valoracionInstance.l7prensaLocal}" required="" onchange="sumar();" data="suma"/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7prensaComarcal', 'error')} required">
	<label for="l7prensaComarcal">
		<g:message code="valoracion.l7prensaComarcal.label" default="Aparición en prensa comarcal:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7prensaComarcal" type="number" value="${valoracionInstance.l7prensaComarcal}" required="" onchange="sumar();" data="suma"/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7prensaRegional', 'error')} required">
	<label for="l7prensaRegional">
		<g:message code="valoracion.l7prensaRegional.label" default="Aparición en prensa regional:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7prensaRegional" type="number" value="${valoracionInstance.l7prensaRegional}" required="" onchange="sumar();" data="suma"/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7prensaEstatal', 'error')} required">
	<label for="l7prensaEstatal">
		<g:message code="valoracion.l7prensaEstatal.label" default="Aparición en prensa estatal:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7prensaEstatal" type="number" value="${valoracionInstance.l7prensaEstatal}" required="" onchange="sumar();" data="suma"/>

</div>
%{--fin--}%

%{--Costes actividad desarrollada--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7costeActividad', 'error')} required">
	<label for="l7costeActividad">
		<g:message code="valoracion.l7costeActividad.label" default="Coste de la actividad:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7costeActividad" type="number" value="${valoracionInstance.l7costeActividad}" required="" onchange="sumar();" data="suma"/>

</div>
%{--fin--}%

%{--Medios económicos propios--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7mediosPropios', 'error')} required">
	<label for="l7mediosPropios">
		<g:message code="valoracion.l7mediosPropios.label" default="Medios propios:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7mediosPropios" type="number" value="${valoracionInstance.l7mediosPropios}" required="" onchange="sumar();" data="suma"/>

</div>
%{--fin--}%

%{--Dificultad para acudir a otros medios de financiación--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l7patrcinioPrivado', 'error')} required">
	<label for="l7patrcinioPrivado">
		<g:message code="valoracion.l7patrcinioPrivado.label" default="Patrcinio privado:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l7patrcinioPrivado" type="number" value="${valoracionInstance.l7patrcinioPrivado}" required="" onchange="sumar();" data="suma"/>
</div>
%{--fin--}%

