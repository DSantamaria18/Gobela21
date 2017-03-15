<%@ page import="gobela21.Valoracion" %>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2costesActividadDe', 'error')} required">
	<label for="l2costesActividadDe">
		<g:message code="valoracion.l2costesActividadDe.label" default="Costes de actividad:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2costesActividadDe" type="number" value="${valoracionInstance.l2costesActividadDe}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2mediosPropios', 'error')} required">
	<label for="l2mediosPropios">
		<g:message code="valoracion.l2mediosPropios.label" default="Medios propios:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2mediosPropios" type="number" value="${valoracionInstance.l2mediosPropios}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2dificultadFinanciacion', 'error')} required">
	<label for="l2dificultadFinanciacion">
		<g:message code="valoracion.l2dificultadFinanciacion.label" default="Dificultad de financiación:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2dificultadFinanciacion" type="number" value="${valoracionInstance.l2dificultadFinanciacion}" required=""/>
</div>

%{--Proyecto Deportivo--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2proyectoDeportivoCoherencia', 'error')} required">
	<label for="l2proyectoDeportivoCoherencia">
		<g:message code="valoracion.l2proyectoDeportivoCoherencia.label" default="Coherencia del proyecto:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2proyectoDeportivoCoherencia" type="number" value="${valoracionInstance.l2proyectoDeportivoCoherencia}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2proyectoDeportivoDiversidad', 'error')} required">
	<label for="l2proyectoDeportivoDiversidad">
		<g:message code="valoracion.l2proyectoDeportivoDiversidad.label" default="Atención a la diversidad:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2proyectoDeportivoDiversidad" type="number" value="${valoracionInstance.l2proyectoDeportivoDiversidad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2proyectoDeportivoEuskera', 'error')} required">
	<label for="l2proyectoDeportivoEuskera">
		<g:message code="valoracion.l2proyectoDeportivoEuskera.label" default="Uso del Euskera:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2proyectoDeportivoEuskera" type="number" value="${valoracionInstance.l2proyectoDeportivoEuskera}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2proyectoDeportivoParticipacionFemenina', 'error')} required">
	<label for="l2proyectoDeportivoParticipacionFemenina">
		<g:message code="valoracion.l2proyectoDeportivoParticipacionFemenina.label" default="Participacion femenina:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2proyectoDeportivoParticipacionFemenina" type="number" value="${valoracionInstance.l2proyectoDeportivoParticipacionFemenina}" required=""/>
</div>
%{--fin--}%

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2residentes', 'error')} required">
	<label for="l2residentes">
		<g:message code="valoracion.l2residentes.label" default="Porcentaje de residentes en Getxo:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2residentes" type="number" value="${valoracionInstance.l2residentes}" required=""/>
</div>

%{--Difusión y mejora de la imagen de Getxo--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2prensaLocal', 'error')} required">
	<label for="l2prensaLocal">
		<g:message code="valoracion.l2prensaLocal.label" default="Prensa local:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2prensaLocal" type="number" value="${valoracionInstance.l2prensaLocal}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2prensaComarcal', 'error')} required">
	<label for="l2prensaComarcal">
		<g:message code="valoracion.l2prensaComarcal.label" default="Prensa comarcal:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2prensaComarcal" type="number" value="${valoracionInstance.l2prensaComarcal}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2prensaRegional', 'error')} required">
	<label for="l2prensaRegional">
		<g:message code="valoracion.l2prensaRegional.label" default="Prensa regional:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2prensaRegional" type="number" value="${valoracionInstance.l2prensaRegional}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2prensaEstatalInternacional', 'error')} required">
	<label for="l2prensaEstatalInternacional">
		<g:message code="valoracion.l2prensaEstatalInternacional.label" default="Prensa estatal o internacional:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2prensaEstatalInternacional" type="number" value="${valoracionInstance.l2prensaEstatalInternacional}" required=""/>
</div>
%{--fin--}%

%{--Participación política deportiva--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2deporteEscolar', 'error')} required">
	<label for="l2deporteEscolar">
		<g:message code="valoracion.l2deporteEscolar.label" default="Deporte escolar:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2deporteEscolar" type="number" value="${valoracionInstance.l2deporteEscolar}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2marcaGetxo', 'error')} required">
	<label for="l2marcaGetxo">
		<g:message code="valoracion.l2marcaGetxo.label" default="Clubes marca Getxo:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2marcaGetxo" type="number" value="${valoracionInstance.l2marcaGetxo}" required=""/>
</div>
%{--fin--}%

%{--Colaboración con otras asociaciones--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2getxoKirolak', 'error')} required">
	<label for="l2getxoKirolak">
		<g:message code="valoracion.l2getxoKirolak.label" default="Colabora con Getxo Kirolak:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2getxoKirolak" type="number" value="${valoracionInstance.l2getxoKirolak}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2centrosEscolares', 'error')} required">
	<label for="l2centrosEscolares">
		<g:message code="valoracion.l2centrosEscolares.label" default="Colabora con centros escolares:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2centrosEscolares" type="number" value="${valoracionInstance.l2centrosEscolares}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2otrosClubes', 'error')} required">
	<label for="l2otrosClubes">
		<g:message code="valoracion.l2otrosClubes.label" default="Colabora con otros clubes:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2otrosClubes" type="number" value="${valoracionInstance.l2otrosClubes}" required=""/>
</div>
%{--fin--}%

%{--Continuidad y estabilidad del programa--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2antiguedad', 'error')} required">
	<label for="l2antiguedad">
		<g:message code="valoracion.l2antiguedad.label" default="Antiguedad:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2antiguedad" type="number" value="${valoracionInstance.l2antiguedad}" required=""/>
</div>
%{--fin--}%

%{--Asociaciones de pesca--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2participantes', 'error')} required">
	<label for="l2participantes">
		<g:message code="valoracion.l2participantes.label" default="Participantes (Asoc. pesca):" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2participantes" type="number" value="${valoracionInstance.l2participantes}" required=""/>
</div>
%{--fin--}%

%{--Deportistas de alto rendimiento--}%
<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2puestoEnTorneosInternacionales', 'error')} required">
	<label for="l2puestoEnTorneosInternacionales">
		<g:message code="valoracion.l2puestoEnTorneosInternacionales.label" default="Puesto en torneos/open internacionales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2puestoEnTorneosInternacionales" type="number" value="${valoracionInstance.l2puestoEnTorneosInternacionales}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2puestoEnCircuitosInternacionales', 'error')} required">
	<label for="l2puestoEnCircuitosInternacionales">
		<g:message code="valoracion.l2puestoEnCircuitosInternacionales.label" default="Puesto en circuitos internacionales:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2puestoEnCircuitosInternacionales" type="number" value="${valoracionInstance.l2puestoEnCircuitosInternacionales}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2puestoEnTorneosNacionales', 'error')} required">
	<label for="l2puestoEnTorneosNacionales">
		<g:message code="valoracion.l2puestoEnTorneosNacionales.label" default="Puesto en torneos/open estatales:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2puestoEnTorneosNacionales" type="number" value="${valoracionInstance.l2puestoEnTorneosNacionales}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2puestoEnCircuitosNacionales', 'error')} required">
	<label for="l2puestoEnCircuitosNacionales">
		<g:message code="valoracion.l2puestoEnCircuitosNacionales.label" default="Puesto en circuitos nacionales:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2puestoEnCircuitosNacionales" type="number" value="${valoracionInstance.l2puestoEnCircuitosNacionales}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2PrimerPuestoEnTorneosAutonomicos', 'error')} required">
	<label for="l2PrimerPuestoEnTorneosAutonomicos">
		<g:message code="valoracion.l2PrimerPuestoEnTorneosAutonomicos.label" default="Primer puesto en torneos/open autonómicos:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2PrimerPuestoEnTorneosAutonomicos" type="number" value="${valoracionInstance.l2PrimerPuestoEnTorneosAutonomicos}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2campeonatosEuskadi', 'error')} required">
	<label for="l2campeonatosEuskadi">
		<g:message code="valoracion.l2campeonatosEuskadi.label" default="Campeonatos de Euskadi:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2campeonatosEuskadi" type="number" value="${valoracionInstance.l2campeonatosEuskadi}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2campeonatosEspaña', 'error')} required">
	<label for="l2campeonatosEspaña">
		<g:message code="valoracion.l2campeonatosEspaña.label" default="Campeonatos de España:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2campeonatosEspaña" type="number" value="${valoracionInstance.l2campeonatosEspaña}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2campeonatosEuropa', 'error')} required">
	<label for="l2campeonatosEuropa">
		<g:message code="valoracion.l2campeonatosEuropa.label" default="Campeonatos de Europa:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2campeonatosEuropa" type="number" value="${valoracionInstance.l2campeonatosEuropa}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2campeonatosMundo', 'error')} required">
	<label for="l2campeonatosMundo">
		<g:message code="valoracion.l2campeonatosMundo.label" default="Campeonatos del Mundo:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2campeonatosMundo" type="number" value="${valoracionInstance.l2campeonatosMundo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2indiceParticipacion', 'error')} required">
	<label for="l2indiceParticipacion">
		<g:message code="valoracion.l2indiceParticipacion.label" default="Indice de participacion:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2indiceParticipacion" value="${fieldValue(bean: valoracionInstance, field: 'l2indiceParticipacion')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2indiceCorreccion', 'error')} required">
	<label for="l2indiceCorreccion">
		<g:message code="valoracion.l2indiceCorreccion.label" default="Indice de corrección:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2indiceCorreccion" value="${fieldValue(bean: valoracionInstance, field: 'l2indiceCorreccion')}" required=""/>

</div>
%{--fin--}%
