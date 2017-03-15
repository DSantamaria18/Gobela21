<%@ page import="gobela21.Memoria" %>



<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'situacion', 'error')} ">
	<label for="situacion">
		<g:message code="memoria.situacion.label" default="Situacion" />
		
	</label>
	<g:textArea name="situacion" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.situacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'retos', 'error')} ">
	<label for="retos">
		<g:message code="memoria.retos.label" default="Retos" />
		
	</label>
	<g:textArea name="retos" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.retos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'acciones', 'error')} ">
	<label for="acciones">
		<g:message code="memoria.acciones.label" default="Acciones" />
		
	</label>
	<g:textArea name="acciones" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.acciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'mejoras', 'error')} ">
	<label for="mejoras">
		<g:message code="memoria.mejoras.label" default="Mejoras" />
		
	</label>
	<g:textArea name="mejoras" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.mejoras}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'sistemas', 'error')} ">
	<label for="sistemas">
		<g:message code="memoria.sistemas.label" default="Sistemas" />
		
	</label>
	<g:textArea name="sistemas" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.sistemas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'tecnicos', 'error')} ">
	<label for="tecnicos">
		<g:message code="memoria.tecnicos.label" default="Tecnicos" />
		
	</label>
	<g:textArea name="tecnicos" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.tecnicos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'numDeportistas', 'error')} required">
	<label for="numDeportistas">
		<g:message code="memoria.numDeportistas.label" default="Num Deportistas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numDeportistas" type="number" value="${memoriaInstance.numDeportistas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'numMujeres', 'error')} required">
	<label for="numMujeres">
		<g:message code="memoria.numMujeres.label" default="Num Mujeres" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numMujeres" type="number" value="${memoriaInstance.numMujeres}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'numHombres', 'error')} required">
	<label for="numHombres">
		<g:message code="memoria.numHombres.label" default="Num Hombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numHombres" type="number" value="${memoriaInstance.numHombres}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'numResidentes', 'error')} required">
	<label for="numResidentes">
		<g:message code="memoria.numResidentes.label" default="Num Residentes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numResidentes" type="number" value="${memoriaInstance.numResidentes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'politicaDeportiva', 'error')} ">
	<label for="politicaDeportiva">
		<g:message code="memoria.politicaDeportiva.label" default="Politica Deportiva" />
		
	</label>
	<g:textArea name="politicaDeportiva" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.politicaDeportiva}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'colaboraciones', 'error')} ">
	<label for="colaboraciones">
		<g:message code="memoria.colaboraciones.label" default="Colaboraciones" />
		
	</label>
	<g:textArea name="colaboraciones" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.colaboraciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'contribuciones', 'error')} ">
	<label for="contribuciones">
		<g:message code="memoria.contribuciones.label" default="Contribuciones" />
		
	</label>
	<g:textArea name="contribuciones" cols="40" rows="5" maxlength="500" value="${memoriaInstance?.contribuciones}"/>

</div>

%{--<div class="fieldcontain ${hasErrors(bean: memoriaInstance, field: 'solicitud', 'error')} required">
	<label for="solicitud">
		<g:message code="memoria.solicitud.label" default="Solicitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitud" name="solicitud.id" from="${gobela21.Solicitud.list()}" optionKey="id" required="" value="${memoriaInstance?.solicitud?.id}" class="many-to-one"/>

</div>--}%

