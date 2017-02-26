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

    static hasOne = [valoracion: Valoracion]

    static constraints = {
    }
}
