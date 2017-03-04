package gobela21

class Logros {
    String detalleLogros

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        detalleLogros(blank: false)
    }
}
