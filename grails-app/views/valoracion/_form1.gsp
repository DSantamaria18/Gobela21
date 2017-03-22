<%@ page import="gobela21.Valoracion" %>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1costesActividad', 'error')} required">
	<label for="l1costesActividad">
		<g:message code="valoracion.l1costesActividad.label" default="Costes de Actividad:" />
	</label>
	<g:field name="l1costesActividad" type="number" value="${valoracionInstance.l1costesActividad}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1mediosPropios', 'error')} required">
	<label for="l1mediosPropios">
		<g:message code="valoracion.l1mediosPropios.label" default="Medios Propios:" />
	</label>
	<g:field name="l1mediosPropios" type="number" value="${valoracionInstance.l1mediosPropios}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1dificultadFinanciacion', 'error')} required">
	<label for="l1dificultadFinanciacion">
		<g:message code="valoracion.l1dificultadFinanciacion.label" default="Dificultad de Financiación:" />
	</label>
	<g:field name="l1dificultadFinanciacion" type="number" value="${valoracionInstance.l1dificultadFinanciacion}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoCoherencia', 'error')} required">
	<label for="l1proyectoDeportivoCoherencia">
		<g:message code="valoracion.l1proyectoDeportivoCoherencia.label" default="Coherencia del Proyecto Deportivo:" />
	</label>
	<g:select name="l1proyectoDeportivoCoherencia" from="${valoracionInstance.constraints.l1proyectoDeportivoCoherencia.inList}" required=""
			  value="${fieldValue(bean: valoracionInstance, field: 'l1proyectoDeportivoCoherencia')}" valueMessagePrefix="valoracion.l1proyectoDeportivoCoherencia"
			  onchange="sumar();" id="select-coherencia"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoDiversidad', 'error')} required">
	<label for="l1proyectoDeportivoDiversidad">
		<g:message code="valoracion.l1proyectoDeportivoDiversidad.label" default="Atención a la Diversidad:" />
	</label>
	<g:field name="l1proyectoDeportivoDiversidad" type="number" value="${valoracionInstance.l1proyectoDeportivoDiversidad}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoEuskera', 'error')} required">
	<label for="l1proyectoDeportivoEuskera">
		<g:message code="valoracion.l1proyectoDeportivoEuskera.label" default="Desarrollo en Euskera:" />
	</label>
	<g:field name="l1proyectoDeportivoEuskera" type="number" value="${valoracionInstance.l1proyectoDeportivoEuskera}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1proyectoDeportivoParticipacionFemenina', 'error')} required">
	<label for="l1proyectoDeportivoParticipacionFemenina">
		<g:message code="valoracion.l1proyectoDeportivoParticipacionFemenina.label" default="Participacion Femenina:" />
	</label>
	<g:field name="l1proyectoDeportivoParticipacionFemenina" type="number" value="${valoracionInstance.l1proyectoDeportivoParticipacionFemenina}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1residentes', 'error')} required">
	<label for="l1residentes">
		<g:message code="valoracion.l1residentes.label" default="Participantes Residentes en Getxo:" />
	</label>
	<g:field name="l1residentes" type="number" value="${valoracionInstance.l1residentes}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaLocal', 'error')} required">
	<label for="l1prensaLocal">
		<g:message code="valoracion.l1prensaLocal.label" default="Aparición en Prensa Local:" />
	</label>
	<g:field name="l1prensaLocal" type="number" value="${valoracionInstance.l1prensaLocal}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaComarcal', 'error')} required">
	<label for="l1prensaComarcal">
		<g:message code="valoracion.l1prensaComarcal.label" default="Aparición en Prensa Comarcal:" />
	</label>
	<g:field name="l1prensaComarcal" type="number" value="${valoracionInstance.l1prensaComarcal}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaRegional', 'error')} required">
	<label for="l1prensaRegional">
		<g:message code="valoracion.l1prensaRegional.label" default="Aparición en Prensa Regional:" />
	</label>
	<g:field name="l1prensaRegional" type="number" value="${valoracionInstance.l1prensaRegional}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1prensaEstatalInternacional', 'error')} required">
	<label for="l1prensaEstatalInternacional">
		<g:message code="valoracion.l1prensaEstatalInternacional.label" default="Aparición en Prensa Estatal o Internacional:" />
	</label>
	<g:field name="l1prensaEstatalInternacional" type="number" value="${valoracionInstance.l1prensaEstatalInternacional}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1deporteEscolar', 'error')} required">
	<label for="l1deporteEscolar">
		<g:message code="valoracion.l1deporteEscolar.label" default="Participa en Deporte Escolar:" />
	</label>
	<g:field name="l1deporteEscolar" type="number" value="${valoracionInstance.l1deporteEscolar}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1marcaGetxo', 'error')} required">
	<label for="l1marcaGetxo">
		<g:message code="valoracion.l1marcaGetxo.label" default="Programa Clubes Marca Getxo:" />
	</label>
	<g:field name="l1marcaGetxo" type="number" value="${valoracionInstance.l1marcaGetxo}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1getxoKirolak', 'error')} required">
	<label for="l1getxoKirolak">
		<g:message code="valoracion.l1getxoKirolak.label" default="Colaboración con Getxo Kirolak:" />
	</label>
	<g:field name="l1getxoKirolak" type="number" value="${valoracionInstance.l1getxoKirolak}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1centrosEscolares', 'error')} required">
	<label for="l1centrosEscolares">
		<g:message code="valoracion.l1centrosEscolares.label" default="Colaboración con Centros Escolares:" />
	</label>
	<g:field name="l1centrosEscolares" type="number" value="${valoracionInstance.l1centrosEscolares}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1otrosClubes', 'error')} required">
	<label for="l1otrosClubes">
		<g:message code="valoracion.l1otrosClubes.label" default="Colaboración con Otros Clubes:" />
	</label>
	<g:field name="l1otrosClubes" type="number" value="${valoracionInstance.l1otrosClubes}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1antiguedad', 'error')} required">
	<label for="l1antiguedad">
		<g:message code="valoracion.l1antiguedad.label" default="Antiguedad del Club:" />
	</label>
	<g:field name="l1antiguedad" type="number" value="${valoracionInstance.l1antiguedad}" required="" onchange="sumar();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valoracionInstance, field: 'l1participantes', 'error')} required">
	<label for="l1antiguedad">
		<g:message code="valoracion.l1participantes.label" default="Participantes:" />
	</label>
	<g:field name="l1participantes" type="number" value="${valoracionInstance.l1participantes}" required="" onchange="sumar();"/>
</div>





















