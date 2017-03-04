package gobela21

class Balance {
    BigDecimal gastosEjercicioAnterior
    BigDecimal gastosEstimados
    BigDecimal ingresosEjercicioAnterior
    BigDecimal ingresosEstimados
    String dificultades
    String clubConvenio
    BigDecimal aportacionConvenio
    Date fechaInicioConvenio
    Date fechaFinConvenio

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        gastosEjercicioAnterior(nullable: false)
        gastosEstimados(nullable: false)
        ingresosEjercicioAnterior(nullable: false)
        ingresosEstimados(nullable: false)
        dificultades()
        clubConvenio(nullable: true)
        aportacionConvenio(nullable: true)
        fechaInicioConvenio(nullable: true)
        fechaFinConvenio(nullable: true)
    }
}
