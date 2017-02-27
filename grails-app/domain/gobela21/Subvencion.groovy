package gobela21

class Subvencion {
    Long subvencionId
    Long club

   //static hasMany = [solicitudes: Solicitud]

    static constraints = {
        club(nullable: false)
        //solicitudes(nullable: true)
    }
}
