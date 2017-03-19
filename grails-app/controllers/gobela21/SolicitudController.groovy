package gobela21

class SolicitudController {
    static scaffold = true

    def exportService
    def grailsApplication

    //def index() { }

    def estadisticas() {
        if (!params.max) params.max = 10
        if (params?.format && params.format != "html") {
            response.contentType = grailsApplication.config.grails.mime.types[params.format]
            response.setHeader("Content-disposition", "attachment;filename = solicitudInstance.${ params.extension }")
            exportService.export(params.format, response.outputStream, Solicitud.list(params), [:], [:])
        }
        [solicitudInstanceList: Solicitud.list(params)]
    }

    def filtrar(params) {
        println("   :: Filtrando")
        String query = "SELECT * FROM solicitud, balance, memoria, valoracion WHERE solicitud.id = balance.solicitud "
        if (params.codigoSolicitante) query = query + "AND codigo = ${params.codigoSolicitante} "
        if (params.nombreSolicitante) query = query + "AND nombre = ${params.nombreSolicitante} "
        if (params.municipioSolicitante) query = query + "AND municipio = ${params.municipioSolicitante} "

        println("   :: ${query}")
        println()
    }
}
