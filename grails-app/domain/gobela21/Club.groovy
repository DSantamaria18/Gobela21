package gobela21

class Club {
    String nombre
    String lugarEntrenamiento
    String horarioEntrenamiento
    String websiteUrl
    String rrss
    Date fechaFundacion
    String logros

    static hasMany = [jugadores: Jugador, entrenadores: Entrenador, contactos: Contacto, subvenciones: Subvencion]

    static constraints = {
        nombre(nullable: false)
        lugarEntrenamiento(nullable: true, inList: ["Fadura", "Gobela", "Andra-Mari"])
        horarioEntrenamiento(nullable: true)
        websiteUrl(nullable: true, url: true)
        rrss(nullable: true)
        fechaFundacion(nullable: true)
        logros(nullable: true)
    }
}
