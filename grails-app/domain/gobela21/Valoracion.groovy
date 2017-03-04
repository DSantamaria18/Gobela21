package gobela21

class Valoracion {
    int costesActividad
    int mediosPropios
    int dificultadFinanciacion
    int proyectoDeportivo
    int incidenciaActividad
    int contribucion
    int participacionPoliticaDeportiva
    int otrasParticipaciones
    int continuidad
    int actividades

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
    }
}
