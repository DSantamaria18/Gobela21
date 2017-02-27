package gobela21

class Club {
    Long clubId
    String nombre
    String lugar_entrenamiento
    String horario_entrenamiento
    String websiteUrl
    String rrss
    Date fecha_fundacion
    String logros

    static hasMany = [jugadores: Jugador, entrenadores: Entrenador, contactos: Contacto]

    static constraints = {
        lugar_entrenamiento(nullable: true)
        horario_entrenamiento(nullable: true)
        websiteUrl(nullable: true)
        rrss(nullable: true)
        fecha_fundacion(nullable: true)
        logros(nullable: true)
    }
}
