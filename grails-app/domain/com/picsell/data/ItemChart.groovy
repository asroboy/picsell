package com.picsell.data

import com.picsell.security.User

class ItemChart {

    Item item
    User user
    String status

    static constraints = {
        item nullable: false
        user nullable: false
        status nullable: true
    }
}
