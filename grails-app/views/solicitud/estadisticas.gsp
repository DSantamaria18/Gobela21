<%@ page import="gobela21.Solicitud" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'solicitud.label', default: 'Solicitud')}"/>
    <title>Estadísticas</title>
</head>

<body>
<a href="#list-solicitud" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="informeAnual">Informe Anual</g:link></li>
        %{--<li><g:link class="list" action="create">Informe Semestral</g:link></li>--}%
    </ul>
</div>

<div id="list-solicitud" class="content scaffold-list" role="main">
    <h1>Resultados</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    %{--<div id="query-builder" class="content scaffold-list" role="main">
        <g:form url="[resource: buildedQuery, action: 'filtrar']" method="POST">
            <fieldset class="queryForm">
                <g:render template="queryForm"/>
            </fieldset>
            <fieldset class="buttons">
                <g:actionSubmit class="save" action="filtrar" value="Filtrar"/>
            </fieldset>
        </g:form>
    </div>--}%
    <table>
        <thead>
        <tr>
            <g:sortableColumn property="codigo" title="${message(code: 'solicitud.codigo.label', default: 'Codigo')}"/>
            <g:sortableColumn property="nombreSolicitante" title="${message(code: 'solicitud.nombreSolicitante.label', default: 'Nombre Solicitante')}"/>
            <g:sortableColumn property="solicitanteId" title="${message(code: 'solicitud.solicitanteId.label', default: 'Solicitante Id')}"/>
            <g:sortableColumn property="municipioSolicitante" title="${message(code: 'solicitud.municipioSolicitante.label', default: 'Municipio Solicitante')}"/>
            <g:sortableColumn property="cpSolicitante" title="${message(code: 'solicitud.cpSolicitante.label', default: 'Cp Solicitante')}"/>
            <g:sortableColumn property="emailSolicitante" title="${message(code: 'solicitud.emailSolicitante.label', default: 'Email Solicitante')}"/>
        </tr>
        </thead>
        <tbody>
        <g:each in="${solicitudInstanceList}" status="i" var="solicitudInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td><g:link action="show" id="${solicitudInstance.id}">${fieldValue(bean: solicitudInstance, field: "codigo")}</g:link></td>
                <td>${fieldValue(bean: solicitudInstance, field: "nombreSolicitante")}</td>
                <td>${fieldValue(bean: solicitudInstance, field: "solicitanteId")}</td>
                <td>${fieldValue(bean: solicitudInstance, field: "municipioSolicitante")}</td>
                <td>${fieldValue(bean: solicitudInstance, field: "cpSolicitante")}</td>
                <td>${fieldValue(bean: solicitudInstance, field: "emailSolicitante")}</td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${solicitudInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
