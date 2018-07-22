package com.picsell.data

import com.picsell.security.User

class UserLikeItem {
    User user
    Item item
    static constraints = {
        user unique: ['item']
    }
}
