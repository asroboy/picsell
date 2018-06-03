package com.picsell.data

import com.picsell.security.User

class Item {
    String name
    String description
    double price
    String currency
    User userOwner
    Category category
    String status
    String statusInfo
    Date createdDate
    Date statusCgDate
    String statusCgBy

    static constraints = {
        name nullable: false
        description size: 1..1000
        userOwner nullable: false
        currency inList: ['IDR', 'USD', 'SGD']
        status nullable: true
        statusInfo nullable: true
        createdDate nullable: true
        statusCgDate nullable: true
        statusCgBy nullable: true
    }

    static mapping = {
        price defaultValue: 0.0
    }


}
