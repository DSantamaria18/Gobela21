
<%@ page import="gobela21.Valoracion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'valoracion.label', default: 'Valoracion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-valoracion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="list-valoracion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="id" title="${message(code: 'valoracion.index.label', default: 'ID')}" />
						<g:sortableColumn property="solicitud" title="${message(code: 'valoracion.solicitud.label', default: 'Solicitud')}" />
						<g:sortableColumn property="entidad" title="${message(code: 'solicitud.entidad.label', default: 'Entidad / Solicitante')}" />
						<g:sortableColumn property="linea" title="${message(code: 'valoracion.linea.label', default: 'Línea')}" />
						<g:sortableColumn property="puntuacion" title="${message(code: 'valoracion.puntuacion.label', default: 'Puntos')}" />
						<g:sortableColumn property="importeConcedido" title="${message(code: 'valoracion.importeConcedido.label', default: 'Concedido')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${list}" status="i" var="valoracionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${valoracionInstance[0].id}">${valoracionInstance[0].id}</g:link></td>
						<td><g:link action="show" id="${valoracionInstance[0].solicitudId}">${valoracionInstance[0].solicitud}</g:link></td>
						<g:if test="${valoracionInstance[1] != null}">
							<td>${valoracionInstance[1]}</td>
						</g:if>
						<g:else>
							<td>${valoracionInstance[2]}</td>
						</g:else>
						<td>${valoracionInstance[0].linea}</td>
						%{--<td>${valoracionInstance[0].suma()}</td>--}%
						%{--${valoracionInstance.puntuacion}--}%
						<td>${fieldValue(bean: valoracionInstance[0], field: "puntuacion")} </td>
						<td>${g.formatNumber(number: valoracionInstance[0].importeConcedido, type: "currency", currencyCode: "EUR")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${valoracionInstanceCount ?: 0}" max="${params.max}"/>
			</div>
		</div>
	</body>
</html>
