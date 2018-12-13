package com.picsell.data

import com.picsell.security.User

class Billing {

    String invoiceNumber
    User invoicedTo
    Date invoicedAt
    Date dueAt
    double amount
    String status
    boolean approved
    User approvedBy
    String paymentMethod
    Date paidAt
    Date aprovedAt

    static constraints = {
        invoiceNumber nullable: false
        invoicedTo nullable: false
        status nullable: true
        approvedBy nullable: true
        paymentMethod nullable: true
        paidAt nullable: true
        invoicedAt  nullable: true
        dueAt nullable:  true
        aprovedAt nullable:  true
    }

    static mapping = {
        amount default: 0.0
    }
}
