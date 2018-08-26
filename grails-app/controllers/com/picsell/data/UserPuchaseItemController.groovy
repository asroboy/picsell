package com.picsell.data



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserPuchaseItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserPuchaseItem.list(params), model:[userPuchaseItemInstanceCount: UserPuchaseItem.count()]
    }

    def show(UserPuchaseItem userPuchaseItemInstance) {
        respond userPuchaseItemInstance
    }

    def create() {
        respond new UserPuchaseItem(params)
    }

    @Transactional
    def save(UserPuchaseItem userPuchaseItemInstance) {
        if (userPuchaseItemInstance == null) {
            notFound()
            return
        }

        if (userPuchaseItemInstance.hasErrors()) {
            respond userPuchaseItemInstance.errors, view:'create'
            return
        }

        userPuchaseItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userPuchaseItemInstance.label', default: 'UserPuchaseItem'), userPuchaseItemInstance.id])
                redirect userPuchaseItemInstance
            }
            '*' { respond userPuchaseItemInstance, [status: CREATED] }
        }
    }

    def edit(UserPuchaseItem userPuchaseItemInstance) {
        respond userPuchaseItemInstance
    }

    @Transactional
    def update(UserPuchaseItem userPuchaseItemInstance) {
        if (userPuchaseItemInstance == null) {
            notFound()
            return
        }

        if (userPuchaseItemInstance.hasErrors()) {
            respond userPuchaseItemInstance.errors, view:'edit'
            return
        }

        userPuchaseItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserPuchaseItem.label', default: 'UserPuchaseItem'), userPuchaseItemInstance.id])
                redirect userPuchaseItemInstance
            }
            '*'{ respond userPuchaseItemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserPuchaseItem userPuchaseItemInstance) {

        if (userPuchaseItemInstance == null) {
            notFound()
            return
        }

        userPuchaseItemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserPuchaseItem.label', default: 'UserPuchaseItem'), userPuchaseItemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userPuchaseItemInstance.label', default: 'UserPuchaseItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
