package com.picsell.data

import com.picsell.security.User

class UserChart {

    User user
    Item item
    String status
    static constraints = {
        user nullable: false
        item nullable: false
        status nullable: true, blank: true
    }
}
