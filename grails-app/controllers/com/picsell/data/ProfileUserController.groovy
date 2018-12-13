package com.picsell.data

import com.picsell.security.User
import grails.converters.JSON

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfileUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProfileUser.list(params), model: [profileUserInstanceCount: ProfileUser.count()]
    }


    @Transactional
    def profile(User userInstance) {
//        if (profileUserInstance) {
//            [profileUserInstance: profileUserInstance, userObject: profileUserInstance?.user]
//        } else {
//            def userObject = User.get(params.uid)
//            profileUserInstance = new ProfileUser(user: userObject)
        [userObject: userInstance]
//        }
    }

    @Transactional
    def saveProfileImage(User userInstance) {
        if (params.file) {
            def file = request.getFile('file')
            if (file.empty) {
                flash.message = "File cannot be empty"
            } else {
                def imageInstance = ImageFile.findByTableNameAndTableId(userInstance.class.simpleName, userInstance.id) ?: new ImageFile()
                imageInstance.tableName = userInstance.class.simpleName
                imageInstance.tableId = userInstance.id
                imageInstance.namaFile = file.originalFilename
                imageInstance.lampiran = file.getBytes()
                imageInstance.path = "-"
                imageInstance.ukuranFile = file.getBytes().length
                print(file.getBytes().length)
                imageInstance.save(flush: true)
                if (imageInstance.hasErrors()) {
                    flash.message = "Error while saving profile picture"
                } else {
                    redirect(controller: 'profileUser', action: 'profile', id: userInstance?.id)
                }

            }
        }
    }

    def show(ProfileUser profileUserInstance) {
        respond profileUserInstance
    }

    def create() {
        respond new ProfileUser(params)
    }


//    @Transactional
//    def saveProfileImage(ProfileUser profileUserInstance) {
//        if (!profileUserInstance.id) {
//            profileUserInstance.save(flush: true)
//
//            println("Save new profile === > " + profileUserInstance?.id)
//        }
//        if (params.file) {
//            def file = request.getFile('file')
//            if (file.empty) {
//                flash.message = "File cannot be empty"
//            } else {
//                def imageInstance = ImageFile.findByTableNameAndTableId(profileUserInstance.class.simpleName, profileUserInstance.id) ?: new ImageFile()
//                imageInstance.tableName = profileUserInstance.class.simpleName
//                imageInstance.tableId = profileUserInstance.id
//                imageInstance.namaFile = file.originalFilename
//                imageInstance.lampiran = file.getBytes()
//                imageInstance.path = "-"
//                imageInstance.ukuranFile = file.getBytes().length
//                print(file.getBytes().length)
//                imageInstance.save(flush: true)
//                if (imageInstance.hasErrors()) {
//                    print(imageInstance.errors)
//                } else {
//                    print(imageInstance)
//                }
//
//            }
//        }
//
//        redirect(action: 'profile', id: profileUserInstance.id)
//    }

    @Transactional
    def saveProfile(ProfileUser profileUserInstance) {
        if (profileUserInstance == null) {
            notFound()
            return
        }

        if (profileUserInstance.hasErrors()) {
            respond profileUserInstance.errors, view: 'profile'
            return
        }

        profileUserInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profileUserInstance.label', default: 'ProfileUser'), profileUserInstance.id])
                redirect action: "profile", id: profileUserInstance.id, method: "GET"
            }
            '*' { respond profileUserInstance, [status: CREATED] }
        }
    }


    @Transactional
    def save(ProfileUser profileUserInstance) {
        if (profileUserInstance == null) {
            notFound()
            return
        }

        if (profileUserInstance.hasErrors()) {
            respond profileUserInstance.errors, view: 'create'
            return
        }

        profileUserInstance.save flush: true

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
            respond profileUserInstance.errors, view: 'edit'
            return
        }

        profileUserInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProfileUser.label', default: 'ProfileUser'), profileUserInstance.id])
                redirect profileUserInstance
            }
            '*' { respond profileUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProfileUser profileUserInstance) {

        if (profileUserInstance == null) {
            notFound()
            return
        }

        profileUserInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProfileUser.label', default: 'ProfileUser'), profileUserInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profileUserInstance.label', default: 'ProfileUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
