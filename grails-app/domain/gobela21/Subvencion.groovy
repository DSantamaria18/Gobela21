package gobela21

class Subvencion {
    Long subvencionId
    Long club

    static hasMany = [solicitudes: Solicitud, justificaciones: Justificacion]

   static constraints = {
        subvencionId(nullable: false, unique: true)
        club(nullable: false)
        //solicitudes(nullable: true)
    }
}
