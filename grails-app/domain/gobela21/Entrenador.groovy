package gobela21

class Entrenador {
    Long entrenadorId
    String nombre
    String categoria
    String email
    String telefono

    static belongsTo = [club: Club]

    static constraints = {
        nombre(nullable: false)
        categoria(nullable: true)
        email(nullable: false, email: true)
        telefono(nullable: true)
    }
}
