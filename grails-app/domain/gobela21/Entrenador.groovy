package gobela21

class Entrenador {
    Long entrenadorId

    static belongsTo = [club: Club]

    static constraints = {
    }
}
