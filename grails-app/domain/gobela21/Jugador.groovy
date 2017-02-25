package gobela21

class Jugador {
    Long jugadorId

    static belongsTo = [club: Club]
    static constraints = {
    }
}
