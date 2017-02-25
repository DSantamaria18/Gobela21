package gobela21

class Contacto {
    Long contactoId
    String contacto
    Integer telefono
    String email
    String cargo

    static belongsTo = [club: Club]

    static constraints = {
    }
}
