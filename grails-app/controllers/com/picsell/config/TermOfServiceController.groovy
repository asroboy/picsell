package com.picsell.config



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TermOfServiceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TermOfService.list(params), model:[termOfServiceInstanceCount: TermOfService.count()]
    }

    def show(TermOfService termOfServiceInstance) {
        respond termOfServiceInstance
    }

    def create() {
        respond new TermOfService(params)
    }

    @Transactional
    def save(TermOfService termOfServiceInstance) {
        if (termOfServiceInstance == null) {
            notFound()
            return
        }

        if (termOfServiceInstance.hasErrors()) {
            respond termOfServiceInstance.errors, view:'create'
            return
        }

        termOfServiceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'termOfServiceInstance.label', default: 'TermOfService'), termOfServiceInstance.id])
                redirect termOfServiceInstance
            }
            '*' { respond termOfServiceInstance, [status: CREATED] }
        }
    }

    def edit(TermOfService termOfServiceInstance) {
        respond termOfServiceInstance
    }

    @Transactional
    def update(TermOfService termOfServiceInstance) {
        if (termOfServiceInstance == null) {
            notFound()
            return
        }

        if (termOfServiceInstance.hasErrors()) {
            respond termOfServiceInstance.errors, view:'edit'
            return
        }

        termOfServiceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TermOfService.label', default: 'TermOfService'), termOfServiceInstance.id])
                redirect termOfServiceInstance
            }
            '*'{ respond termOfServiceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TermOfService termOfServiceInstance) {

        if (termOfServiceInstance == null) {
            notFound()
            return
        }

        termOfServiceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TermOfService.label', default: 'TermOfService'), termOfServiceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'termOfServiceInstance.label', default: 'TermOfService'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
