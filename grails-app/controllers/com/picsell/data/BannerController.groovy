package com.picsell.data


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BannerController {

    static allowedMethods = [save: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Banner.list(params), model: [bannerInstanceCount: Banner.count()]
    }

    def show(Banner bannerInstance) {
        respond bannerInstance
    }

    def create() {
        respond new Banner(params)
    }

    @Transactional
    def save(Banner bannerInstance) {
        if (bannerInstance == null) {
            notFound()
            return
        }

        if (bannerInstance.hasErrors()) {
            respond bannerInstance.errors, view: 'create'
            return
        }

        bannerInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bannerInstance.label', default: 'Banner'), bannerInstance.id])
                redirect bannerInstance
            }
            '*' { respond bannerInstance, [status: CREATED] }
        }
    }

    def edit(Banner bannerInstance) {
        respond bannerInstance
    }

    @Transactional
    def update(Banner bannerInstance) {
        if (bannerInstance == null) {
            notFound()
            return
        }

        if (bannerInstance.hasErrors()) {
            respond bannerInstance.errors, view: 'edit'
            return
        }

        bannerInstance.save flush: true

        print("update")

        def file = request.getFile('file')
        if (file.empty) {
            print("file empty")
        } else {
            print("save file")
            saveFile(file, bannerInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Banner.label', default: 'Banner'), bannerInstance.id])
                redirect bannerInstance
            }
            '*' { respond bannerInstance, [status: OK] }
        }

    }

    @Transactional
    def delete(Banner bannerInstance) {

        if (bannerInstance == null) {
            notFound()
            return
        }

        bannerInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Banner.label', default: 'Banner'), bannerInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bannerInstance.label', default: 'Banner'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def saveFile(def file, Banner mItemInstance) {
        if (file != null && mItemInstance.id) {
            print("File name " + file.originalFilename)
            def imageFile = ImageFile.findByTableIdAndTableName(mItemInstance?.id, mItemInstance.class.simpleName) ?: new ImageFile()
            if (!imageFile?.namaFile.equals(file.originalFilename)) {
                imageFile.namaFile = file.originalFilename
                imageFile.path = grailsApplication.config.uploadFolder + "banner/" + file.originalFilename
                imageFile.ukuranFile = file.size
                imageFile.tipeFile = file.contentType
                imageFile.tableId = mItemInstance?.id
                imageFile.tableName = mItemInstance.class.simpleName

                file.transferTo(new File(grailsApplication.config.uploadFolder + "banner/" + file.originalFilename))
                imageFile.save()
                print("ID " + imageFile?.id)
            }

        }

    }
}
