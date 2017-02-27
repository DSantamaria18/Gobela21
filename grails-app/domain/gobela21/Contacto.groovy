package gobela21

class Contacto {
    Long contactoId
    String nombre
    String telefono
    String email
    String cargo

    static belongsTo = [club: Club]

    static constraints = {
        nombre(nullable: false)
        telefono(nullable: false)
        email(nullable: false, email: true)
        telefono(nullable: false)
        cargo(nullable: true)
    }
}
