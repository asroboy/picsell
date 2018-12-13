package com.picsell.data



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CurrencyRatesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CurrencyRates.list(params), model:[currencyRatesInstanceCount: CurrencyRates.count()]
    }

    def show(CurrencyRates currencyRatesInstance) {
        respond currencyRatesInstance
    }

    def create() {
        respond new CurrencyRates(params)
    }

    @Transactional
    def save(CurrencyRates currencyRatesInstance) {
        if (currencyRatesInstance == null) {
            notFound()
            return
        }

        if (currencyRatesInstance.hasErrors()) {
            respond currencyRatesInstance.errors, view:'create'
            return
        }

        currencyRatesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'currencyRatesInstance.label', default: 'CurrencyRates'), currencyRatesInstance.id])
                redirect currencyRatesInstance
            }
            '*' { respond currencyRatesInstance, [status: CREATED] }
        }
    }

    def edit(CurrencyRates currencyRatesInstance) {
        respond currencyRatesInstance
    }

    @Transactional
    def update(CurrencyRates currencyRatesInstance) {
        if (currencyRatesInstance == null) {
            notFound()
            return
        }

        if (currencyRatesInstance.hasErrors()) {
            respond currencyRatesInstance.errors, view:'edit'
            return
        }

        currencyRatesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CurrencyRates.label', default: 'CurrencyRates'), currencyRatesInstance.id])
                redirect currencyRatesInstance
            }
            '*'{ respond currencyRatesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CurrencyRates currencyRatesInstance) {

        if (currencyRatesInstance == null) {
            notFound()
            return
        }

        currencyRatesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CurrencyRates.label', default: 'CurrencyRates'), currencyRatesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'currencyRatesInstance.label', default: 'CurrencyRates'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
