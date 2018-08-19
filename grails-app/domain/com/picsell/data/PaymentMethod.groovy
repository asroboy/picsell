package com.picsell.data

import com.picsell.security.User

class PaymentMethod {

    String firstName
    String lastName
    String creaditCardNumber
    int securityCode
    String expiredDate
    User user

    static constraints = {
        firstName nullable: true, blank: false
        lastName nullable: true, blank: false
        creaditCardNumber nullable: true
        expiredDate nullable: true, blank: false
        user nullable: false
    }
}
