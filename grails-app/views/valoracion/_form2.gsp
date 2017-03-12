<%@ page import="gobela21.Valoracion" %>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2PrimerPuestoEnTorneosAutonomicos', 'error')} required">
	<label for="l2PrimerPuestoEnTorneosAutonomicos">
		<g:message code="valoracion.l2PrimerPuestoEnTorneosAutonomicos.label" default="L2 Primer Puesto En Torneos Autonomicos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2PrimerPuestoEnTorneosAutonomicos" type="number" value="${valoracionInstance.l2PrimerPuestoEnTorneosAutonomicos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2antiguedad', 'error')} required">
	<label for="l2antiguedad">
		<g:message code="valoracion.l2antiguedad.label" default="L2antiguedad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2antiguedad" type="number" value="${valoracionInstance.l2antiguedad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2campeonatosEspaña', 'error')} required">
	<label for="l2campeonatosEspaña">
		<g:message code="valoracion.l2campeonatosEspaña.label" default="L2campeonatos España" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2campeonatosEspaña" type="number" value="${valoracionInstance.l2campeonatosEspaña}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2campeonatosEuropa', 'error')} required">
	<label for="l2campeonatosEuropa">
		<g:message code="valoracion.l2campeonatosEuropa.label" default="L2campeonatos Europa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2campeonatosEuropa" type="number" value="${valoracionInstance.l2campeonatosEuropa}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2campeonatosEuskadi', 'error')} required">
	<label for="l2campeonatosEuskadi">
		<g:message code="valoracion.l2campeonatosEuskadi.label" default="L2campeonatos Euskadi" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2campeonatosEuskadi" type="number" value="${valoracionInstance.l2campeonatosEuskadi}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2campeonatosMundo', 'error')} required">
	<label for="l2campeonatosMundo">
		<g:message code="valoracion.l2campeonatosMundo.label" default="L2campeonatos Mundo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2campeonatosMundo" type="number" value="${valoracionInstance.l2campeonatosMundo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2centrosEscolares', 'error')} required">
	<label for="l2centrosEscolares">
		<g:message code="valoracion.l2centrosEscolares.label" default="L2centros Escolares" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2centrosEscolares" type="number" value="${valoracionInstance.l2centrosEscolares}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2costesActividadDe', 'error')} required">
	<label for="l2costesActividadDe">
		<g:message code="valoracion.l2costesActividadDe.label" default="L2costes Actividad De" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2costesActividadDe" type="number" value="${valoracionInstance.l2costesActividadDe}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2deporteEscolar', 'error')} required">
	<label for="l2deporteEscolar">
		<g:message code="valoracion.l2deporteEscolar.label" default="L2deporte Escolar" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2deporteEscolar" type="number" value="${valoracionInstance.l2deporteEscolar}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2dificultadFinanciacion', 'error')} required">
	<label for="l2dificultadFinanciacion">
		<g:message code="valoracion.l2dificultadFinanciacion.label" default="L2dificultad Financiacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2dificultadFinanciacion" type="number" value="${valoracionInstance.l2dificultadFinanciacion}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2getxoKirolak', 'error')} required">
	<label for="l2getxoKirolak">
		<g:message code="valoracion.l2getxoKirolak.label" default="L2getxo Kirolak" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2getxoKirolak" type="number" value="${valoracionInstance.l2getxoKirolak}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2indiceCorreccion', 'error')} required">
	<label for="l2indiceCorreccion">
		<g:message code="valoracion.l2indiceCorreccion.label" default="L2indice Correccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2indiceCorreccion" value="${fieldValue(bean: valoracionInstance, field: 'l2indiceCorreccion')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2indiceParticipacion', 'error')} required">
	<label for="l2indiceParticipacion">
		<g:message code="valoracion.l2indiceParticipacion.label" default="L2indice Participacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2indiceParticipacion" value="${fieldValue(bean: valoracionInstance, field: 'l2indiceParticipacion')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2marcaGetxo', 'error')} required">
	<label for="l2marcaGetxo">
		<g:message code="valoracion.l2marcaGetxo.label" default="L2marca Getxo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2marcaGetxo" type="number" value="${valoracionInstance.l2marcaGetxo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2mediosPropios', 'error')} required">
	<label for="l2mediosPropios">
		<g:message code="valoracion.l2mediosPropios.label" default="L2medios Propios" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2mediosPropios" type="number" value="${valoracionInstance.l2mediosPropios}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2otrosClubes', 'error')} required">
	<label for="l2otrosClubes">
		<g:message code="valoracion.l2otrosClubes.label" default="L2otros Clubes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2otrosClubes" type="number" value="${valoracionInstance.l2otrosClubes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2prensaComarcal', 'error')} required">
	<label for="l2prensaComarcal">
		<g:message code="valoracion.l2prensaComarcal.label" default="L2prensa Comarcal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2prensaComarcal" type="number" value="${valoracionInstance.l2prensaComarcal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2prensaEstatalInternacional', 'error')} required">
	<label for="l2prensaEstatalInternacional">
		<g:message code="valoracion.l2prensaEstatalInternacional.label" default="L2prensa Estatal Internacional" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2prensaEstatalInternacional" type="number" value="${valoracionInstance.l2prensaEstatalInternacional}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2prensaLocal', 'error')} required">
	<label for="l2prensaLocal">
		<g:message code="valoracion.l2prensaLocal.label" default="L2prensa Local" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2prensaLocal" type="number" value="${valoracionInstance.l2prensaLocal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2prensaRegional', 'error')} required">
	<label for="l2prensaRegional">
		<g:message code="valoracion.l2prensaRegional.label" default="L2prensa Regional" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2prensaRegional" type="number" value="${valoracionInstance.l2prensaRegional}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2proyectoDeportivoCoherencia', 'error')} required">
	<label for="l2proyectoDeportivoCoherencia">
		<g:message code="valoracion.l2proyectoDeportivoCoherencia.label" default="L2proyecto Deportivo Coherencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2proyectoDeportivoCoherencia" type="number" value="${valoracionInstance.l2proyectoDeportivoCoherencia}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2proyectoDeportivoDiversidad', 'error')} required">
	<label for="l2proyectoDeportivoDiversidad">
		<g:message code="valoracion.l2proyectoDeportivoDiversidad.label" default="L2proyecto Deportivo Diversidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2proyectoDeportivoDiversidad" type="number" value="${valoracionInstance.l2proyectoDeportivoDiversidad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2proyectoDeportivoEuskera', 'error')} required">
	<label for="l2proyectoDeportivoEuskera">
		<g:message code="valoracion.l2proyectoDeportivoEuskera.label" default="L2proyecto Deportivo Euskera" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2proyectoDeportivoEuskera" type="number" value="${valoracionInstance.l2proyectoDeportivoEuskera}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2proyectoDeportivoParticipacionFemenina', 'error')} required">
	<label for="l2proyectoDeportivoParticipacionFemenina">
		<g:message code="valoracion.l2proyectoDeportivoParticipacionFemenina.label" default="L2proyecto Deportivo Participacion Femenina" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2proyectoDeportivoParticipacionFemenina" type="number" value="${valoracionInstance.l2proyectoDeportivoParticipacionFemenina}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2puestoEnCircuitosInternacionales', 'error')} required">
	<label for="l2puestoEnCircuitosInternacionales">
		<g:message code="valoracion.l2puestoEnCircuitosInternacionales.label" default="L2puesto En Circuitos Internacionales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2puestoEnCircuitosInternacionales" type="number" value="${valoracionInstance.l2puestoEnCircuitosInternacionales}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2puestoEnCircuitosNacionales', 'error')} required">
	<label for="l2puestoEnCircuitosNacionales">
		<g:message code="valoracion.l2puestoEnCircuitosNacionales.label" default="L2puesto En Circuitos Nacionales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2puestoEnCircuitosNacionales" type="number" value="${valoracionInstance.l2puestoEnCircuitosNacionales}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2puestoEnTorneosInternacionales', 'error')} required">
	<label for="l2puestoEnTorneosInternacionales">
		<g:message code="valoracion.l2puestoEnTorneosInternacionales.label" default="L2puesto En Torneos Internacionales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2puestoEnTorneosInternacionales" type="number" value="${valoracionInstance.l2puestoEnTorneosInternacionales}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2puestoEnTorneosNacionales', 'error')} required">
	<label for="l2puestoEnTorneosNacionales">
		<g:message code="valoracion.l2puestoEnTorneosNacionales.label" default="L2puesto En Torneos Nacionales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2puestoEnTorneosNacionales" type="number" value="${valoracionInstance.l2puestoEnTorneosNacionales}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l2residentes', 'error')} required">
	<label for="l2residentes">
		<g:message code="valoracion.l2residentes.label" default="L2residentes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="l2residentes" type="number" value="${valoracionInstance.l2residentes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="valoracion.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>${params.solicitudId}
	%{--<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${valoracionInstance?.solicitud?.id}" class="many-to-one"/>--}%

</div>

