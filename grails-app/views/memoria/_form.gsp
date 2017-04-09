<%@ page import="gobela21.Memoria" %>



<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'situacion', 'error')} ">
	<label for="situacion">
		<g:message code="memoria.situacion.label" default="Situación actual:" />
		
	</label>
	<g:textArea name="situacion" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.situacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'retos', 'error')} ">
	<label for="retos">
		<g:message code="memoria.retos.label" default="Retos planteados:" />
		
	</label>
	<g:textArea name="retos" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.retos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'acciones', 'error')} ">
	<label for="acciones">
		<g:message code="memoria.acciones.label" default="Acciones y actividades a desarrollar:" />
		
	</label>
	<g:textArea name="acciones" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.acciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'mejoras', 'error')} ">
	<label for="mejoras">
		<g:message code="memoria.mejoras.label" default="Propuestas de mejora:" />
		
	</label>
	<g:textArea name="mejoras" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.mejoras}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'sistemas', 'error')} ">
	<label for="sistemas">
		<g:message code="memoria.sistemas.label" default="Sistemas de evaluación y seguimiento:" />
		
	</label>
	<g:textArea name="sistemas" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.sistemas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'tecnicos', 'error')} ">
	<label for="tecnicos">
		<g:message code="memoria.tecnicos.label" default="Personal técnico:" />
		
	</label>
	<g:textArea name="tecnicos" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.tecnicos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'numDeportistas', 'error')} required">
	<label for="numDeportistas">
		<g:message code="memoria.numDeportistas.label" default="Número de deportistas:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numDeportistas" type="number" value="${memoriaInstance.numDeportistas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'numMujeres', 'error')} required">
	<label for="numMujeres">
		<g:message code="memoria.numMujeres.label" default="Número de mujeres:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numMujeres" type="number" value="${memoriaInstance.numMujeres}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'numHombres', 'error')} required">
	<label for="numHombres">
		<g:message code="memoria.numHombres.label" default="Número de hombres:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numHombres" type="number" value="${memoriaInstance.numHombres}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'numResidentes', 'error')} required">
	<label for="numResidentes">
		<g:message code="memoria.numResidentes.label" default="Número de residentes:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numResidentes" type="number" value="${memoriaInstance.numResidentes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'politicaDeportiva', 'error')} ">
	<label for="politicaDeportiva">
		<g:message code="memoria.politicaDeportiva.label" default="Participación en la política deportiva local:" />
		
	</label>
	<g:textArea name="politicaDeportiva" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.politicaDeportiva}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'colaboraciones', 'error')} ">
	<label for="colaboraciones">
		<g:message code="memoria.colaboraciones.label" default="Otras colaboraciones:" />
		
	</label>
	<g:textArea name="colaboraciones" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.colaboraciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'contribuciones', 'error')} ">
	<label for="contribuciones">
		<g:message code="memoria.contribuciones.label" default="Contribuciones a la difusión de una imagen positiva de Getxo:" />
		
	</label>
	<g:textArea name="contribuciones" cols="60" rows="15" maxlength="2000" value="${memoriaInstance?.contribuciones}"/>

</div>

%{--<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="memoria.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${memoriaInstance?.solicitud?.id}" class="many-to-one"/>

</div>--}%

