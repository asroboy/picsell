package com.picsell.data



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemGroupSizeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemGroupSize.list(params), model:[itemGroupSizeInstanceCount: ItemGroupSize.count()]
    }

    def show(ItemGroupSize itemGroupSizeInstance) {
        respond itemGroupSizeInstance
    }

    def create() {
        respond new ItemGroupSize(params)
    }

    @Transactional
    def save(ItemGroupSize itemGroupSizeInstance) {
        if (itemGroupSizeInstance == null) {
            notFound()
            return
        }

        if (itemGroupSizeInstance.hasErrors()) {
            respond itemGroupSizeInstance.errors, view:'create'
            return
        }

        itemGroupSizeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemGroupSizeInstance.label', default: 'ItemGroupSize'), itemGroupSizeInstance.id])
                redirect itemGroupSizeInstance
            }
            '*' { respond itemGroupSizeInstance, [status: CREATED] }
        }
    }

    def edit(ItemGroupSize itemGroupSizeInstance) {
        respond itemGroupSizeInstance
    }

    @Transactional
    def update(ItemGroupSize itemGroupSizeInstance) {
        if (itemGroupSizeInstance == null) {
            notFound()
            return
        }

        if (itemGroupSizeInstance.hasErrors()) {
            respond itemGroupSizeInstance.errors, view:'edit'
            return
        }

        itemGroupSizeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemGroupSize.label', default: 'ItemGroupSize'), itemGroupSizeInstance.id])
                redirect itemGroupSizeInstance
            }
            '*'{ respond itemGroupSizeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemGroupSize itemGroupSizeInstance) {

        if (itemGroupSizeInstance == null) {
            notFound()
            return
        }

        itemGroupSizeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemGroupSize.label', default: 'ItemGroupSize'), itemGroupSizeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemGroupSizeInstance.label', default: 'ItemGroupSize'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
