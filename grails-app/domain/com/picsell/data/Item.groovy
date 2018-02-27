package com.picsell.data

import com.picsell.security.User

class Item {
    String name
    String description
    double price
    User userOwner


    static constraints = {
        name nullable:  false
        description size: 1..1000
        userOwner nullable: false
    }

    static  mapping = {
        price defaultValue: 0.0
    }



}
