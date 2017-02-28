class BootStrap {

    def init = { servletContext ->
        new gobela21.Club(clubId: 1, nombre: "Getxo Rugby", lugar_entrenamiento: "Fadura",
                horario_entrenamiento: "18:30 - 20:30", websiteUrl: "http://www.getxorugby.com",
                rrss: "@getxorugby", logros: "Campeonato liga 1987").save()

        new gobela21.Club(clubId: 2, nombre: "Getxo C.F.", lugar_entrenamiento: "Gobela",
                horario_entrenamiento: "18:30 - 20:30", websiteUrl: "http://www.getxocf.com",
                rrss: "@getxofc", logros: "Campeonato liga 1992").save()

        new gobela21.Entrenador(entrenadorId: 1, nombre: "Paco Porras", categoria: "Liga nacional",
                email: "paco@getxorugby.com", telefono: "687454574", club: 1).save()

        new gobela21.Entrenador(entrenadorId: 2, nombre: "Manolo Escobar", categoria: "Tercera División",
                email: "manolo@getxofc.com", telefono: "6876585458", club: 2).save()

        new gobela21.Contacto(contactoId: 1, nombre: "Julio Iglesias", telefono: "651252114",
                email: "julito@getxorugby.com", cargo: "Delegado", club: 1).save()

        new gobela21.Contacto(contactoId: 2, nombre: "Paco Clavel", telefono: "651323114",
                email: "clavelito@getxofc.com", cargo: "Delegado", club: 2).save()

        new gobela21.Subvencion(subvencionId: 1, club: 1).save()

        new gobela21.Subvencion(subvencionId: 2, club: 2).save()

        new gobela21.Solicitud(solicitudId: 1, linea: 1, importeSolicitado: 25000,
                importeRecibido: 15000, gastosEjercicioAnterior: 26000,
                gastosEstimados: 28000, ingresosEjercicioAnterior: 29000, ingresosEstimados: 25000,
                numDeportistas: 100, numMujeres: 35, numHombres: 65, numResidentes: 92,
                subvencion: 1).save()

        new gobela21.Solicitud(solicitudId: 2, linea: 4, importeSolicitado: 25000,
                importeRecibido: 15000, gastosEjercicioAnterior: 26000,
                gastosEstimados: 28000, ingresosEjercicioAnterior: 29000, ingresosEstimados: 25000,
                numDeportistas: 100, numMujeres: 35, numHombres: 65, numResidentes: 92,
                subvencion: 1).save()

        new gobela21.Solicitud(solicitudId: 3, linea: 2, importeSolicitado: 25000,
                importeRecibido: 15000, gastosEjercicioAnterior: 26000,
                gastosEstimados: 28000, ingresosEjercicioAnterior: 29000, ingresosEstimados: 25000,
                numDeportistas: 100, numMujeres: 35, numHombres: 65, numResidentes: 92, subvencion: 2).save()

        new gobela21.Justificacion(justificacionId: 1, linea: 1, importeTotal: 19567, solicitud: 1).save()

        new gobela21.Justificacion(justificacionId: 2, linea: 4, importeTotal: 19567, solicitud: 2).save()

        new gobela21.Justificacion(justificacionId: 3, linea: 2, importeTotal: 19567, solicitud: 3).save()

        new gobela21.Valoracion(valoracionId: 1, costesActividad: 7, mediosPropios: 5, dificultadFinanciacion: 3,
                proyectoDeportivo: 4, incidenciaActividad: 7, contribucion: 2, participacionPoliticaDeportiva: 2,
                otrasParticipaciones: 2, continuidad: 5, actividades: 6, solicitud: 1).save()

    }

    def destroy = {
    }
}
