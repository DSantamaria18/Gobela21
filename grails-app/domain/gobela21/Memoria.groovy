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
        situacion(nullable: true, blank:true, maxSize: 2000)
        retos(nullable: true,blank:true, maxSize: 1000)
        acciones(nullable: true, blank:true, maxSize: 2000)
        mejoras(nullable: true,blank:true, maxSize: 1000)
        sistemas(nullable: true,blank:true, maxSize: 1000)
        tecnicos(nullable: true,blank:true, maxSize: 1000)
        numDeportistas(nullable: false)
        numMujeres(nullable: false)
        numHombres(nullable: false)
        numResidentes(nullable: false)
        politicaDeportiva(nullable: true,blank:true, maxSize: 1000)
        colaboraciones(nullable: true,blank:true, maxSize: 1000)
        contribuciones(nullable: true,blank:true, maxSize: 1000)
    }
}
