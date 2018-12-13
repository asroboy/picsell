package com.picsell.data

import com.picsell.security.User

class PaymentMethod {


    String name
    String accountNumber
    String bankName
    String accountName

    String firstName
    String lastName
    String creaditCardNumber
    int securityCode
    String expiredDate
    User user

    static constraints = {
        accountNumber nullable: true
        bankName nullable: true
        accountName nullable: true

        firstName nullable: true, blank: false
        lastName nullable: true, blank: false
        creaditCardNumber nullable: true
        expiredDate nullable: true, blank: false
        user nullable: false
    }
}
