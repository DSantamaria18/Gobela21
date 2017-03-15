package gobela21

class Justificacion {
    String codigo
    float importeRecibido
    float importeJustificado

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        codigo(blank: false)
        importeRecibido(nullable: false)
        importeJustificado(nullable: false)
    }
}
