<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 26/03/2017
  Time: 17:41
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Estadísticas</title>
    %{--<r:require module="export"/>--}%
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
        %{--<li><g:link class="create" action="create">Nueva Solicitud</g:link></li>--}%
    </ul>
</div>
<g:each in="${resultList}" var="resultado" status="i">
    <g:if test="${resultado.size() > 0}">
        <div class="queryResult" id="resultDivL${i}">
            <br>
            <h4>SUBVENCIONES LINEA ${i+1}</h4>
            <br>
            <table>
                <thead>
                <tr>
                    <g:each in="${resultado[0].keySet()}" var="header">
                        <g:sortableColumn property="header${i}" title="${header}" />
                    </g:each>
                </tr>
                </thead>
                <tbody>
                <g:each in="${resultado}" var="fila" status="j">
                    <tr class="${(j % 2) == 0 ? 'even' : 'odd'}">
                        <td>${fila.entidad}</td>
                        <td>${fila.solicitante}</td>
                        <td><g:formatNumber number="${fila.concedido}" type="currency" currencyCode="EUR"/></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <fieldset class="buttons">
                <g:link class="edit" controller="estadisticas" action="exportar" params="[format:'excel', extension:'xls']">EXPORTAR</g:link>
            </fieldset>

        </div>
    </g:if>
</g:each>

%{--<div class="queryResult" id="resultDivL2">
    <br>
    <h4>SUBVENCIONES LINEA 2 (Competición)</h4>
    <br>
    <table>
        <thead>
        <tr>
            <g:each in="${headersL2}" var="header">
                <g:sortableColumn property="header" title="${header}" />
            </g:each>
        </tr>
        </thead>
        <tbody>
        <g:each in="${resultadoL2}" var="fila" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fila.entidad}</td>
                <td>${fila.solicitante}</td>
                <td><g:formatNumber number="${fila.concedido}" type="currency" currencyCode="EUR"/></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<div class="queryResult" id="resultDivL3">
    <br>
    <h4>SUBVENCIONES LINEA 3 (Sobrevenidas)</h4>
    <br>
    <table>
        <thead>
        <tr>
            <g:each in="${headers}" var="header">
                <g:sortableColumn property="header" title="${header}" />
            </g:each>
        </tr>
        </thead>
        <tbody>
        <g:each in="${resultado}" var="fila" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fila.entidad}</td>
                <td>${fila.solicitante}</td>
                <td><g:formatNumber number="${fila.concedido}" type="currency" currencyCode="EUR"/></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<div class="queryResult" id="resultDivL4">
    <br>
    <h4>SUBVENCIONES LINEA 4 (Eventos)</h4>
    <br>
    <table>
        <thead>
        <tr>
            <g:each in="${headersL4}" var="header">
                <g:sortableColumn property="header" title="${header}" />
            </g:each>
        </tr>
        </thead>
        <tbody>
        <g:each in="${resultadoL4}" var="fila" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fila.entidad}</td>
                <td>${fila.solicitante}</td>
                <td><g:formatNumber number="${fila.concedido}" type="currency" currencyCode="EUR"/></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<div class="queryResult" id="resultDivL5">
    <br>
    <h4>SUBVENCIONES LINEA 5 (Deporte Autóctono)</h4>
    <br>
    <table>
        <thead>
        <tr>
            <g:each in="${headersL5}" var="header">
                <g:sortableColumn property="header" title="${header}" />
            </g:each>
        </tr>
        </thead>
        <tbody>
        <g:each in="${resultadoL5}" var="fila" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fila.entidad}</td>
                <td>${fila.solicitante}</td>
                <td><g:formatNumber number="${fila.concedido}" type="currency" currencyCode="EUR"/></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<div class="queryResult" id="resultDivL6">
    <br>
    <h4>SUBVENCIONES LINEA 6 (Deporte Extremo)</h4>
    <br>
    <table>
        <thead>
        <tr>
            <g:each in="${headersL6}" var="header">
                <g:sortableColumn property="header" title="${header}" />
            </g:each>
        </tr>
        </thead>
        <tbody>
        <g:each in="${resultadoL6}" var="fila" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fila.entidad}</td>
                <td>${fila.solicitante}</td>
                <td><g:formatNumber number="${fila.concedido}" type="currency" currencyCode="EUR"/></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<div class="queryResult" id="resultDivL4">
    <br>
    <h4>SUBVENCIONES LINEA 7 (Actividades en fiestas)</h4>
    <br>
    <table>
        <thead>
        <tr>
            <g:each in="${headersL7}" var="header">
                <g:sortableColumn property="header" title="${header}" />
            </g:each>
        </tr>
        </thead>
        <tbody>
        <g:each in="${resultadoL7}" var="fila" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fila.entidad}</td>
                <td>${fila.solicitante}</td>
                <td><g:formatNumber number="${fila.concedido}" type="currency" currencyCode="EUR"/></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>--}%
</body>
</html>