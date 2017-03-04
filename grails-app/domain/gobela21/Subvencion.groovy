package gobela21

class Subvencion {
    Date fechaActualizacion = new Date()

    static belongsTo = [club: Club]
    static hasMany = [solicitudes: Solicitud]

   static constraints = {
    }
}
