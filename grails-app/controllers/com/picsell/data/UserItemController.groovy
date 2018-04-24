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
    def saveItem(Item mItemInstance) {
        if (mItemInstance == null) {
            notFound()
            return
        }

        if (mItemInstance.hasErrors()) {
            respond mItemInstance.errors, view:'addItem'
            return
        }

        mItemInstance.save flush:true

        redirect(action: "index")
    }

}
