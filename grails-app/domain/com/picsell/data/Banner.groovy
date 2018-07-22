package com.picsell.data

class Banner {

    String type
    String description
    boolean isActive


    static constraints = {
        type inList: ["big", "small"]
        description nullable: true, blank:  true
    }

    static mapping = {
        type defaultValue: "'big'"
    }
}
