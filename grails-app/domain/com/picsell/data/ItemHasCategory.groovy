package com.picsell.data

class ItemHasCategory {
    Item item
    Category category

    static constraints = {
        item nullable: false
        category nullable: false
    }
}
