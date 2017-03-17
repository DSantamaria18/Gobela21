<%@ page import="gobela21.Valoracion" %>
%{--<h4>Desde FORM EDIT</h4>--}%
<div id="campos">
    <fieldset class="form">
        <div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'solicitud', 'error')} required">
            <span id="solicitud-label" class="property-label">
                <g:message code="valoracion.solicitud.label" default="Número de solicitud:"/>
            </span>
            <span class="property-value" aria-labelledby="solicitud-label">
                <g:fieldValue bean="${valoracionInstance}" field="solicitud"/>
            </span>
        </div>

        <g:hiddenField name="version" value="${valoracionInstance?.version}"/>
        <g:hiddenField name="id" value="${valoracionInstance?.id}"/>
    </fieldset>

    <fieldset class="form">
        <g:if test="${valoracionInstance.linea == 1}">
            <g:render template="form1"/>
        </g:if>
        <g:if test="${valoracionInstance.linea == 2}">
            <g:render template="form2"/>
        </g:if>
        <g:if test="${valoracionInstance.linea == 3}">
            <g:render template="form3"/>
        </g:if>
        <g:if test="${valoracionInstance.linea == 4}">
            <g:render template="form4"/>
        </g:if>
        <g:if test="${valoracionInstance.linea == 5}">
            <g:render template="form5"/>
        </g:if>
        <g:if test="${valoracionInstance.linea == 6}">
            <g:render template="form6"/>
        </g:if>
        <g:if test="${valoracionInstance.linea == 7}">
            <g:render template="form7"/>
        </g:if>

    </fieldset>

    %{--    <fieldset class="form">
            --}%%{--<input class="buttons" type="button" name="boton-calcular" onclick="actualizaPuntos()"--}%%{--
            <input class="buttons" type="button" name="boton-calcular" onclick="recalcula()"
                   value="Actualizar Puntuación">
        </fieldset>--}%

    <fieldset>
        %{--<div class="fieldcontain">
            <span id="puntuacion-label" class="property-label">
                <g:message code="valoracion.puntuacion.label" default="Puntuación total:"/>
            </span>
            <span class="property-value" aria-labelledby="puntuacion-label" id="puntuacion-value">
                --}%%{--${valoracionInstance?.puntuacion}--}%%{--
                --}%%{--<g:field name="puntuacion"
                         value="${fieldValue(bean: valoracionInstance, field: 'puntuacion')}"/>--}%%{--
                --}%%{--<g:if test="${valoracionInstance?.puntuacion}">${valoracionInstance.puntuacion}</g:if>
                <g:else>0.0</g:else>--}%%{--
            </span>
        </div>--}%

        <div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: '', 'error')} required">
            <span id="importeConcedido-label" class="property-label" for="importeConcedido">
                %{--<label for="importeConcedido">--}%
                <g:message code="valoracion.importeConcedido.label" default="Importe concedido:"/>
                %{--</label>--}%
            </span>
            <span class="property-value" aria-labelledby="importeConcedido-label">
                <g:field name="importeConcedido"
                         value="${fieldValue(bean: valoracionInstance, field: 'importeConcedido')}"/> €
            </span>
        </div>
    </fieldset>
</div>
%{--<script>
    function actualizaPuntos() {
        console.log(":::::::::: ENTRANDO!!!");
        var puntos = ${valoracionInstance.suma()};
        document.getElementById("puntuacion-value").innerHTML = puntos;
    }

    function recalcula() {
        console.log(":::::::::: RECALCULANDO!!!");
        $.ajax({
            url: '${g.createLink(controller: 'valoracion', action: 'recalcular')}',
            data: $('form').serialize()
        });
    }
</script>--}%



