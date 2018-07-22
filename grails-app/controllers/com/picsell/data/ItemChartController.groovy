package com.picsell.data



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemChartController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemChart.list(params), model:[itemChartInstanceCount: ItemChart.count()]
    }

    def show(ItemChart itemChartInstance) {
        respond itemChartInstance
    }

    def create() {
        respond new ItemChart(params)
    }

    @Transactional
    def save(ItemChart itemChartInstance) {
        if (itemChartInstance == null) {
            notFound()
            return
        }

        if (itemChartInstance.hasErrors()) {
            respond itemChartInstance.errors, view:'create'
            return
        }

        itemChartInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemChartInstance.label', default: 'ItemChart'), itemChartInstance.id])
                redirect itemChartInstance
            }
            '*' { respond itemChartInstance, [status: CREATED] }
        }
    }

    def edit(ItemChart itemChartInstance) {
        respond itemChartInstance
    }

    @Transactional
    def update(ItemChart itemChartInstance) {
        if (itemChartInstance == null) {
            notFound()
            return
        }

        if (itemChartInstance.hasErrors()) {
            respond itemChartInstance.errors, view:'edit'
            return
        }

        itemChartInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemChart.label', default: 'ItemChart'), itemChartInstance.id])
                redirect itemChartInstance
            }
            '*'{ respond itemChartInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemChart itemChartInstance) {

        if (itemChartInstance == null) {
            notFound()
            return
        }

        itemChartInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemChart.label', default: 'ItemChart'), itemChartInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemChartInstance.label', default: 'ItemChart'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
