package com.picsell.data

class ItemTags {

    Item item
    Tag tag

    static constraints = {
        item nullable: false
        tag nullable: false
    }
}
