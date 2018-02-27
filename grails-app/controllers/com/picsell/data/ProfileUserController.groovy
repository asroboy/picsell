package com.picsell.data



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfileUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProfileUser.list(params), model:[profileUserInstanceCount: ProfileUser.count()]
    }

    def show(ProfileUser profileUserInstance) {
        respond profileUserInstance
    }

    def create() {
        respond new ProfileUser(params)
    }

    @Transactional
    def save(ProfileUser profileUserInstance) {
        if (profileUserInstance == null) {
            notFound()
            return
        }

        if (profileUserInstance.hasErrors()) {
            respond profileUserInstance.errors, view:'create'
            return
        }

        profileUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profileUserInstance.label', default: 'ProfileUser'), profileUserInstance.id])
                redirect profileUserInstance
            }
            '*' { respond profileUserInstance, [status: CREATED] }
        }
    }

    def edit(ProfileUser profileUserInstance) {
        respond profileUserInstance
    }

    @Transactional
    def update(ProfileUser profileUserInstance) {
        if (profileUserInstance == null) {
            notFound()
            return
        }

        if (profileUserInstance.hasErrors()) {
            respond profileUserInstance.errors, view:'edit'
            return
        }

        profileUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProfileUser.label', default: 'ProfileUser'), profileUserInstance.id])
                redirect profileUserInstance
            }
            '*'{ respond profileUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProfileUser profileUserInstance) {

        if (profileUserInstance == null) {
            notFound()
            return
        }

        profileUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProfileUser.label', default: 'ProfileUser'), profileUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profileUserInstance.label', default: 'ProfileUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
