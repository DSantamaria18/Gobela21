
<%@ page import="gobela21.Justificacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'justificacion.label', default: 'Justificacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-justificacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" controller="solicitud" action="index">Lista Solicitudes</g:link></li>

				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-justificacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list justificacion">
			
				<g:if test="${justificacionInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="justificacion.codigo.label" default="Número de justificación:" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${justificacionInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${justificacionInstance?.importeRecibido}">
				<li class="fieldcontain">
					<span id="importeRecibido-label" class="property-label"><g:message code="justificacion.importeRecibido.label" default="Importe recibido:" /></span>
					
						<span class="property-value" aria-labelledby="importeRecibido-label">
							%{--<g:fieldValue bean="${justificacionInstance}" field="importeRecibido"/>--}%
							<g:formatNumber number="${justificacionInstance.importeRecibido}" type="currency" currencyCode="EUR" />

						</span>
					
				</li>
				</g:if>
			
				<g:if test="${justificacionInstance?.importeJustificado}">
				<li class="fieldcontain">
					<span id="importeJustificado-label" class="property-label"><g:message code="justificacion.importeJustificado.label" default="Importe justificado:" /></span>
					
						<span class="property-value" aria-labelledby="importeJustificado-label">
							%{--<g:fieldValue bean="${justificacionInstance}" field="importeJustificado"/>--}%
							<g:formatNumber number="${justificacionInstance.importeJustificado}" type="currency" currencyCode="EUR" />
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${justificacionInstance?.solicitud}">
				<li class="fieldcontain">
					<span id="solicitud-label" class="property-label"><g:message code="justificacion.solicitud.label" default="Solicitud" /></span>
					
						<span class="property-value" aria-labelledby="solicitud-label"><g:link controller="solicitud" action="show" id="${justificacionInstance?.solicitud?.id}">${justificacionInstance?.solicitud?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:justificacionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${justificacionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Estás seguro/a?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
