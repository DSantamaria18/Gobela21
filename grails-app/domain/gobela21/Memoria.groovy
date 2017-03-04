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
        situacion()
        retos()
        acciones()
        mejoras()
        sistemas()
        tecnicos()
        numDeportistas(nullable: false)
        numMujeres(nullable: false)
        numHombres(nullable: false)
        numResidentes(nullable: false)
        politicaDeportiva()
        colaboraciones()
        contribuciones()
    }
}
