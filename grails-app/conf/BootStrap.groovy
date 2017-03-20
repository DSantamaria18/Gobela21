
class BootStrap {

    def init = { servletContext ->

        if (grails.util.Environment.currentEnvironment != grails.util.Environment.PRODUCTION) {
            new gobela21.Club(clubId: 1, nombre: "Getxo Rugby", lugar_entrenamiento: "Fadura",
                    horario_entrenamiento: "18:30 - 20:30", websiteUrl: "http://www.getxorugby.com",
                    rrss: "@getxorugby", logros: "Campeonato liga 1987").save(failOnError: true)

            new gobela21.Club(clubId: 2, nombre: "Getxo C.F.", lugar_entrenamiento: "Gobela",
                    horario_entrenamiento: "18:30 - 20:30", websiteUrl: "http://www.getxocf.com",
                    rrss: "@getxofc", logros: "Campeonato liga 1992").save(failOnError: true)

            new gobela21.Entrenador(entrenadorId: 1, nombre: "Paco Porras", categoria: "Liga nacional",
                    email: "paco@getxorugby.com", telefono: "687454574", club: 1).save(failOnError: true)

            new gobela21.Entrenador(entrenadorId: 2, nombre: "Manolo Escobar", categoria: "Tercera División",
                    email: "manolo@getxofc.com", telefono: "6876585458", club: 2).save(failOnError: true)

            new gobela21.Contacto(contactoId: 1, nombre: "Julio Iglesias", telefono: "651252114",
                    email: "julito@getxorugby.com", cargo: "Delegado", club: 1).save(failOnError: true)

            new gobela21.Contacto(contactoId: 2, nombre: "Paco Clavel", telefono: "651323114",
                    email: "clavelito@getxofc.com", cargo: "Delegado", club: 2).save(failOnError: true)

            new gobela21.Solicitud(codigo: "3b3jasdj2", nombreSolicitante: "Juanito Navarro", solicitanteId: "2341123112V", municipioSolicitante: "Getxo",
                    cpSolicitante: 48991, emailSolicitante: "jnavarro@getxorugby.com", direccionSolicitante: "Telletxe 9",
                    telefonoSolicitante1: 944676473, representante: true, nombreEntidad: "Getxo Rugby", tipoSolicitud: "Club", linea: 1,
                    importeSolicitado: 66000).save(failOnError: true)

            new gobela21.Valoracion(linea: 1, l1costesActividad: 1, l1mediosPropios: 2, l1dificultadFinanciacion: 1, l1proyectoDeportivoCoherencia: '0',
                    l1proyectoDeportivoDiversidad: 2, l1proyectoDeportivoEuskera: 3, l1proyectoDeportivoParticipacionFemenina: 4,
                    l1residentes: 4, l1prensaLocal: 2, l1prensaComarcal: 6, l1prensaRegional: 1, l1prensaEstatalInternacional: 2,
                    l1deporteEscolar: 8, l1marcaGetxo: 2, l1getxoKirolak: 2, l1centrosEscolares: 3, l1otrosClubes: 1,
                    l1antiguedad: 1, l1participantes: 3, solicitud: 1, importeConcedido: 11111.11).save(failOnError: true)

            new gobela21.Solicitud(codigo: "43423F23F", nombreSolicitante: "Pacp Porras", solicitanteId: "234112234223V", municipioSolicitante: "Getxo",
                    cpSolicitante: 48991, emailSolicitante: "pacoporras@getxofutbol.com", direccionSolicitante: "Telletxe 9",
                    telefonoSolicitante1: 944676473, representante: true, nombreEntidad: "Getxo Futbol", tipoSolicitud: "Club", linea: 2,
                    importeSolicitado: 66666).save(failOnError: true)

            new gobela21.Valoracion(linea: 2, l2costesActividadDe: 2, l2mediosPropios: 1, l2dificultadFinanciacion: 2
                    , l2proyectoDeportivoCoherencia: '2,5', l2proyectoDeportivoDiversidad: 2, l2proyectoDeportivoEuskera: 4
                    , l2proyectoDeportivoParticipacionFemenina: 2, l2residentes: 3, l2prensaLocal: 3, l2prensaComarcal: 2
                    , l2prensaRegional: 4, l2prensaEstatalInternacional: 0, l2deporteEscolar: 4, l2marcaGetxo: 4, l2getxoKirolak: 4
                    , l2centrosEscolares: 2, l2otrosClubes: 1, l2antiguedad: 1, l2participantes: 2, l2puestoEnTorneosInternacionales: 1
                    , l2puestoEnCircuitosInternacionales: 1, l2puestoEnTorneosNacionales: 2, l2puestoEnCircuitosNacionales: 0
                    , l2PrimerPuestoEnTorneosAutonomicos: 0, l2campeonatosEuskadi: 1, l2campeonatosEspaña: 12, l2campeonatosEuropa: 2
                    , l2campeonatosMundo: 0, l2indiceParticipacion: 0.75, l2indiceCorreccion: 0.2
                    , solicitud: 2, importeConcedido: 22222.22).save(failOnError: true)

            new gobela21.Solicitud(codigo: "4r3f3f43", nombreSolicitante: "Jasulín de Ubrique", solicitanteId: "234112234223V", municipioSolicitante: "Getxo",
                    cpSolicitante: 48991, emailSolicitante: "js@getxofutbol.com", direccionSolicitante: "Telletxe 9",
                    telefonoSolicitante1: 944676473, representante: true, nombreEntidad: "Getxo Futbol", tipoSolicitud: "Club", linea: 3,
                    importeSolicitado: 66666).save(failOnError: true)

            new gobela21.Valoracion(linea: 3, l3categoriaFaseFinal: 50, l3resultadoObtenido: 12
                    , solicitud: 3, importeConcedido: 33333.33).save(failOnError: true)


            new gobela21.Solicitud(codigo: "4r3fewrqwer3", nombreSolicitante: "Joseba Solozabal", solicitanteId: "234112234223V", municipioSolicitante: "Getxo",
                    cpSolicitante: 48991, emailSolicitante: "pacoporras@getxofutbol.com", direccionSolicitante: "Telletxe 9",
                    telefonoSolicitante1: 944676473, representante: true, nombreEntidad: "Getxo Waterpolo", tipoSolicitud: "Club", linea: 4,
                    importeSolicitado: 66666).save(failOnError: true)

            new gobela21.Valoracion(linea: 4, l4propioClub: 1, l4otrosClubes: 2, l4ampas: 2, l4categoriasEscolares: 4
                    , l4categoriasFederadas: 4, l4veteranos: 1, l4desviacion: 2, l4participacionEstimada: 2, l4comunicacionAMedios: 3
                    , l4usoNuevasTecnologías: 4, l4participacionFemeninaEvento: 5, l4experienciaSolicitante: 1
                    , solicitud: 4, importeConcedido: 44444.44).save(failOnError: true)


            new gobela21.Solicitud(codigo: "75745664", nombreSolicitante: "Letizia Sabater", solicitanteId: "234112234223V", municipioSolicitante: "Getxo",
                    cpSolicitante: 48991, emailSolicitante: "pacoporras@getxofutbol.com", direccionSolicitante: "Telletxe 9",
                    telefonoSolicitante1: 944676473, representante: true, nombreEntidad: "Getxo Rubgy", tipoSolicitud: "Club", linea: 5,
                    importeSolicitado: 66666).save(failOnError: true)

            new gobela21.Valoracion(linea: 5, l5numeroEspectadores: 2, l5recursosPropios: 3, l5participacionEstimada: 2
                    , l5comunicacionAMedios: 5, l5usoNuevasTecnologías: 4, l5participacionFemenina: 5, l5experienciaSolicitante: 1
                    , solicitud: 5, importeConcedido: 55555.55).save(failOnError: true)


            new gobela21.Solicitud(codigo: "987987978", nombreSolicitante: "Darth Vader", solicitanteId: "234112234223V", municipioSolicitante: "Getxo",
                    cpSolicitante: 48991, emailSolicitante: "pacoporras@getxofutbol.com", direccionSolicitante: "Telletxe 9",
                    telefonoSolicitante1: 944676473, representante: true, nombreEntidad: "Getxo Waterpolo", tipoSolicitud: "Club", linea: 6,
                    importeSolicitado: 66666).save(failOnError: true)

            new gobela21.Valoracion(linea: 6, l6prensaLocal: 1, l6prensaComarcal: 2, l6prensaRegional: 0, l6prensaEstatal: 0
                    , l6costeActividad: 4, l6mediosPropios: 2, l6patrcinioPrivado: 1
                    , solicitud: 6, importeConcedido: 66666.66).save(failOnError: true)

            new gobela21.Solicitud(codigo: "4r45t56y", nombreSolicitante: "Florentino Pérez", solicitanteId: "234112234223V", municipioSolicitante: "Getxo",
                    cpSolicitante: 48991, emailSolicitante: "pacoporras@getxofutbol.com", direccionSolicitante: "Telletxe 9",
                    telefonoSolicitante1: 944676473, representante: false, tipoSolicitud: "Club", linea: 7,
                    importeSolicitado: 66666).save(failOnError: true)

            new gobela21.Valoracion(linea: 7, l7prensaLocal: 1, l7prensaComarcal: 2, l7prensaRegional: 0, l7prensaEstatal: 3
                    , l7costeActividad: 1, l7mediosPropios: 5, l7patrcinioPrivado: 2
                    , solicitud: 7, importeConcedido: 77777.77).save(failOnError: true)
        }
    }


    def destroy = {
    }
}
