package com.picsell.support

class CustomerMessage {

    String fullName
    String email
    String message

    static constraints = {
        fullName nullable: false
        email nullable: false
        message blank: false, size: 1..1000
    }
}
