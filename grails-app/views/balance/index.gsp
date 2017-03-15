
<%@ page import="gobela21.Balance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'balance.label', default: 'Balance')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-balance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-balance" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="id" title="Id" />
					
						<g:sortableColumn property="gastosEjercicioAnterior" title="${message(code: 'balance.gastosEjercicioAnterior.label', default: 'Gastos Ejercicio Anterior')}" />
					
						<g:sortableColumn property="gastosEstimados" title="${message(code: 'balance.gastosEstimados.label', default: 'Gastos Estimados')}" />
					
						<g:sortableColumn property="ingresosEjercicioAnterior" title="${message(code: 'balance.ingresosEjercicioAnterior.label', default: 'Ingresos Ejercicio Anterior')}" />
					
						<g:sortableColumn property="ingresosEstimados" title="${message(code: 'balance.ingresosEstimados.label', default: 'Ingresos Estimados')}" />
					
						<g:sortableColumn property="dificultades" title="${message(code: 'balance.dificultades.label', default: 'Dificultades')}" />
					
						<g:sortableColumn property="clubConvenio" title="${message(code: 'balance.clubConvenio.label', default: 'Club Convenio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${balanceInstanceList}" status="i" var="balanceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${balanceInstance.id}">${fieldValue(bean: balanceInstance, field: "gastosEjercicioAnterior")}</g:link></td>
					
						<td>${fieldValue(bean: balanceInstance, field: "gastosEstimados")}</td>
					
						<td>${fieldValue(bean: balanceInstance, field: "ingresosEjercicioAnterior")}</td>
					
						<td>${fieldValue(bean: balanceInstance, field: "ingresosEstimados")}</td>
					
						<td>${fieldValue(bean: balanceInstance, field: "dificultades")}</td>
					
						<td>${fieldValue(bean: balanceInstance, field: "clubConvenio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${balanceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
