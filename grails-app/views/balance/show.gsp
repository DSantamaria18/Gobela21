
<%@ page import="gobela21.Balance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'balance.label', default: 'Balance')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-balance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-balance" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list balance">
			
				<g:if test="${balanceInstance?.gastosEjercicioAnterior}">
				<li class="fieldcontain">
					<span id="gastosEjercicioAnterior-label" class="property-label"><g:message code="balance.gastosEjercicioAnterior.label" default="Gastos Ejercicio Anterior" /></span>

						<span class="property-value" aria-labelledby="gastosEjercicioAnterior-label">
							%{--<g:fieldValue bean="${balanceInstance}" field="gastosEjercicioAnterior"/>--}%
							<g:formatNumber number="${balanceInstance.gastosEjercicioAnterior}" type="currency" currencyCode="EUR" />
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.gastosEstimados}">
				<li class="fieldcontain">
					<span id="gastosEstimados-label" class="property-label"><g:message code="balance.gastosEstimados.label" default="Gastos Estimados" /></span>
					
						<span class="property-value" aria-labelledby="gastosEstimados-label">
							<g:formatNumber number="${balanceInstance.gastosEstimados}" type="currency" currencyCode="EUR" />
							%{--<g:fieldValue bean="${balanceInstance}" field="gastosEstimados"/>--}%
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.ingresosEjercicioAnterior}">
				<li class="fieldcontain">
					<span id="ingresosEjercicioAnterior-label" class="property-label"><g:message code="balance.ingresosEjercicioAnterior.label" default="Ingresos Ejercicio Anterior" /></span>
					
						<span class="property-value" aria-labelledby="ingresosEjercicioAnterior-label">
							<g:formatNumber number="${balanceInstance.ingresosEjercicioAnterior}" type="currency" currencyCode="EUR" />
							%{--<g:fieldValue bean="${balanceInstance}" field="ingresosEjercicioAnterior"/>--}%
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.ingresosEstimados}">
				<li class="fieldcontain">
					<span id="ingresosEstimados-label" class="property-label"><g:message code="balance.ingresosEstimados.label" default="Ingresos Estimados" /></span>
					
						<span class="property-value" aria-labelledby="ingresosEstimados-label">
							%{--<g:fieldValue bean="${balanceInstance}" field="ingresosEstimados"/>--}%
							<g:formatNumber number="${balanceInstance.ingresosEstimados}" type="currency" currencyCode="EUR" />
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.dificultades}">
				<li class="fieldcontain">
					<span id="dificultades-label" class="property-label"><g:message code="balance.dificultades.label" default="Dificultades" /></span>
					
						<span class="property-value" aria-labelledby="dificultades-label"><g:fieldValue bean="${balanceInstance}" field="dificultades"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.clubConvenio}">
				<li class="fieldcontain">
					<span id="clubConvenio-label" class="property-label"><g:message code="balance.clubConvenio.label" default="Club Convenio" /></span>
					
						<span class="property-value" aria-labelledby="clubConvenio-label"><g:fieldValue bean="${balanceInstance}" field="clubConvenio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.aportacionConvenio}">
				<li class="fieldcontain">
					<span id="aportacionConvenio-label" class="property-label"><g:message code="balance.aportacionConvenio.label" default="Aportacion Convenio" /></span>
					
						<span class="property-value" aria-labelledby="aportacionConvenio-label">
							%{--<g:fieldValue bean="${balanceInstance}" field="aportacionConvenio"/>--}%
							<g:formatNumber number="${balanceInstance.aportacionConvenio}" type="currency" currencyCode="EUR" />
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.fechaInicioConvenio}">
				<li class="fieldcontain">
					<span id="fechaInicioConvenio-label" class="property-label"><g:message code="balance.fechaInicioConvenio.label" default="Fecha Inicio Convenio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicioConvenio-label"><g:formatDate date="${balanceInstance?.fechaInicioConvenio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.fechaFinConvenio}">
				<li class="fieldcontain">
					<span id="fechaFinConvenio-label" class="property-label"><g:message code="balance.fechaFinConvenio.label" default="Fecha Fin Convenio" /></span>
					
						<span class="property-value" aria-labelledby="fechaFinConvenio-label"><g:formatDate date="${balanceInstance?.fechaFinConvenio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${balanceInstance?.solicitud}">
				<li class="fieldcontain">
					<span id="solicitud-label" class="property-label"><g:message code="balance.solicitud.label" default="Solicitud" /></span>
					
						<span class="property-value" aria-labelledby="solicitud-label"><g:link controller="solicitud" action="show" id="${balanceInstance?.solicitud?.id}">${balanceInstance?.solicitud?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:balanceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${balanceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
