package gobela21

import java.security.Timestamp

class Evento {
    String nombre
    String tipoEvento
    String modalidad
    String organizador
    String responsable
    Date montaje
    Date desmontaje
    String material
    int numParticipantes
    int numAsistentes
    boolean subvencionado
    String mejoras
    String observaciones

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        nombre(blank: false)
        tipoEvento(nullable: false, inList: ["Ordinario", "Extraordinario"])
        modalidad()
        organizador(blank: false)
        responsable(blank: false)
        montaje()
        desmontaje()
        material()
        numParticipantes()
        numAsistentes()
        subvencionado()
        mejoras(maxSize: 256)
        observaciones(maxSize: 256)
        solicitud(nullable: true)
    }
}
