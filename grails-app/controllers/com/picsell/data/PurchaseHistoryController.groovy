package com.picsell.data

import com.picsell.security.User

class PurchaseHistoryController {

    def index(User userInstance) {
        def userPuchaseItems = UserPuchaseItem.findAllByUser(userInstance);
        [userInstance: userInstance, userPuchaseItems: userPuchaseItems]
    }
}
