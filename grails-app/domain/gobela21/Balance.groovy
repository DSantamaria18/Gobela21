package gobela21

class Balance {
    float gastosEjercicioAnterior
    float gastosEstimados
    float ingresosEjercicioAnterior
    float ingresosEstimados
    String dificultades
    String clubConvenio
    float aportacionConvenio
    Date fechaInicioConvenio
    Date fechaFinConvenio

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        gastosEjercicioAnterior(nullable: false)
        gastosEstimados(nullable: false)
        ingresosEjercicioAnterior(nullable: false)
        ingresosEstimados(nullable: false)
        dificultades(maxSize: 500)
        clubConvenio(nullable: true)
        aportacionConvenio(nullable: true)
        fechaInicioConvenio(nullable: true)
        fechaFinConvenio(nullable: true)
    }
}
