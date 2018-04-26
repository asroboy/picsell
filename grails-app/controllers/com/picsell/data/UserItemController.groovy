package com.picsell.data

import com.picsell.security.User
import grails.transaction.Transactional

class UserItemController {

    def index() {
        def user = User.get(sec.loggedInUserInfo(field: "id"))
        println(user?.username)
        def items = Item.findAllByUserOwner(user)
        [items: items]
    }

    def addItem() {
        respond new Item(params)
    }

    def itemDetail() {

    }

    @Transactional
    def mSaveItem() {
        Item mItemInstance = new Item()
        mItemInstance.name = request.getParameter("name")
        mItemInstance.description = request.getParameter("description")
        mItemInstance.price = Double.parseDouble(request.getParameter("price"))
        mItemInstance.currency = request.getParameter("currency")
        mItemInstance.userOwner = User.get(request.getParameter("userOwner.id"))

        def file = request.getFile('file')
        if (file.empty) {
            respond "File cannot be empty", view: 'addItem'
            print("file empty")
            return
        } else {
            mItemInstance.save()
            if (mItemInstance.hasErrors()) {
                respond mItemInstance.errors, view: 'addItem'
                return
            }

            print("File name " + file.originalFilename)
            def imageFile = new ImageFile()
            imageFile.namaFile = file.originalFilename
            imageFile.path = grailsApplication.config.uploadFolder + imageFile.namaFile
            imageFile.ukuranFile = file.size
            imageFile.tipeFile = file.contentType
            imageFile.tableId = mItemInstance?.id
            imageFile.tableName = mItemInstance.class.simpleName

            file.transferTo(new File(imageFile.path))
            imageFile.save()
            print("ID " + imageFile?.id)
            redirect(action: "index")
        }
    }

    @Transactional
    def saveItem(Item mItemInstance) {
        if (mItemInstance == null) {
            notFound()
            return
        }

        def file = request.getFile('file')
        if (file.empty) {
//            flash.message = "File cannot be empty"
            respond "File cannot be empty", view: 'addItem'
            return
        } else {

            if (mItemInstance.hasErrors()) {
                respond mItemInstance.errors, view: 'addItem'
                return
            }

            mItemInstance.save()
            saveFile(file)

//            redirect(action: "index")
        }

    }

    def saveFile(def file, Item mItemInstance) {
        print("File name " + file.originalFilename)
        def imageFile = new ImageFile()
        imageFile.namaFile = file.originalFilename
        imageFile.path = grailsApplication.config.uploadFolder + imageFile.namaFile
        imageFile.ukuranFile = file.size
        imageFile.tipeFile = file.contentType
        imageFile.tableId = mItemInstance?.id
        imageFile.tableName = mItemInstance.class.simpleName

        file.transferTo(new File(imageFile.path))
        imageFile.save()
        print("ID " + imageFile?.id)
        redirect(action: "index")
    }

}
