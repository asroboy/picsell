package com.picsell.data

class BillingItem {
    Billing invoice
    String itemType
    Long itemId
    double price
    int qty
    double total

    static constraints = {
        itemId nullable: false
        invoice nullable: false
        itemType nullable: false
    }

    static mapping = {
        price default: 0.0
        total default: 0.0
    }
}
