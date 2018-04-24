package com.picsell.test



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TestFileController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TestFile.list(params), model:[testFileInstanceCount: TestFile.count()]
    }

    def show(TestFile testFileInstance) {
        respond testFileInstance
    }

    def create() {
        respond new TestFile(params)
    }

    @Transactional
    def save(TestFile testFileInstance) {
        if (testFileInstance == null) {
            notFound()
            return
        }

        if (testFileInstance.hasErrors()) {
            respond testFileInstance.errors, view:'create'
            return
        }

        testFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testFileInstance.label', default: 'TestFile'), testFileInstance.id])
                redirect testFileInstance
            }
            '*' { respond testFileInstance, [status: CREATED] }
        }
    }

    def edit(TestFile testFileInstance) {
        respond testFileInstance
    }

    @Transactional
    def update(TestFile testFileInstance) {
        if (testFileInstance == null) {
            notFound()
            return
        }

        if (testFileInstance.hasErrors()) {
            respond testFileInstance.errors, view:'edit'
            return
        }

        testFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TestFile.label', default: 'TestFile'), testFileInstance.id])
                redirect testFileInstance
            }
            '*'{ respond testFileInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TestFile testFileInstance) {

        if (testFileInstance == null) {
            notFound()
            return
        }

        testFileInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TestFile.label', default: 'TestFile'), testFileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testFileInstance.label', default: 'TestFile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
