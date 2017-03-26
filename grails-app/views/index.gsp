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
				<h2>Modificaciones 26/03/2017:</h2>
				<ul>
					<li>Añadida la suma automática de puntos en las valoraciones (Excepto Línea 2)</li>
					<li>Añadido el cálculo automático del importe concedido (Excepto Línea 2)</li>
				</ul>
				%{--<h2>Controllers Disponibles:</h2>--}%
				%{--<ul>--}%
					%{--<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">--}%
						%{--<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>--}%
					%{--</g:each>--}%
				%{--</ul>--}%
			</div>
		</div>
	</body>
</html>
