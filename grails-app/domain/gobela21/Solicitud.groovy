package gobela21

class Solicitud {
    Long solicitudId
    int linea
    BigDecimal importeSolicitado
    BigDecimal importeRecibido
    Boolean otrasSolicitudes
    BigDecimal gastosEjercicioAnterior
    BigDecimal gastosEstimados
    BigDecimal ingresosEjercicioAnterior
    BigDecimal ingresosEstimados
    int numDeportistas
    int numMujeres
    int numHombres
    int numResidentes

    //static belongsTo = [subvencion: Subvencion]

    static constraints = {
        /*linea(nullable: false, inList: [1,2,3,4,5,6,7])
        importeSolicitado(nullable: false)
        importeRecibido(nullable: false)
        otrasSolicitudes(nullable: false, inList: ["NO", "SI"])
        gastosEjercicioAnterior(nullable: false)
        gastosEstimados(nullable: false)
        ingresosEjercicioAnterior(nullable: false)
        ingresosEstimados(nullable: false)
        numDeportistas(nullable: false)
        numMujeres(nullable: false)
        numHombres(nullable: false)
        numResidentes(nullable: false)*/
        //subvencion(nullable: false)
    }
}
