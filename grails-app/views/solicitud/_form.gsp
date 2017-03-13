<%@ page import="gobela21.Solicitud" %>



<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'codigo', 'error')} required">
    <label for="codigo">
        <g:message code="solicitud.codigo.label" default="Codigo"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="codigo" required="" value="${solicitudInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'nombreSolicitante', 'error')} required">
    <label for="nombreSolicitante">
        <g:message code="solicitud.nombreSolicitante.label" default="Nombre Solicitante"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombreSolicitante" required="" value="${solicitudInstance?.nombreSolicitante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'solicitanteId', 'error')} required">
    <label for="solicitanteId">
        <g:message code="solicitud.solicitanteId.label" default="Solicitante Id"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="solicitanteId" required="" value="${solicitudInstance?.solicitanteId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'municipioSolicitante', 'error')} required">
    <label for="municipioSolicitante">
        <g:message code="solicitud.municipioSolicitante.label" default="Municipio Solicitante"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="municipioSolicitante" required="" value="${solicitudInstance?.municipioSolicitante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'cpSolicitante', 'error')} required">
    <label for="cpSolicitante">
        <g:message code="solicitud.cpSolicitante.label" default="Cp Solicitante"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="cpSolicitante" type="number" value="${solicitudInstance.cpSolicitante}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'emailSolicitante', 'error')} required">
    <label for="emailSolicitante">
        <g:message code="solicitud.emailSolicitante.label" default="Email Solicitante"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="emailSolicitante" required="" value="${solicitudInstance?.emailSolicitante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'direccionSolicitante', 'error')} required">
    <label for="direccionSolicitante">
        <g:message code="solicitud.direccionSolicitante.label" default="Direccion Solicitante"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="direccionSolicitante" required="" value="${solicitudInstance?.direccionSolicitante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'telefonoSolicitante1', 'error')} required">
    <label for="telefonoSolicitante1">
        <g:message code="solicitud.telefonoSolicitante1.label" default="Telefono Solicitante1"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="telefonoSolicitante1" required="" value="${solicitudInstance?.telefonoSolicitante1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'telefonoSolicitante2', 'error')} ">
    <label for="telefonoSolicitante2">
        <g:message code="solicitud.telefonoSolicitante2.label" default="Telefono Solicitante2"/>

    </label>
    <g:textField name="telefonoSolicitante2" value="${solicitudInstance?.telefonoSolicitante2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'representante', 'error')} ">
    <label for="representante">
        <g:message code="solicitud.representante.label" default="Representante"/>

    </label>
    <g:checkBox name="representante" value="${solicitudInstance?.representante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'nombreEntidad', 'error')} ">
    <label for="nombreEntidad">
        <g:message code="solicitud.nombreEntidad.label" default="Nombre Entidad"/>

    </label>
    <g:textField name="nombreEntidad" value="${solicitudInstance?.nombreEntidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'entidadId', 'error')} ">
    <label for="entidadId">
        <g:message code="solicitud.entidadId.label" default="Entidad Id"/>

    </label>
    <g:textField name="entidadId" value="${solicitudInstance?.entidadId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'direccionEntidad', 'error')} ">
    <label for="direccionEntidad">
        <g:message code="solicitud.direccionEntidad.label" default="Direccion Entidad"/>

    </label>
    <g:textField name="direccionEntidad" value="${solicitudInstance?.direccionEntidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'municipioEntidad', 'error')} ">
    <label for="municipioEntidad">
        <g:message code="solicitud.municipioEntidad.label" default="Municipio Entidad"/>

    </label>
    <g:textField name="municipioEntidad" value="${solicitudInstance?.municipioEntidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'cpEntidad', 'error')} ">
    <label for="cpEntidad">
        <g:message code="solicitud.cpEntidad.label" default="Cp Entidad"/>

    </label>
    <g:field name="cpEntidad" type="number" value="${solicitudInstance.cpEntidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'emailEntidad', 'error')} ">
    <label for="emailEntidad">
        <g:message code="solicitud.emailEntidad.label" default="Email Entidad"/>

    </label>
    <g:field type="email" name="emailEntidad" value="${solicitudInstance?.emailEntidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'telefonoEntidad1', 'error')} ">
    <label for="telefonoEntidad1">
        <g:message code="solicitud.telefonoEntidad1.label" default="Telefono Entidad1"/>

    </label>
    <g:field name="telefonoEntidad1" type="number" value="${solicitudInstance.telefonoEntidad1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'telefonoEntidad2', 'error')} ">
    <label for="telefonoEntidad2">
        <g:message code="solicitud.telefonoEntidad2.label" default="Telefono Entidad2"/>

    </label>
    <g:field name="telefonoEntidad2" type="number" value="${solicitudInstance.telefonoEntidad2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'representanteLegal', 'error')} ">
    <label for="representanteLegal">
        <g:message code="solicitud.representanteLegal.label" default="Representante Legal"/>

    </label>
    <g:textField name="representanteLegal" value="${solicitudInstance?.representanteLegal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'tipoSolicitud', 'error')} required">
    <label for="tipoSolicitud">
        <g:message code="solicitud.tipoSolicitud.label" default="Tipo Solicitud"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="tipoSolicitud" from="${solicitudInstance.constraints.tipoSolicitud.inList}" required=""
              value="${solicitudInstance?.tipoSolicitud}" valueMessagePrefix="solicitud.tipoSolicitud"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'linea', 'error')} required">
    <label for="linea">
        <g:message code="solicitud.linea.label" default="Linea"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="linea" from="${solicitudInstance.constraints.linea.inList}" required=""
              value="${fieldValue(bean: solicitudInstance, field: 'linea')}" valueMessagePrefix="solicitud.linea"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'importeSolicitado', 'error')} required">
    <label for="importeSolicitado">
        <g:message code="solicitud.importeSolicitado.label" default="Importe Solicitado"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="importeSolicitado" value="${fieldValue(bean: solicitudInstance, field: 'importeSolicitado')}"
             required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'numCuenta', 'error')} ">
    <label for="numCuenta">
        <g:message code="solicitud.numCuenta.label" default="Num Cuenta"/>

    </label>
    <g:textField name="numCuenta" value="${solicitudInstance?.numCuenta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'importeSolicitadoOtros', 'error')} ">
    <label for="importeSolicitadoOtros">
        <g:message code="solicitud.importeSolicitadoOtros.label" default="Importe Solicitado Otros"/>

    </label>
    <g:field name="importeSolicitadoOtros"
             value="${fieldValue(bean: solicitudInstance, field: 'importeSolicitadoOtros')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'importeRecibidoOtros', 'error')} ">
    <label for="importeRecibidoOtros">
        <g:message code="solicitud.importeRecibidoOtros.label" default="Importe Recibido Otros"/>

    </label>
    <g:field name="importeRecibidoOtros" value="${fieldValue(bean: solicitudInstance, field: 'importeRecibidoOtros')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'fechaSolicitud', 'error')} required">
    <label for="fechaSolicitud">
        <g:message code="solicitud.fechaSolicitud.label" default="Fecha Solicitud"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="fechaSolicitud" precision="day" value="${solicitudInstance?.fechaSolicitud}"/>

</div>

%{--<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'balance', 'error')} ">
    <label for="balance">
        <g:message code="solicitud.balance.label" default="Balance"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${solicitudInstance?.balance ?}" var="b">
            <li><g:link controller="balance" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="balance" action="create"
                    params="['solicitud.id': solicitudInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'balance.label', default: 'Balance')])}</g:link>
        </li>
    </ul>

</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'justificacion', 'error')} ">
    <label for="justificacion">
        <g:message code="solicitud.justificacion.label" default="Justificacion"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${solicitudInstance?.justificacion ?}" var="j">
            <li><g:link controller="justificacion" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="justificacion" action="create"
                    params="['solicitud.id': solicitudInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'justificacion.label', default: 'Justificacion')])}</g:link>
        </li>
    </ul>

</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'memoria', 'error')} ">
    <label for="memoria">
        <g:message code="solicitud.memoria.label" default="Memoria"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${solicitudInstance?.memoria ?}" var="m">
            <li><g:link controller="memoria" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="memoria" action="create"
                    params="['solicitud.id': solicitudInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'memoria.label', default: 'Memoria')])}</g:link>
        </li>
    </ul>

</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'valoracion', 'error')} ">
    <label for="valoracion">
        <g:message code="solicitud.valoracion.label" default="Valoracion"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${solicitudInstance?.valoracion ?}" var="v">
            <li><g:link controller="valoracion" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="valoracion" action="create"
                    params="['solicitud.id': solicitudInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'valoracion.label', default: 'Valoracion')])}</g:link>
        </li>
    </ul>

</div>--}%

