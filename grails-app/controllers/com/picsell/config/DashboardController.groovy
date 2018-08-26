package com.picsell.config

import com.picsell.data.UserPuchaseItem
import com.picsell.security.User

class DashboardController {

    def index() {}

    def contributor(User userInstance) {

    }

    def admin(User userInstance) {

    }

    def user(User userInstance) {

    }

    def contributor_earnings(User userInstance) {
        def userPurchaseItems = UserPuchaseItem.findAllByContributor(userInstance)
        [userPurchaseItems: userPurchaseItems]
    }
}
