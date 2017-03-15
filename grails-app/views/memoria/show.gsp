
<%@ page import="gobela21.Memoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'memoria.label', default: 'Memoria')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-memoria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-memoria" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list memoria">
			
				<g:if test="${memoriaInstance?.situacion}">
				<li class="fieldcontain">
					<span id="situacion-label" class="property-label"><g:message code="memoria.situacion.label" default="Situacion" /></span>
					
						<span class="property-value" aria-labelledby="situacion-label"><g:fieldValue bean="${memoriaInstance}" field="situacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.retos}">
				<li class="fieldcontain">
					<span id="retos-label" class="property-label"><g:message code="memoria.retos.label" default="Retos" /></span>
					
						<span class="property-value" aria-labelledby="retos-label"><g:fieldValue bean="${memoriaInstance}" field="retos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.acciones}">
				<li class="fieldcontain">
					<span id="acciones-label" class="property-label"><g:message code="memoria.acciones.label" default="Acciones" /></span>
					
						<span class="property-value" aria-labelledby="acciones-label"><g:fieldValue bean="${memoriaInstance}" field="acciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.mejoras}">
				<li class="fieldcontain">
					<span id="mejoras-label" class="property-label"><g:message code="memoria.mejoras.label" default="Mejoras" /></span>
					
						<span class="property-value" aria-labelledby="mejoras-label"><g:fieldValue bean="${memoriaInstance}" field="mejoras"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.sistemas}">
				<li class="fieldcontain">
					<span id="sistemas-label" class="property-label"><g:message code="memoria.sistemas.label" default="Sistemas" /></span>
					
						<span class="property-value" aria-labelledby="sistemas-label"><g:fieldValue bean="${memoriaInstance}" field="sistemas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.tecnicos}">
				<li class="fieldcontain">
					<span id="tecnicos-label" class="property-label"><g:message code="memoria.tecnicos.label" default="Tecnicos" /></span>
					
						<span class="property-value" aria-labelledby="tecnicos-label"><g:fieldValue bean="${memoriaInstance}" field="tecnicos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.numDeportistas}">
				<li class="fieldcontain">
					<span id="numDeportistas-label" class="property-label"><g:message code="memoria.numDeportistas.label" default="Num Deportistas" /></span>
					
						<span class="property-value" aria-labelledby="numDeportistas-label"><g:fieldValue bean="${memoriaInstance}" field="numDeportistas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.numMujeres}">
				<li class="fieldcontain">
					<span id="numMujeres-label" class="property-label"><g:message code="memoria.numMujeres.label" default="Num Mujeres" /></span>
					
						<span class="property-value" aria-labelledby="numMujeres-label"><g:fieldValue bean="${memoriaInstance}" field="numMujeres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.numHombres}">
				<li class="fieldcontain">
					<span id="numHombres-label" class="property-label"><g:message code="memoria.numHombres.label" default="Num Hombres" /></span>
					
						<span class="property-value" aria-labelledby="numHombres-label"><g:fieldValue bean="${memoriaInstance}" field="numHombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.numResidentes}">
				<li class="fieldcontain">
					<span id="numResidentes-label" class="property-label"><g:message code="memoria.numResidentes.label" default="Num Residentes" /></span>
					
						<span class="property-value" aria-labelledby="numResidentes-label"><g:fieldValue bean="${memoriaInstance}" field="numResidentes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.politicaDeportiva}">
				<li class="fieldcontain">
					<span id="politicaDeportiva-label" class="property-label"><g:message code="memoria.politicaDeportiva.label" default="Politica Deportiva" /></span>
					
						<span class="property-value" aria-labelledby="politicaDeportiva-label"><g:fieldValue bean="${memoriaInstance}" field="politicaDeportiva"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.colaboraciones}">
				<li class="fieldcontain">
					<span id="colaboraciones-label" class="property-label"><g:message code="memoria.colaboraciones.label" default="Colaboraciones" /></span>
					
						<span class="property-value" aria-labelledby="colaboraciones-label"><g:fieldValue bean="${memoriaInstance}" field="colaboraciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.contribuciones}">
				<li class="fieldcontain">
					<span id="contribuciones-label" class="property-label"><g:message code="memoria.contribuciones.label" default="Contribuciones" /></span>
					
						<span class="property-value" aria-labelledby="contribuciones-label"><g:fieldValue bean="${memoriaInstance}" field="contribuciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memoriaInstance?.solicitud}">
				<li class="fieldcontain">
					<span id="solicitud-label" class="property-label"><g:message code="memoria.solicitud.label" default="Solicitud" /></span>
					
						<span class="property-value" aria-labelledby="solicitud-label"><g:link controller="solicitud" action="show" id="${memoriaInstance?.solicitud?.id}">${memoriaInstance?.solicitud?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memoriaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memoriaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
