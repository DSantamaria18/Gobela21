package gobela21

class Club {
    String nombre
    String lugar_entrenamiento
    String horario_entrenamiento
    String websiteUrl
    String rrss
    Date fecha_fundacion
    String logros
    static hasMany = [jugadores: Jugador, entrenadores: Entrenador, contactos: Contacto]

    static constraints = {

    }
}
