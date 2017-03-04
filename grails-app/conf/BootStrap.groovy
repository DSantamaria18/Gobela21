class BootStrap {

    def init = { servletContext ->
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

        new gobela21.Solicitud(nombreSolicitante: "Getxo Rugby", solicitanteId: "2341123112V", municipioSolicitante: "Getxo",
                cpSolicitante: 48991, emailSolicitante: "jnavarro@getxorugby.com", direccionSolicitante: "Telletxe 9",
                telefonoSolicitante1: 944676473, representante: false, tipoSolicitud: "Club", linea: 1,
                importeSolicitado: 66000).save(failOnError: true)
    }

    def destroy = {
    }
}
