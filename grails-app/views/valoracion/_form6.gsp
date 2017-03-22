<%@ page import="gobela21.Valoracion" %>

%{--Repercusión mediática--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6prensaLocal', 'error')} required">
	<label for="l6prensaLocal">
		<g:message code="valoracion.l6prensaLocal.label" default="Aparición en prensa local:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l6prensaLocal" type="number" value="${valoracionInstance.l6prensaLocal}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6prensaComarcal', 'error')} required">
	<label for="l6prensaComarcal">
		<g:message code="valoracion.l6prensaComarcal.label" default="Aparición en prensa comarcal:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l6prensaComarcal" type="number" value="${valoracionInstance.l6prensaComarcal}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6prensaRegional', 'error')} required">
	<label for="l6prensaRegional">
		<g:message code="valoracion.l6prensaRegional.label" default="Aparición en prensa regional:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l6prensaRegional" type="number" value="${valoracionInstance.l6prensaRegional}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6prensaEstatal', 'error')} required">
	<label for="l6prensaEstatal">
		<g:message code="valoracion.l6prensaEstatal.label" default="Aparición en prensa estatal:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l6prensaEstatal" type="number" value="${valoracionInstance.l6prensaEstatal}" required=""/>
</div>
%{--fin--}%

%{--Costes actividad--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6costeActividad', 'error')} required">
	<label for="l6costeActividad">
		<g:message code="valoracion.l6costeActividad.label" default="Costes de la actividad:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l6costeActividad" type="number" value="${valoracionInstance.l6costeActividad}" required=""/>
</div>
%{--fin--}%

%{--Medios económicos propios--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6mediosPropios', 'error')} required">
	<label for="l6mediosPropios">
		<g:message code="valoracion.l6mediosPropios.label" default="Medios económicos propios:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l6mediosPropios" type="number" value="${valoracionInstance.l6mediosPropios}" required=""/>
</div>
%{--fin--}%

%{--Dificultad para acudir a otros medios de financiación--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l6patrcinioPrivado', 'error')} required">
	<label for="l6patrcinioPrivado">
		<g:message code="valoracion.l6patrcinioPrivado.label" default="Patrocinio Privado:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field onchange="sumar();" data="suma" name="l6patrcinioPrivado" type="number" value="${valoracionInstance.l6patrcinioPrivado}" required=""/>
</div>

