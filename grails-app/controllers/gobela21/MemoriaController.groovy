package gobela21


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MemoriaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Memoria.list(params), model: [memoriaInstanceCount: Memoria.count()]
    }

    def show(Memoria memoriaInstance) {
        respond memoriaInstance
    }

    def create() {
        respond new Memoria(params)
    }

    @Transactional
    def save(Memoria memoriaInstance) {
        if (memoriaInstance == null) {
            notFound()
            return
        }

        if (memoriaInstance.hasErrors()) {
            respond memoriaInstance.errors, view: 'create'
            return
        }

        memoriaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'memoria.label', default: 'Memoria'), memoriaInstance.id])
                redirect memoriaInstance
            }
            '*' { respond memoriaInstance, [status: CREATED] }
        }
    }

    def edit(Memoria memoriaInstance) {
        respond memoriaInstance
    }

    def cancel() {
        Memoria memoriaInstance = Memoria.get(params.id)
        redirect action: "show", id: memoriaInstance.id
    }

    @Transactional
    def update(Memoria memoriaInstance) {
        if (memoriaInstance == null) {
            notFound()
            return
        }

        if (memoriaInstance.hasErrors()) {
            respond memoriaInstance.errors, view: 'edit'
            return
        }

        memoriaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Memoria.label', default: 'Memoria'), memoriaInstance.id])
                redirect memoriaInstance
            }
            '*' { respond memoriaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Memoria memoriaInstance) {

        if (memoriaInstance == null) {
            notFound()
            return
        }

        memoriaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Memoria.label', default: 'Memoria'), memoriaInstance.id])
//                redirect action:"index", method:"GET"
                redirect(uri:'/')
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'memoria.label', default: 'Memoria'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
