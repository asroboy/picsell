package com.picsell.data

class Category {

    String name
    String description

    static constraints = {
        name nullable: false
        description nullable: true
    }
}
