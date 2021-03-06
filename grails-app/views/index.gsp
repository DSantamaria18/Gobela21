<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			%{--<h1>Gestión de Clubes</h1>
			<ul>
				<li class="controller"><g:link controller="Club">Clubes</g:link></li>
				<li class="controller"><g:link controller="Jugador">Jugadores</g:link></li>
				<li class="controller"><g:link controller="Categoria">Categorías</g:link></li>
				<li class="controller"><g:link controller="Actividad">Actividades</g:link></li>
			</ul>--}%
			<h1>Gestión de Subvenciones</h1>
			<ul>
				<li class="controller"><g:link controller="Solicitud">Solicitudes</g:link></li>
				%{--<li class="controller"><g:link controller="Balance">Balances</g:link></li>--}%
				%{--<li class="controller"><g:link controller="Memoria">Memorias</g:link></li>--}%
				<li class="controller"><g:link controller="Valoracion">Valoraciones</g:link></li>
				%{--<li class="controller"><g:link controller="Justificacion">Justificaciones</g:link></li>--}%
				%{--<li class="controller"><g:link controller="Solicitud" action="estadisticas">Estadísticas</g:link></li>--}%
				<li class="controller"><g:link controller="Estadisticas" action="index">Estadísticas</g:link></li>
			</ul>
			%{--<h1>Gestión de Eventos</h1>
			<ul>
				<li class="controller"><g:link controller="Evento">Eventos</g:link></li>
			</ul>--}%
		</div>
		<div id="page-body" role="main">
			<h3>Entorno: ${grails.util.Environment.currentEnvironment}</h3>
			<h1>Gobela 21</h1>
			<h2>App Version:
			${grailsApplication.metadata['app.version']}
			(Build #${grailsApplication.metadata['app.buildNumber']}
			${grailsApplication.metadata['app.buildDate']}
			${grailsApplication.metadata['app.buildProfile']})</h2>
			<div id="controller-list" role="navigation">
				<h2>Modificaciones 06/07/2017:</h2>
				<ul>
					<li>Añadido campo para búsqueda de solicitudes por número o descripción en página de solicitudes</li>
				</ul>
				<h2>Modificaciones 07/05/2017 (2):</h2>
				<ul>
					<li>Corregida puntuación para apartado "Dificultades de financiación" para líneas 1 y 2</li>
					<li>Corregida puntuación para "Atención a la diversidad" para Líneas 1 y 2</li>
					<li>Añadido campo "Uso del Euskera" a valoración L1</li>
					<li>Añadido campo "Participación Femenina" a valoración L1</li>
					<li>Corregida puntuación para "Antigüedad" para L1</li>
				</ul>
				<h2>Modificaciones 07/05/2017:</h2>
				<ul>
					<li>Habilitado el cálculo automático de puntuaciones para valoraciones L2</li>
					<li>Modificados los formularios de valoración para todas las líneas</li>
				</ul>
				<h2>Modificaciones 09/04/2017:</h2>
				<ul>
					<li>Arreglado límite de campos de MEMORIA</li>
					<li>Añadido campo a VALORACION para la Línea 2 (jugadores entre 18 y 23 años en equipo Senior)</li>
				</ul>
				<h2>Modificaciones 07/04/2017:</h2>
				<ul>
					<li>Añadido botón "Cancelar" a pantallas de edición</li>
					<li>Añadido campo en valoraciones L5 para "Actividades en Euskera para niños"</li>
					<li>Corregidos los nombres de los campos de MEMORIA</li>
					<li>La descripción de las solicitudes ahora son un campo único y accesible a través de él</li>
					<li>Añadido campo para el nombre del evento de las solicitudes de la Línea 4</li>
					<li>Exportación a Excel de los datos de la solicitud (individual)</li>
				</ul>
				<h2>Modificaciones 03/04/2017:</h2>
				<ul>
					<li>Ampliado el tamaño de los campos de texto de MEMORIA (2000 caracteres para ACCIONES y SITUACION, 1000 para el resto)</li>
					<li>Corregido el cálculo de totales en el Excel de subvenciones por línea cuando se genera desde el servidor</li>
				</ul>
				<h2>Modificaciones 02/04/2017 (2):</h2>
				<ul>
					<li>Ahora el dominio .EUS es válido </li>
				</ul>
				<h2>Modificaciones 02/04/2017:</h2>
				<ul>
					<li>paginación de vistas</li>
					<li>Vista de estadísticas</li>
					<li>Descarga en Excel de informe de subvenciones</li>
				</ul>
				<h2>Modificaciones 26/03/2017:</h2>
				<ul>
					<li>Añadida la suma automática de puntos en las valoraciones (Excepto Línea 2)</li>
					<li>Añadido el cálculo automático del importe concedido (Excepto Línea 2)</li>
				</ul>
			</div>
		</div>
	</body>
</html>
