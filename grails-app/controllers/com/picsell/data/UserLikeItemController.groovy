package com.picsell.data



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserLikeItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserLikeItem.list(params), model:[userLikeItemInstanceCount: UserLikeItem.count()]
    }

    def show(UserLikeItem userLikeItemInstance) {
        respond userLikeItemInstance
    }

    def create() {
        respond new UserLikeItem(params)
    }

    @Transactional
    def save(UserLikeItem userLikeItemInstance) {
        if (userLikeItemInstance == null) {
            notFound()
            return
        }

        if (userLikeItemInstance.hasErrors()) {
            respond userLikeItemInstance.errors, view:'create'
            return
        }

        userLikeItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userLikeItemInstance.label', default: 'UserLikeItem'), userLikeItemInstance.id])
                redirect userLikeItemInstance
            }
            '*' { respond userLikeItemInstance, [status: CREATED] }
        }
    }

    def edit(UserLikeItem userLikeItemInstance) {
        respond userLikeItemInstance
    }

    @Transactional
    def update(UserLikeItem userLikeItemInstance) {
        if (userLikeItemInstance == null) {
            notFound()
            return
        }

        if (userLikeItemInstance.hasErrors()) {
            respond userLikeItemInstance.errors, view:'edit'
            return
        }

        userLikeItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserLikeItem.label', default: 'UserLikeItem'), userLikeItemInstance.id])
                redirect userLikeItemInstance
            }
            '*'{ respond userLikeItemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserLikeItem userLikeItemInstance) {

        if (userLikeItemInstance == null) {
            notFound()
            return
        }

        userLikeItemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserLikeItem.label', default: 'UserLikeItem'), userLikeItemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userLikeItemInstance.label', default: 'UserLikeItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
