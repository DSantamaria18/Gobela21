package gobela21


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ValoracionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def result = Valoracion.executeQuery("select v, s.nombreEntidad as entidad, s.nombreSolicitante as solicitante from Valoracion v join v.solicitud s")
        [list: result, valoracionInstanceCount: result.size()]
    }

    def show(Valoracion valoracionInstance) {
        respond valoracionInstance
    }

    def create() {
        Solicitud solicitud = Solicitud.get(params.solicitudId)
        params.importeSolicitado = solicitud.importeSolicitado
        respond new Valoracion(params)
    }

    @Transactional
    def save(Valoracion valoracionInstance) {
        if (valoracionInstance == null) {
            notFound()
            return
        }

        if (valoracionInstance.hasErrors()) {
            respond valoracionInstance.errors, view: 'create'
            return
        }

        valoracionInstance.l4propioClub = (params?.l4propioClub) ? 10 : 0
        valoracionInstance.l4otrosClubes = (params?.l4otrosClubes) ? 15 : 0
        valoracionInstance.l4ampas = (params?.l4ampas) ? 5 : 0
        valoracionInstance.l4categoriasEscolares = (params?.l4categoriasEscolares) ? 15 : 0
        valoracionInstance.l4categoriasFederadas = (params?.l4categoriasFederadas) ? 10 : 0
        valoracionInstance.l4veteranos = (params?.l4veteranos) ? 5 : 0

        valoracionInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'valoracion.label', default: 'Valoracion'), valoracionInstance.id])
                redirect valoracionInstance
            }
            '*' { respond valoracionInstance, [status: CREATED] }
        }
    }

    def edit(Valoracion valoracionInstance) {
        Solicitud solicitud = Solicitud.get(valoracionInstance.solicitudId)
        def importeSolicitado = solicitud.importeSolicitado
        [valoracionInstance: valoracionInstance, importeSolicitado: importeSolicitado]
    }

    def cancel() {
        Valoracion valoracionInstance = Valoracion.get(params.id)
        redirect action: "show", id: valoracionInstance.id
    }

    @Transactional
    def update(Valoracion valoracionInstance) {
        if (valoracionInstance == null) {
            notFound()
            return
        }

        if (valoracionInstance.hasErrors()) {
            respond valoracionInstance.errors, view: 'edit'
            return
        }
        valoracionInstance.l4propioClub = (params?.l4propioClub) ? 10 : 0
        valoracionInstance.l4otrosClubes = (params?.l4otrosClubes) ? 15 : 0
        valoracionInstance.l4ampas = (params?.l4ampas) ? 5 : 0
        valoracionInstance.l4categoriasEscolares = (params?.l4categoriasEscolares) ? 15 : 0
        valoracionInstance.l4categoriasFederadas = (params?.l4categoriasFederadas) ? 10 : 0
        valoracionInstance.l4veteranos = (params?.l4veteranos) ? 5 : 0

        valoracionInstance.l4participacionEstimada = (params?.l4participacionEstimada) ? 2 : 0
        valoracionInstance.l4comunicacionAMedios = (params?.l4comunicacionAMedios) ? 4 : 0
        valoracionInstance.l4usoNuevasTecnologías = (params?.l4usoNuevasTecnologías) ? 4 : 0

        valoracionInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Valoracion.label', default: 'Valoracion'), valoracionInstance.id])
                redirect valoracionInstance
            }
            '*' { respond valoracionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Valoracion valoracionInstance) {

        if (valoracionInstance == null) {
            notFound()
            return
        }

        valoracionInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Valoracion.label', default: 'Valoracion'), valoracionInstance.id])
                //redirect action:"index", method:"GET"
                redirect(uri: '/')
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'valoracion.label', default: 'Valoracion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

}
