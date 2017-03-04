package gobela21

class Solicitud {
    int linea
    BigDecimal importeSolicitado
    BigDecimal importeRecibido
    BigDecimal gastosEjercicioAnterior
    BigDecimal gastosEstimados
    BigDecimal ingresosEjercicioAnterior
    BigDecimal ingresosEstimados
    int numDeportistas
    int numMujeres
    int numHombres
    int numResidentes

    static belongsTo = [subvencion: Subvencion]
    //static hasOne = [valoracion: Valoracion]
    static hasMany = [justificaciones: Justificacion]

    static constraints = {
        linea(nullable: false, inList: [1,2,3,4,5,6,7])
        importeSolicitado(nullable: false)
        importeRecibido(nullable: false)
        gastosEjercicioAnterior(nullable: false)
        gastosEstimados(nullable: false)
        ingresosEjercicioAnterior(nullable: false)
        ingresosEstimados(nullable: false)
        numDeportistas(nullable: false)
        numMujeres(nullable: false)
        numHombres(nullable: false)
        numResidentes(nullable: false)
        subvencion(nullable: false)
    }
}
