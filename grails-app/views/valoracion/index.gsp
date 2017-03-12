
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
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
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
					
						<g:sortableColumn property="l1antiguedad" title="${message(code: 'valoracion.l1antiguedad.label', default: 'L1antiguedad')}" />
					
						<g:sortableColumn property="l1centrosEscolares" title="${message(code: 'valoracion.l1centrosEscolares.label', default: 'L1centros Escolares')}" />
					
						<g:sortableColumn property="l1costesActividadDe" title="${message(code: 'valoracion.l1costesActividadDe.label', default: 'L1costes Actividad De')}" />
					
						<g:sortableColumn property="l1deporteEscolar" title="${message(code: 'valoracion.l1deporteEscolar.label', default: 'L1deporte Escolar')}" />
					
						<g:sortableColumn property="l1dificultadFinanciacion" title="${message(code: 'valoracion.l1dificultadFinanciacion.label', default: 'L1dificultad Financiacion')}" />
					
						<g:sortableColumn property="l1getxoKirolak" title="${message(code: 'valoracion.l1getxoKirolak.label', default: 'L1getxo Kirolak')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${valoracionInstanceList}" status="i" var="valoracionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${valoracionInstance.id}">${fieldValue(bean: valoracionInstance, field: "l1antiguedad")}</g:link></td>
					
						<td>${fieldValue(bean: valoracionInstance, field: "l1centrosEscolares")}</td>
					
						<td>${fieldValue(bean: valoracionInstance, field: "l1costesActividadDe")}</td>
					
						<td>${fieldValue(bean: valoracionInstance, field: "l1deporteEscolar")}</td>
					
						<td>${fieldValue(bean: valoracionInstance, field: "l1dificultadFinanciacion")}</td>
					
						<td>${fieldValue(bean: valoracionInstance, field: "l1getxoKirolak")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${valoracionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
