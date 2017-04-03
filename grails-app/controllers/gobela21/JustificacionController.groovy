package gobela21



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class JustificacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Justificacion.list(params), model:[justificacionInstanceCount: Justificacion.count()]
    }

    def show(Justificacion justificacionInstance) {
        respond justificacionInstance
    }

    def create() {
        respond new Justificacion(params)
    }

    @Transactional
    def save(Justificacion justificacionInstance) {
        if (justificacionInstance == null) {
            notFound()
            return
        }

        if (justificacionInstance.hasErrors()) {
            respond justificacionInstance.errors, view:'create'
            return
        }

        justificacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'justificacion.label', default: 'Justificacion'), justificacionInstance.id])
                redirect justificacionInstance
            }
            '*' { respond justificacionInstance, [status: CREATED] }
        }
    }

    def edit(Justificacion justificacionInstance) {
        respond justificacionInstance
    }

    def cancel() {
        Justificacion justificacionInstance = Justificacion.get(params.id)
        redirect action: "show", id: justificacionInstance.id
    }

    @Transactional
    def update(Justificacion justificacionInstance) {
        if (justificacionInstance == null) {
            notFound()
            return
        }

        if (justificacionInstance.hasErrors()) {
            respond justificacionInstance.errors, view:'edit'
            return
        }

        justificacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Justificacion.label', default: 'Justificacion'), justificacionInstance.id])
                redirect justificacionInstance
            }
            '*'{ respond justificacionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Justificacion justificacionInstance) {

        if (justificacionInstance == null) {
            notFound()
            return
        }

        justificacionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Justificacion.label', default: 'Justificacion'), justificacionInstance.id])
                //redirect action:"index", method:"GET"
                redirect(uri:'/')
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'justificacion.label', default: 'Justificacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
