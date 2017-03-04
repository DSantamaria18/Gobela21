package gobela21

class Solicitud {
    String nombreSolicitante
    String solicitanteId
    String municipioSolicitante
    Long cpSolicitante
    String emailSolicitante
    String direccionSolicitante
    Long telefonoSolicitante1
    Long telefonoSolicitante2
    Boolean representante
    String nombreEntidad
    String entidadId
    String direccionEntidad
    String municipioEntidad
    Long cpEntidad
    String emailEntidad
    Long telefonoEntidad1
    Long telefonoEntidad2
    String representanteLegal
    int linea
    BigDecimal importeSolicitado
    String numCuenta
    BigDecimal importeSolicitadoOtros
    BigDecimal importeRecibidoOtros



    Date fechaSolicitud = new Date()


    static hasMany = [justificacion: Justificacion, valoracion: Valoracion]

    static constraints = {
        nombreSolicitante(nullable: false)
        solicitanteId(nullable: false)
        municipioSolicitante(nullable: false)
        cpSolicitante(nullable: false)
        emailSolicitante(nullable: true, email: true)
        direccionSolicitante(nullable: false)
        telefonoSolicitante1(nullable: false)
        telefonoSolicitante2(nullable: true)
        representante(nullable: false)
        nombreEntidad(nullable: true)
        entidadId(nullable: true)
        direccionEntidad(nullable: true)
        municipioEntidad(nullable: true)
        cpEntidad(nullable: true)
        emailEntidad(nullable: true, email: true)
        telefonoEntidad1(nullable: true)
        telefonoEntidad2(nullable: true)
        representanteLegal(nullable: true)
        linea(nullable: false, inList: [1,2,3,4,5,6,7])
        importeSolicitado(nullable: false)
        numCuenta()
        importeSolicitadoOtros(nullable: true)
        importeRecibidoOtros(nullable: true)
        fechaSolicitud()
    }
}
