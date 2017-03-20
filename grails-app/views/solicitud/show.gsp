<%@ page import="gobela21.Solicitud" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'solicitud.label', default: 'Solicitud')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-solicitud" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>--}%
        %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>--}%
        <li><g:link class="list" action="index">Lista Solicitudes</g:link></li>
        <li><g:link class="create" action="create">Nueva Solicitud</g:link></li>
        <g:if test="${!solicitudInstance?.balance}">
            <li><g:link class="create" controller="balance" action="create"
                        params="['solicitudId': solicitudInstance.id,
                                 'token'      : solicitudInstance.codigo,
                                 'linea'      : solicitudInstance.linea]">${message(code: 'default.add.label', args: [message(code: 'balance.label', default: 'Balance')])}</g:link></li>
        </g:if>
        <g:if test="${!solicitudInstance?.memoria}">
            <li><g:link class="create" controller="memoria" action="create"
                        params="['solicitudId': solicitudInstance.id,
                                 'token'      : solicitudInstance.codigo,
                                 'linea'      : solicitudInstance.linea]">${message(code: 'default.add.label', args: [message(code: 'memoria.label', default: 'Memoria')])}</g:link></li>
        </g:if>
        <g:if test="${!solicitudInstance?.valoracion}">
            <li><g:link class="create" controller="valoracion" action="create"
                        params="['solicitudId': solicitudInstance.id,
                                 'token'      : solicitudInstance.codigo,
                                 'linea'      : solicitudInstance.linea]">${message(code: 'default.add.label', args: [message(code: 'valoracion.label', default: 'Valoracion')])}</g:link></li>
        </g:if>
        <g:if test="${!solicitudInstance?.justificacion}">
            <li><g:link class="create" controller="justificacion" action="create"
                        params="['solicitudId': solicitudInstance.id,
                                 'token'      : solicitudInstance.codigo,
                                 'linea'      : solicitudInstance.linea]">${message(code: 'default.add.label', args: [message(code: 'justificacion.label', default: 'Justificación')])}</g:link></li>
        </g:if>
    </ul>
</div>

<div id="show-solicitud" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list solicitud">

        <g:if test="${solicitudInstance?.codigo}">
            <li class="fieldcontain">
                <span id="codigo-label" class="property-label"><g:message code="solicitud.codigo.label"
                                                                          default="Número de registro:"/></span>

                <span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${solicitudInstance}"
                                                                                          field="codigo"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.descSolicitud}">
            <li class="fieldcontain">
                <span id="descSolicitud-label" class="property-label"><g:message code="solicitud.descSolicitud.label"
                                                                          default="Descripción:"/></span>

                <span class="property-value" aria-labelledby="descSolicitud-label"><g:fieldValue bean="${solicitudInstance}"
                                                                                          field="descSolicitud"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.nombreSolicitante}">
            <li class="fieldcontain">
                <span id="nombreSolicitante-label" class="property-label"><g:message
                        code="solicitud.nombreSolicitante.label" default="Nombre Solicitante"/></span>

                <span class="property-value" aria-labelledby="nombreSolicitante-label"><g:fieldValue
                        bean="${solicitudInstance}" field="nombreSolicitante"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.solicitanteId}">
            <li class="fieldcontain">
                <span id="solicitanteId-label" class="property-label"><g:message code="solicitud.solicitanteId.label"
                                                                                 default="Solicitante Id"/></span>

                <span class="property-value" aria-labelledby="solicitanteId-label"><g:fieldValue
                        bean="${solicitudInstance}" field="solicitanteId"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.municipioSolicitante}">
            <li class="fieldcontain">
                <span id="municipioSolicitante-label" class="property-label"><g:message
                        code="solicitud.municipioSolicitante.label" default="Municipio Solicitante"/></span>

                <span class="property-value" aria-labelledby="municipioSolicitante-label"><g:fieldValue
                        bean="${solicitudInstance}" field="municipioSolicitante"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.cpSolicitante}">
            <li class="fieldcontain">
                <span id="cpSolicitante-label" class="property-label"><g:message code="solicitud.cpSolicitante.label"
                                                                                 default="Cp Solicitante"/></span>

                <span class="property-value" aria-labelledby="cpSolicitante-label"><g:fieldValue
                        bean="${solicitudInstance}" field="cpSolicitante"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.emailSolicitante}">
            <li class="fieldcontain">
                <span id="emailSolicitante-label" class="property-label"><g:message
                        code="solicitud.emailSolicitante.label" default="Email Solicitante"/></span>

                <span class="property-value" aria-labelledby="emailSolicitante-label"><g:fieldValue
                        bean="${solicitudInstance}" field="emailSolicitante"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.direccionSolicitante}">
            <li class="fieldcontain">
                <span id="direccionSolicitante-label" class="property-label"><g:message
                        code="solicitud.direccionSolicitante.label" default="Direccion Solicitante"/></span>

                <span class="property-value" aria-labelledby="direccionSolicitante-label"><g:fieldValue
                        bean="${solicitudInstance}" field="direccionSolicitante"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.telefonoSolicitante1}">
            <li class="fieldcontain">
                <span id="telefonoSolicitante1-label" class="property-label"><g:message
                        code="solicitud.telefonoSolicitante1.label" default="Telefono Solicitante1"/></span>

                <span class="property-value" aria-labelledby="telefonoSolicitante1-label"><g:fieldValue
                        bean="${solicitudInstance}" field="telefonoSolicitante1"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.telefonoSolicitante2}">
            <li class="fieldcontain">
                <span id="telefonoSolicitante2-label" class="property-label"><g:message
                        code="solicitud.telefonoSolicitante2.label" default="Telefono Solicitante2"/></span>

                <span class="property-value" aria-labelledby="telefonoSolicitante2-label"><g:fieldValue
                        bean="${solicitudInstance}" field="telefonoSolicitante2"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.representante}">
            <li class="fieldcontain">
                <span id="representante-label" class="property-label"><g:message code="solicitud.representante.label"
                                                                                 default="Representante"/></span>

                <span class="property-value" aria-labelledby="representante-label"><g:formatBoolean
                        boolean="${solicitudInstance?.representante}"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.nombreEntidad}">
            <li class="fieldcontain">
                <span id="nombreEntidad-label" class="property-label"><g:message code="solicitud.nombreEntidad.label"
                                                                                 default="Nombre Entidad"/></span>

                <span class="property-value" aria-labelledby="nombreEntidad-label"><g:fieldValue
                        bean="${solicitudInstance}" field="nombreEntidad"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.entidadId}">
            <li class="fieldcontain">
                <span id="entidadId-label" class="property-label"><g:message code="solicitud.entidadId.label"
                                                                             default="Entidad Id"/></span>

                <span class="property-value" aria-labelledby="entidadId-label"><g:fieldValue bean="${solicitudInstance}"
                                                                                             field="entidadId"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.direccionEntidad}">
            <li class="fieldcontain">
                <span id="direccionEntidad-label" class="property-label"><g:message
                        code="solicitud.direccionEntidad.label" default="Direccion Entidad"/></span>

                <span class="property-value" aria-labelledby="direccionEntidad-label"><g:fieldValue
                        bean="${solicitudInstance}" field="direccionEntidad"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.municipioEntidad}">
            <li class="fieldcontain">
                <span id="municipioEntidad-label" class="property-label"><g:message
                        code="solicitud.municipioEntidad.label" default="Municipio Entidad"/></span>

                <span class="property-value" aria-labelledby="municipioEntidad-label"><g:fieldValue
                        bean="${solicitudInstance}" field="municipioEntidad"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.cpEntidad}">
            <li class="fieldcontain">
                <span id="cpEntidad-label" class="property-label"><g:message code="solicitud.cpEntidad.label"
                                                                             default="Cp Entidad"/></span>

                <span class="property-value" aria-labelledby="cpEntidad-label"><g:fieldValue bean="${solicitudInstance}"
                                                                                             field="cpEntidad"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.emailEntidad}">
            <li class="fieldcontain">
                <span id="emailEntidad-label" class="property-label"><g:message code="solicitud.emailEntidad.label"
                                                                                default="Email Entidad"/></span>

                <span class="property-value" aria-labelledby="emailEntidad-label"><g:fieldValue
                        bean="${solicitudInstance}" field="emailEntidad"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.telefonoEntidad1}">
            <li class="fieldcontain">
                <span id="telefonoEntidad1-label" class="property-label"><g:message
                        code="solicitud.telefonoEntidad1.label" default="Telefono Entidad1"/></span>

                <span class="property-value" aria-labelledby="telefonoEntidad1-label"><g:fieldValue
                        bean="${solicitudInstance}" field="telefonoEntidad1"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.telefonoEntidad2}">
            <li class="fieldcontain">
                <span id="telefonoEntidad2-label" class="property-label"><g:message
                        code="solicitud.telefonoEntidad2.label" default="Telefono Entidad2"/></span>

                <span class="property-value" aria-labelledby="telefonoEntidad2-label"><g:fieldValue
                        bean="${solicitudInstance}" field="telefonoEntidad2"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.representanteLegal}">
            <li class="fieldcontain">
                <span id="representanteLegal-label" class="property-label"><g:message
                        code="solicitud.representanteLegal.label" default="Representante Legal"/></span>

                <span class="property-value" aria-labelledby="representanteLegal-label"><g:fieldValue
                        bean="${solicitudInstance}" field="representanteLegal"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.tipoSolicitud}">
            <li class="fieldcontain">
                <span id="tipoSolicitud-label" class="property-label"><g:message code="solicitud.tipoSolicitud.label"
                                                                                 default="Tipo Solicitud"/></span>

                <span class="property-value" aria-labelledby="tipoSolicitud-label"><g:fieldValue
                        bean="${solicitudInstance}" field="tipoSolicitud"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.linea}">
            <li class="fieldcontain">
                <span id="linea-label" class="property-label"><g:message code="solicitud.linea.label"
                                                                         default="Linea"/></span>

                <span class="property-value" aria-labelledby="linea-label"><g:fieldValue bean="${solicitudInstance}"
                                                                                         field="linea"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.importeSolicitado}">
            <li class="fieldcontain">
                <span id="importeSolicitado-label" class="property-label"><g:message
                        code="solicitud.importeSolicitado.label" default="Importe Solicitado"/></span>

                <span class="property-value" aria-labelledby="importeSolicitado-label">
                    %{--<g:fieldValue bean="${solicitudInstance}" field="importeSolicitado"/>--}%
                    <g:formatNumber number="${solicitudInstance.importeSolicitado}" type="currency" currencyCode="EUR"/>
                </span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.numCuenta}">
            <li class="fieldcontain">
                <span id="numCuenta-label" class="property-label"><g:message code="solicitud.numCuenta.label"
                                                                             default="Num Cuenta"/></span>

                <span class="property-value" aria-labelledby="numCuenta-label"><g:fieldValue bean="${solicitudInstance}"
                                                                                             field="numCuenta"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.importeSolicitadoOtros}">
            <li class="fieldcontain">
                <span id="importeSolicitadoOtros-label" class="property-label"><g:message
                        code="solicitud.importeSolicitadoOtros.label" default="Importe Solicitado Otros"/></span>

                <span class="property-value" aria-labelledby="importeSolicitadoOtros-label">
                    %{--<g:fieldValue bean="${solicitudInstance}" field="importeSolicitadoOtros"/>--}%
                    <g:formatNumber number="${solicitudInstance.importeSolicitadoOtros}" type="currency"
                                    currencyCode="EUR"/>
                </span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.importeRecibidoOtros}">
            <li class="fieldcontain">
                <span id="importeRecibidoOtros-label" class="property-label"><g:message
                        code="solicitud.importeRecibidoOtros.label" default="Importe Recibido Otros"/></span>

                <span class="property-value" aria-labelledby="importeRecibidoOtros-label"><g:fieldValue
                        bean="${solicitudInstance}" field="importeRecibidoOtros"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.fechaSolicitud}">
            <li class="fieldcontain">
                <span id="fechaSolicitud-label" class="property-label"><g:message code="solicitud.fechaSolicitud.label"
                                                                                  default="Fecha Solicitud"/></span>

                <span class="property-value" aria-labelledby="fechaSolicitud-label"><g:formatDate
                        date="${solicitudInstance?.fechaSolicitud}"/></span>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.balance}">
            <li class="fieldcontain">
                <span id="balance-label" class="property-label"><g:message code="solicitud.balance.label"
                                                                           default="Balance"/></span>

                <g:each in="${solicitudInstance.balance}" var="b">
                    <span class="property-value" aria-labelledby="balance-label"><g:link controller="balance"
                                                                                         action="show"
                                                                                         id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.justificacion}">
            <li class="fieldcontain">
                <span id="justificacion-label" class="property-label"><g:message code="solicitud.justificacion.label"
                                                                                 default="Justificacion"/></span>

                <g:each in="${solicitudInstance.justificacion}" var="j">
                    <span class="property-value" aria-labelledby="justificacion-label"><g:link
                            controller="justificacion" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.memoria}">
            <li class="fieldcontain">
                <span id="memoria-label" class="property-label"><g:message code="solicitud.memoria.label"
                                                                           default="Memoria"/></span>

                <g:each in="${solicitudInstance.memoria}" var="m">
                    <span class="property-value" aria-labelledby="memoria-label"><g:link controller="memoria"
                                                                                         action="show"
                                                                                         id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${solicitudInstance?.valoracion}">
            <li class="fieldcontain">
                <span id="valoracion-label" class="property-label"><g:message code="solicitud.valoracion.label"
                                                                              default="Valoracion"/></span>

                <g:each in="${solicitudInstance.valoracion}" var="v">
                    <span class="property-value" aria-labelledby="valoracion-label"><g:link controller="valoracion"
                                                                                            action="show"
                                                                                            id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: solicitudInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${solicitudInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
