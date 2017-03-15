<%@ page import="gobela21.Valoracion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'valoracion.label', default: 'Valoracion')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-valoracion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="edit-valoracion" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${valoracionInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${valoracionInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:valoracionInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${valoracionInstance?.version}" />
				<fieldset class="form">
					<g:if test="${valoracionInstance.linea == '1'}">
						<g:render template="form1"/>
					</g:if>
					<g:if test="${valoracionInstance.linea == '2'}">
						<g:render template="form2"/>
					</g:if>
					<g:if test="${valoracionInstance.linea == '3'}">
						<g:render template="form3"/>
					</g:if>
					<g:if test="${valoracionInstance.linea == '4'}">
						<g:render template="form4"/>
					</g:if>
					<g:if test="${valoracionInstance.linea == '5'}">
						<g:render template="form5"/>
					</g:if>
					<g:if test="${valoracionInstance.linea == '6'}">
						<g:render template="form6"/>
					</g:if>
					<g:if test="${valoracionInstance.linea == '7'}">
						<g:render template="form7"/>
					</g:if>
				</fieldset>
				<fieldset class="form">
					<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'importeConcedido', 'error')} required">
						<label for="importeConcedido">
							<g:message code="valoracion.importeConcedido.label" default="importeConcedido"/>
						</label>
						<g:field name="importeConcedido" value="${valoracionInstance.importeConcedido}"
								 required=""/>
					</div>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
