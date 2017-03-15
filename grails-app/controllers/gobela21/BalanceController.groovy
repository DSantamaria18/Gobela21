package gobela21



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BalanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Balance.list(params), model:[balanceInstanceCount: Balance.count()]
    }

    def show(Balance balanceInstance) {
        respond balanceInstance
    }

    def create() {
        respond new Balance(params)
    }

    @Transactional
    def save(Balance balanceInstance) {
        if (balanceInstance == null) {
            notFound()
            return
        }

        if (balanceInstance.hasErrors()) {
            respond balanceInstance.errors, view:'create'
            return
        }

        balanceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'balance.label', default: 'Balance'), balanceInstance.id])
                redirect balanceInstance
            }
            '*' { respond balanceInstance, [status: CREATED] }
        }
    }

    def edit(Balance balanceInstance) {
        respond balanceInstance
    }

    @Transactional
    def update(Balance balanceInstance) {
        if (balanceInstance == null) {
            notFound()
            return
        }

        if (balanceInstance.hasErrors()) {
            respond balanceInstance.errors, view:'edit'
            return
        }

        balanceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Balance.label', default: 'Balance'), balanceInstance.id])
                redirect balanceInstance
            }
            '*'{ respond balanceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Balance balanceInstance) {

        if (balanceInstance == null) {
            notFound()
            return
        }

        balanceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Balance.label', default: 'Balance'), balanceInstance.id])
//                redirect action:"index", method:"GET"
                redirect(uri:'/')
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'balance.label', default: 'Balance'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
