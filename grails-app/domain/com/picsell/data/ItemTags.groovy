package com.picsell.data

class ItemTags {

    Item item
    String tag
    static constraints = {
        item nullable: false
        tag nullable: false
    }
}
