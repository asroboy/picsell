package com.picsell.data

class ItemViewed {

    Item item
    int viewCount

    static constraints = {
        item nullable: false
    }
}
