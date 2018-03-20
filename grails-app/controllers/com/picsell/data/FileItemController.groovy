package com.picsell.data



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FileItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FileItem.list(params), model:[fileItemInstanceCount: FileItem.count()]
    }

    def show(FileItem fileItemInstance) {
        respond fileItemInstance
    }

    def create() {
        respond new FileItem(params)
    }

    @Transactional
    def save(FileItem fileItemInstance) {
        if (fileItemInstance == null) {
            notFound()
            return
        }

        if (fileItemInstance.hasErrors()) {
            respond fileItemInstance.errors, view:'create'
            return
        }

        fileItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'fileItemInstance.label', default: 'FileItem'), fileItemInstance.id])
                redirect fileItemInstance
            }
            '*' { respond fileItemInstance, [status: CREATED] }
        }
    }

    def edit(FileItem fileItemInstance) {
        respond fileItemInstance
    }

    @Transactional
    def update(FileItem fileItemInstance) {
        if (fileItemInstance == null) {
            notFound()
            return
        }

        if (fileItemInstance.hasErrors()) {
            respond fileItemInstance.errors, view:'edit'
            return
        }

        fileItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FileItem.label', default: 'FileItem'), fileItemInstance.id])
                redirect fileItemInstance
            }
            '*'{ respond fileItemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FileItem fileItemInstance) {

        if (fileItemInstance == null) {
            notFound()
            return
        }

        fileItemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FileItem.label', default: 'FileItem'), fileItemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'fileItemInstance.label', default: 'FileItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
