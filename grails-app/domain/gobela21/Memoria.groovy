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
        situacion(nullable: true, blank:true, maxSize: 500)
        retos(nullable: true,blank:true, maxSize: 500)
        acciones(nullable: true, blank:true, maxSize: 500)
        mejoras(nullable: true,blank:true, maxSize: 500)
        sistemas(nullable: true,blank:true, maxSize: 500)
        tecnicos(nullable: true,blank:true, maxSize: 500)
        numDeportistas(nullable: false)
        numMujeres(nullable: false)
        numHombres(nullable: false)
        numResidentes(nullable: false)
        politicaDeportiva(nullable: true,blank:true, maxSize: 500)
        colaboraciones(nullable: true,blank:true, maxSize: 500)
        contribuciones(nullable: true,blank:true, maxSize: 500)
    }
}
