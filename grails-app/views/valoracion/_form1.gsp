<%@ page import="gobela21.Valoracion" %>

<h3>Costes de la actividad desarrollada (max 10 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1costesActividad', 'error')} required">
    <label for="l1costesActividad">
        <g:message code="valoracion.l1costesActividad.label" default="Costes de Actividad:"/>
    </label>
    <g:radio name="l1costesActividad" value="1" onchange="sumar();" data="suma"
             checked="${valoracionInstance.l1costesActividad == 1}"/> Inferior a 5.000€ (1 pt)

    <div class="fieldcontain">
        <label for="l1costesActividad"></label>
        <g:radio name="l1costesActividad" value="3" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1costesActividad == 3}"/> Entre 5.000€ y 15.000€  (3 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1costesActividad"></label>
        <g:radio name="l1costesActividad" value="6" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1costesActividad == 6}"/> Entre 15.000€ y 25.000€ (6 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1costesActividad"></label>
        <g:radio name="l1costesActividad" value="8" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1costesActividad == 8}"/> Entre 25.000€ y 55.000€ (8 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1costesActividad"></label>
        <g:radio name="l1costesActividad" value="10" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1costesActividad == 10}"/> Más de 55.000€ (10 pts)
    </div>
</div>
<br>

<h3>Medios económicos propios (max 10 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1mediosPropios', 'error')} required">
    <label for="l1mediosPropios">
        <g:message code="valoracion.l1mediosPropios.label" default="Medios Propios:"/>
    </label>
    <g:radio name="l1mediosPropios" value="0" onchange="sumar();" data="suma"
             checked="${valoracionInstance.l1mediosPropios == 0}"/> Menos del 10% (0 pts)

    <div class="fieldcontain">
        <label for="l1mediosPropios"></label>
        <g:radio name="l1mediosPropios" value="3" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1mediosPropios == 3}"/> 10% de recursos propios (3 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1mediosPropios"></label>
        <g:radio name="l1mediosPropios" value="6" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1mediosPropios == 6}"/> 20% de recursos propios (6 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1mediosPropios"></label>
        <g:radio name="l1mediosPropios" value="10" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1mediosPropios == 10}"/> 30% o más de recursos propios (10 pts)
    </div>
</div>
<br>

<h3>Dificultad para acudir a otros medios de financiación (max 30 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1dificultadFinanciacion', 'error')} required">
    <label for="l1dificultadFinanciacion">
        <g:message code="valoracion.l1dificultadFinanciacion.label" default="Dificultad de Financiación:"/>
    </label>
    <g:radio name="l1dificultadFinanciacion" value="10" onchange="sumar();" data="suma"
             checked="${valoracionInstance.l1dificultadFinanciacion == 10}"/> Más de 10.000€ (10 pts)

    <div class="fieldcontain">
        <label for="l1dificultadFinanciacion"></label>
        <g:radio name="l1dificultadFinanciacion" value="15" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1dificultadFinanciacion == 15}"/> Entre 7.000€ y 10.000€ (15 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1dificultadFinanciacion"></label>
        <g:radio name="l1dificultadFinanciacion" value="20" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1dificultadFinanciacion == 20}"/> Entre 4.000€ y 7.000€ (20 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1dificultadFinanciacion"></label>
        <g:radio name="l1dificultadFinanciacion" value="30" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1dificultadFinanciacion == 30}"/> Menos de 4.000€ (30 pts)
    </div>
</div>
<br>

<h3>Proyecto Deportivo y esfuerzo organizativo (max 25 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoCoherencia', 'error')} required">
    <label for="l1proyectoDeportivoCoherencia">
        <g:message code="valoracion.l1proyectoDeportivoCoherencia.label" default="Coherencia del Proyecto Deportivo:"/>
    </label>
    <g:select name="l1proyectoDeportivoCoherencia"
              from="${valoracionInstance.constraints.l1proyectoDeportivoCoherencia.inList}" required=""
              value="${fieldValue(bean: valoracionInstance, field: 'l1proyectoDeportivoCoherencia')}"
              valueMessagePrefix="valoracion.l1proyectoDeportivoCoherencia"
              onchange="sumar();" id="select-coherencia" data="suma"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoDiversidad', 'error')} required">
    <label for="l1proyectoDeportivoDiversidad">
        <g:message code="valoracion.l1proyectoDeportivoDiversidad.label" default="Atención a la Diversidad:"/>
    </label>
    <g:field data="suma" name="l1proyectoDeportivoDiversidad" type="number"
             value="${valoracionInstance.l1proyectoDeportivoDiversidad}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoEuskera', 'error')} required">
    <label for="l1proyectoDeportivoEuskera">
        <g:message code="valoracion.l1proyectoDeportivoEuskera.label" default="Desarrollo en Euskera:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1proyectoDeportivoEuskera" value="10"
                checked="${valoracionInstance.l1proyectoDeportivoEuskera == 10}"/> 10 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoParticipacionFemenina', 'error')} required">
    <label for="l1proyectoDeportivoParticipacionFemenina">
        <g:message code="valoracion.l1proyectoDeportivoParticipacionFemenina.label" default="Participacion Femenina:"/>
    </label>
    <g:radio name="l1proyectoDeportivoParticipacionFemenina" value="1" onchange="sumar();" data="suma"
             checked="${valoracionInstance.l1proyectoDeportivoParticipacionFemenina == 1}"/> Menos del 20% (1 pt)

    <div class="fieldcontain">
        <label for="l1proyectoDeportivoParticipacionFemenina"></label>
        <g:radio name="l1proyectoDeportivoParticipacionFemenina" value="2" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1proyectoDeportivoParticipacionFemenina == 2}"/> Entre el 20% y el 40% (2 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1proyectoDeportivoParticipacionFemenina"></label>
        <g:radio name="l1proyectoDeportivoParticipacionFemenina" value="3" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1proyectoDeportivoParticipacionFemenina == 3}"/> Entre el 40% y el 60% (3 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1proyectoDeportivoParticipacionFemenina"></label>
        <g:radio name="l1proyectoDeportivoParticipacionFemenina" value="4" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1proyectoDeportivoParticipacionFemenina == 4}"/> Entre el 60% y el 80% (4 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1proyectoDeportivoParticipacionFemenina"></label>
        <g:radio name="l1proyectoDeportivoParticipacionFemenina" value="5" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1proyectoDeportivoParticipacionFemenina == 5}"/> Entre el 80% y el 100% (5 pts)
    </div>
</div>
<br>

<h3>Incidencia en la promoción del deporte entre la personas residentes en Getxo (max 15 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1residentes', 'error')} required">
    <label for="l1residentes">
        <g:message code="valoracion.l1residentes.label" default="Participantes residentes en Getxo:"/>
    </label>
    <g:radio name="l1residentes" value="15" onchange="sumar();" data="suma"
             checked="${valoracionInstance.l1residentes == 15}"/> Más del 80% (15 pts)

    <div class="fieldcontain">
        <label for="l1residentes"></label>
        <g:radio name="l1residentes" value="10" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1residentes == 10}"/> Más del 60% (10 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1residentes"></label>
        <g:radio name="l1residentes" value="5" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1residentes == 5}"/> Más del 40% (5 pts)
    </div>
</div>
<br>

<h3>Contribución a la difusión y mejora de la imagen del municipio de Getxo (max 5 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaLocal', 'error')} required">
    <label for="l1prensaLocal">
        <g:message code="valoracion.l1prensaLocal.label" default="Prensa Local:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1prensaLocal" value="1"
                checked="${valoracionInstance.l1prensaLocal == 1}"/> 1 pt
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaComarcal', 'error')} required">
    <label for="l1prensaComarcal">
        <g:message code="valoracion.l1prensaComarcal.label" default="Prensa Comarcal:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1prensaComarcal" value="1"
                checked="${valoracionInstance.l1prensaComarcal == 1}"/> 1 pt
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaRegional', 'error')} required">
    <label for="l1prensaRegional">
        <g:message code="valoracion.l1prensaRegional.label" default="Prensa Regional:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1prensaRegional" value="1"
                checked="${valoracionInstance.l1prensaRegional == 1}"/> 1 pt
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaEstatalInternacional', 'error')} required">
    <label for="l1prensaEstatalInternacional">
        <g:message code="valoracion.l1prensaEstatalInternacional.label" default="Prensa Estatal o Internacional:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1prensaEstatalInternacional" value="2"
                checked="${valoracionInstance.l1prensaEstatalInternacional == 2}"/> 2 pts
</div>
<br>

<h3>Participación en la política deportiva municipal (max 15 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1deporteEscolar', 'error')} required">
    <label for="l1deporteEscolar">
        <g:message code="valoracion.l1deporteEscolar.label" default="Deporte Escolar:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1deporteEscolar" value="8"
                checked="${valoracionInstance.l1deporteEscolar == 8}"/> 8 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1marcaGetxo', 'error')} required">
    <label for="l1marcaGetxo">
        <g:message code="valoracion.l1marcaGetxo.label" default="Clubes Marca Getxo:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1marcaGetxo" value="7"
                checked="${valoracionInstance.l1marcaGetxo == 7}"/> 7 pts
</div>
<br>

<h3>Participación y colaboración con otras asociaciones (max 5 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1getxoKirolak', 'error')} required">
    <label for="l1getxoKirolak">
        <g:message code="valoracion.l1getxoKirolak.label" default="Getxo Kirolak:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1getxoKirolak" value="3"
                checked="${valoracionInstance.l1getxoKirolak == 3}"/> 3 pts
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1centrosEscolares', 'error')} required">
    <label for="l1centrosEscolares">
        <g:message code="valoracion.l1centrosEscolares.label" default="Centros Escolares:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1centrosEscolares" value="1"
                checked="${valoracionInstance.l1centrosEscolares == 1}"/> 1 pt
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1otrosClubes', 'error')} required">
    <label for="l1otrosClubes">
        <g:message code="valoracion.l1otrosClubes.label" default="Otros Clubes:"/>
    </label>
    <g:checkBox class="check-box" onchange="sumar();" data="suma" name="l1otrosClubes" value="1"
                checked="${valoracionInstance.l1otrosClubes == 1}"/> 1 pt
</div>
<br>

<h3>Continuidad y estabilidad del programa (max 5 pts):</h3>
<h5>Los clubes o asociaciones que no cumplan con más de 1 año de antigüedad no optarán a las subvenciones ordinarias</h5>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1antiguedad', 'error')} required">
    <label for="l1antiguedad">
        <g:message code="valoracion.l1antiguedad.label" default="Antiguedad del Club:"/>
    </label>
    <g:radio name="l1antiguedad" value="1" onchange="sumar();" data="suma"
             checked="${valoracionInstance.l1antiguedad == 1}"/> 1 año (1 pt)

    <div class="fieldcontain">
        <label for="l1antiguedad"></label>
        <g:radio name="l1antiguedad" value="2" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1antiguedad == 2}"/> 2 años (2 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1antiguedad"></label>
        <g:radio name="l1antiguedad" value="3" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1antiguedad == 3}"/> 3 años (3 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1antiguedad"></label>
        <g:radio name="l1antiguedad" value="4" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1antiguedad == 4}"/> 4 años (4 pts)
    </div>
</div>
<br>

<h3>Actividades realizadas y el volumen de participantes (max 5 pts):</h3>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1participantes', 'error')} required">
    <label for="l1antiguedad">
        <g:message code="valoracion.l1participantes.label" default="Participantes:"/>
    </label>
    <g:radio name="l1participantes" value="1" onchange="sumar();" data="suma"
             checked="${valoracionInstance.l1participantes == 1}"/> Hasta 20 (1 pt)

    <div class="fieldcontain">
        <label for="l1participantes"></label>
        <g:radio name="l1participantes" value="2" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1participantes == 2}"/> Hasta 40 (2 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1participantes"></label>
        <g:radio name="l1participantes" value="3" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1participantes == 3}"/> Hasta 60 (3 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1participantes"></label>
        <g:radio name="l1participantes" value="4" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1participantes == 4}"/> Hasta 80 (4 pts)
    </div>

    <div class="fieldcontain">
        <label for="l1participantes"></label>
        <g:radio name="l1participantes" value="5" onchange="sumar();" data="suma"
                 checked="${valoracionInstance.l1participantes == 5}"/> Más de 100 (5 pts)
    </div>

</div>





















