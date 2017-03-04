package gobela21

class Memoria {
    String situacion
    String retos
    String acciones
    String mejoras
    String sistemas
    String tecnicos
    int numDeportistas
    int numMujeres
    int numHombres
    int numResidentes
    String politicaDeportiva
    String colaboraciones
    String contribuciones

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        situacion(maxSize: 500)
        retos(maxSize: 500)
        acciones(maxSize: 500)
        mejoras(maxSize: 500)
        sistemas(maxSize: 500)
        tecnicos(maxSize: 500)
        numDeportistas(nullable: false)
        numMujeres(nullable: false)
        numHombres(nullable: false)
        numResidentes(nullable: false)
        politicaDeportiva(maxSize: 500)
        colaboraciones(maxSize: 500)
        contribuciones(maxSize: 500)
    }
}
