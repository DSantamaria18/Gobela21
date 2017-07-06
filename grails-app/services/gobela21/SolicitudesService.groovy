package gobela21

import grails.transaction.Transactional

@Transactional
class SolicitudesService {

    def buscarSolicitudesPorNumeroOPorDescripcion(params) {
        def result =[:]

        if (params.q) {
            def criteria = Solicitud.createCriteria()
            result.solicitudInstanceList = criteria.list(params) {
                or {
                    like("codigo", "%${params.q}%")
                    like("descSolicitud", "%${params.q}%")
                }
            }
            result.solicitudInstanceTotal = criteria.count()
        } else {
            result.solicitudInstanceList = Solicitud.list(params)
            result.solicitudInstanceTotal = Solicitud.count()
        }

        return result
    }
}
