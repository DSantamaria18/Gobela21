package gobela21

class Justificacion {
    BigDecimal importeRecibido
    BigDecimal importeJustificado

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        importeRecibido(nullable: false)
        importeJustificado(nullable: false)
    }
}
