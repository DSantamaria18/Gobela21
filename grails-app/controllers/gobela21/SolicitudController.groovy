package gobela21

class SolicitudController {
    static scaffold = true

    //def index() { }

    def estadisticas(){

    }

    def filtrar(params){
        println("   :: Filtrando")
        String query = "SELECT * FROM solicitud, balance, memoria, valoracion WHERE solicitud.id = balance.solicitud "
        if(params.codigoSolicitante) query = query + "AND codigo = ${params.codigoSolicitante} "
        if(params.nombreSolicitante) query = query + "AND nombre = ${params.nombreSolicitante} "
        if(params.municipioSolicitante) query = query + "AND municipio = ${params.municipioSolicitante} "

        println("   :: ${query}")
        println()
    }
}
