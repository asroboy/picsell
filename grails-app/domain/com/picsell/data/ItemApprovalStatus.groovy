package com.picsell.data

import com.picsell.security.User

class ItemApprovalStatus {

    Item item
    Date statusChangeAt
    String message
    User signedBy
    String status

    static constraints = {
        item nullable: false
        message nullable: true
        signedBy nullable: false
        status nullable: false
    }
}
