package com.picsell.data

class ItemGroupSize {

    String groupLabel
    int price
    int minSize
    int maxSize

    static constraints = {
        groupLabel inList: ["S", "M", "L", "Others"], nullable: false
    }
}
