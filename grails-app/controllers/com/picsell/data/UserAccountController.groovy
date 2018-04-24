package com.picsell.data

import com.picsell.security.User

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserAccountController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def myAccount(){
        def user = User.get(sec.loggedInUserInfo(field:'id'))
        [accountInstance:  UserAccount.findByUser(user)?.account]
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserAccount.list(params), model:[userAccountInstanceCount: UserAccount.count()]
    }

    def show(UserAccount userAccountInstance) {
        respond userAccountInstance
    }

    def create() {
        respond new UserAccount(params)
    }

    @Transactional
    def save(UserAccount userAccountInstance) {
        if (userAccountInstance == null) {
            notFound()
            return
        }

        if (userAccountInstance.hasErrors()) {
            respond userAccountInstance.errors, view:'create'
            return
        }

        userAccountInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userAccountInstance.label', default: 'UserAccount'), userAccountInstance.id])
                redirect userAccountInstance
            }
            '*' { respond userAccountInstance, [status: CREATED] }
        }
    }

    def edit(UserAccount userAccountInstance) {
        respond userAccountInstance
    }

    @Transactional
    def update(UserAccount userAccountInstance) {
        if (userAccountInstance == null) {
            notFound()
            return
        }

        if (userAccountInstance.hasErrors()) {
            respond userAccountInstance.errors, view:'edit'
            return
        }

        userAccountInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserAccount.label', default: 'UserAccount'), userAccountInstance.id])
                redirect userAccountInstance
            }
            '*'{ respond userAccountInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserAccount userAccountInstance) {

        if (userAccountInstance == null) {
            notFound()
            return
        }

        userAccountInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserAccount.label', default: 'UserAccount'), userAccountInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userAccountInstance.label', default: 'UserAccount'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
