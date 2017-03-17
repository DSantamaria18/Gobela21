
<%@ page import="gobela21.Solicitud" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solicitud.label', default: 'Solicitud')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-solicitud" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
				<li><g:link class="create" action="create">Nueva Solicitud</g:link></li>
			</ul>
		</div>
		<div id="list-solicitud" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="codigo" title="${message(code: 'solicitud.codigo.label', default: 'Codigo')}" />
						<g:sortableColumn property="nombreSolicitante" title="${message(code: 'solicitud.nombreSolicitante.label', default: 'Nombre Solicitante')}" />
						<g:sortableColumn property="nombreEntidad" title="${message(code: 'solicitud.nombreEntidad.label', default: 'Entidad')}" />
						<g:sortableColumn property="linea" title="${message(code: 'solicitud.linea.label', default: 'Línea')}" />
						<g:sortableColumn property="importeSolicitado" title="${message(code: 'solicitud.importeSolicitado.label', default: 'Importe Solicitado')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${solicitudInstanceList}" status="i" var="solicitudInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${solicitudInstance.id}">${fieldValue(bean: solicitudInstance, field: "codigo")}</g:link></td>
						<td>${fieldValue(bean: solicitudInstance, field: "nombreSolicitante")}</td>
						<td>${fieldValue(bean: solicitudInstance, field: "nombreEntidad")}</td>
						<td>${fieldValue(bean: solicitudInstance, field: "linea")}</td>
						<td>${g.formatNumber(number: solicitudInstance.importeSolicitado, type: "currency", currencyCode: "EUR")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${solicitudInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
