package com.picsell.support



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerMessageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerMessage.list(params), model:[customerMessageInstanceCount: CustomerMessage.count()]
    }

    def show(CustomerMessage customerMessageInstance) {
        respond customerMessageInstance
    }

    def create() {
        respond new CustomerMessage(params)
    }

    @Transactional
    def save(CustomerMessage customerMessageInstance) {
        if (customerMessageInstance == null) {
            notFound()
            return
        }

        if (customerMessageInstance.hasErrors()) {
            respond customerMessageInstance.errors, view:'create'
            return
        }

        customerMessageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerMessageInstance.label', default: 'CustomerMessage'), customerMessageInstance.id])
                redirect customerMessageInstance
            }
            '*' { respond customerMessageInstance, [status: CREATED] }
        }
    }

    def edit(CustomerMessage customerMessageInstance) {
        respond customerMessageInstance
    }

    @Transactional
    def update(CustomerMessage customerMessageInstance) {
        if (customerMessageInstance == null) {
            notFound()
            return
        }

        if (customerMessageInstance.hasErrors()) {
            respond customerMessageInstance.errors, view:'edit'
            return
        }

        customerMessageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerMessage.label', default: 'CustomerMessage'), customerMessageInstance.id])
                redirect customerMessageInstance
            }
            '*'{ respond customerMessageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerMessage customerMessageInstance) {

        if (customerMessageInstance == null) {
            notFound()
            return
        }

        customerMessageInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerMessage.label', default: 'CustomerMessage'), customerMessageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerMessageInstance.label', default: 'CustomerMessage'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
