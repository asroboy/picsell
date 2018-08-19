package com.picsell.data

import com.picsell.security.User

class BillingAddress {

    String country
    String address1
    String address2
    String city
    String stateProvince
    User user
    String postalCode

    static constraints = {
        country nullable: true
        address1 nullable: true
        address2 nullable: true
        stateProvince nullable: true
        city nullable: true
        user nullable: false
        postalCode nullable: true
    }
}
