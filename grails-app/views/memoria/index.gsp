
<%@ page import="gobela21.Memoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'memoria.label', default: 'Memoria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-memoria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-memoria" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="situacion" title="${message(code: 'memoria.situacion.label', default: 'Situacion')}" />
					
						<g:sortableColumn property="retos" title="${message(code: 'memoria.retos.label', default: 'Retos')}" />
					
						<g:sortableColumn property="acciones" title="${message(code: 'memoria.acciones.label', default: 'Acciones')}" />
					
						<g:sortableColumn property="mejoras" title="${message(code: 'memoria.mejoras.label', default: 'Mejoras')}" />
					
						<g:sortableColumn property="sistemas" title="${message(code: 'memoria.sistemas.label', default: 'Sistemas')}" />
					
						<g:sortableColumn property="tecnicos" title="${message(code: 'memoria.tecnicos.label', default: 'Tecnicos')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memoriaInstanceList}" status="i" var="memoriaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${memoriaInstance.id}">${fieldValue(bean: memoriaInstance, field: "situacion")}</g:link></td>
					
						<td>${fieldValue(bean: memoriaInstance, field: "retos")}</td>
					
						<td>${fieldValue(bean: memoriaInstance, field: "acciones")}</td>
					
						<td>${fieldValue(bean: memoriaInstance, field: "mejoras")}</td>
					
						<td>${fieldValue(bean: memoriaInstance, field: "sistemas")}</td>
					
						<td>${fieldValue(bean: memoriaInstance, field: "tecnicos")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memoriaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
