package com.picsell.data

import com.picsell.security.User
import grails.transaction.Transactional
import org.springframework.mail.javamail.MimeMessageHelper
import org.springframework.mail.javamail.MimeMessagePreparator
import org.springframework.web.multipart.MultipartFile

import javax.mail.internet.MimeMessage

import static org.springframework.http.HttpStatus.OK

class UserItemController {
    def grailsApplication

    def index() {
        def user = User.get(sec.loggedInUserInfo(field: "id"))
        println(user?.username)
        def items = Item.findAllByUserOwner(user)
        [items: items]
    }

    def addFirstItem() {
        respond new Item(params)
    }

    def addItem() {
        respond new Item(params)
    }

    def contributorItems() {
        def items = params.status ? Item.findAllByStatus(params.status) : Item.findAll()
        [items: items]
    }

    def itemDetail(Item itemInstance) {
        respond itemInstance
    }

    @Transactional
    def mSaveItem() {

        Item mItemInstance = new Item()


        mItemInstance.name = request.getParameter("name")
        mItemInstance.description = request.getParameter("description")
        mItemInstance.price = Double.parseDouble(request.getParameter("price"))
        mItemInstance.currency = request.getParameter("currency")
        mItemInstance.tags = request.getParameter("tags")
        def category = Category.get(request.getParameter("category"))
        mItemInstance.category = category
        mItemInstance.createdDate = new Date()
        mItemInstance.userOwner = User.get(request.getParameter("userOwner.id"))
        mItemInstance.status = "pending"

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
            respond "File cannot be empty", view: 'addItem'
            return
        } else {
            if (mItemInstance.hasErrors()) {
                respond mItemInstance.errors, view: 'addItem'
                return
            }
            mItemInstance.save()
            saveFile(file, mItemInstance)
        }

    }


    def updateItem_(Item itemInstance) {
        updateItem(itemInstance)
    }

    @Transactional
    def updateItem(Item mItemInstance) {
        print("ID : " + mItemInstance?.id)
        if (mItemInstance == null) {
            notFound()
            return
        }

        if (mItemInstance.hasErrors()) {
            respond mItemInstance.errors, view: 'itemDetail'
            return
        }

        def file = request.getFile('file')
        if (file) {
            print("FILE EXIST")
            mItemInstance.name = request.getParameter("name")
            mItemInstance.description = request.getParameter("description")
            mItemInstance.price = Double.parseDouble(request.getParameter("price").replace(",", ""))
            mItemInstance.currency = request.getParameter("currency")
            mItemInstance.tags = request.getParameter("tags")
            def category = Category.get(request.getParameter("category"))
            mItemInstance.category = category
            mItemInstance.statusCgDate = new Date()
            mItemInstance.userOwner = User.get(request.getParameter("userOwner.id"))
            mItemInstance.status = "pending"
            mItemInstance.save(flush: true)
            if (mItemInstance.hasErrors()) {
                respond mItemInstance.errors, view: 'itemDetail'
                return
            }
            String fileName = file.originalFilename;
            if (!fileName.trim().equals("")) {
                saveFile(file, mItemInstance)
            }else{
                redirect(action: "index")
            }


        } else {
            print("NO FILE")
            mItemInstance.name = request.getParameter("name")
            mItemInstance.description = request.getParameter("description")
            mItemInstance.price = Double.parseDouble(request.getParameter("price").replace(",", ""))
            mItemInstance.currency = request.getParameter("currency")
            mItemInstance.tags = request.getParameter("tags")
            def category = Category.get(request.getParameter("category"))
            mItemInstance.category = category
            mItemInstance.statusCgDate = new Date()
            mItemInstance.userOwner = User.get(request.getParameter("userOwner.id"))
            mItemInstance.status = "pending"
            mItemInstance.save flush: true
            if (mItemInstance.hasErrors()) {
                respond mItemInstance.errors, view: 'itemDetail'
                return
            }
            redirect(action: "index")
        }

    }

    def saveFile(def file, Item mItemInstance) {
        if (file != null && mItemInstance.id) {
            print("File name " + file.originalFilename)
            def imageFile = ImageFile.findByTableIdAndTableName(mItemInstance?.id, mItemInstance.class.simpleName) ?: new ImageFile()
            if (!imageFile?.namaFile.equals(file.originalFilename)) {
                imageFile.namaFile = file.originalFilename
                imageFile.path = grailsApplication.config.uploadFolder + file.originalFilename
                imageFile.ukuranFile = file.size
                imageFile.tipeFile = file.contentType
                imageFile.tableId = mItemInstance?.id
                imageFile.tableName = mItemInstance.class.simpleName

//                File destFile = new File(grailsApplication.config.uploadFolder + "/" + file.originalFilename);
//                if (destFile.exists()) {
//                    print("DELETE File " + grailsApplication.config.uploadFolder + file.originalFilename)
//                    destFile.delete();
//                }
                file.transferTo(new File(grailsApplication.config.uploadFolder + "/" + file.originalFilename))
                imageFile.save()
                print("ID " + imageFile?.id)
            }

        }

        redirect(action: "index")
    }


}
