package com.picsell.global

import com.picsell.data.Billing
import com.picsell.data.BillingItem
import com.picsell.data.ImageFile
import grails.converters.JSON

class BillingController {

    def springSecurityService

    def createBillingItem() {
        def imageFile = ImageFile.get(params.item_image_id)
        def user = springSecurityService.currentUser
        def billing = new Billing()
        Date now = new Date()
        billing.invoicedAt = now
        billing.invoiceNumber = "inv-" + now.getTime()
        billing.invoicedTo = user
        billing.amount = 0.0
        if(billing.hasErrors()){
            renderErrors("Error Occured")
        }

        billing.save(flush: true)

        def billingItem = new BillingItem()
        billingItem.invoice = billing
        billingItem.itemId = imageFile.tableId
        billingItem.itemType = imageFile.tableName
        billingItem.price = imageFile.groupSize.price
        int qty = Integer.parseInt(params.qty)
        billingItem.qty = qty
        def total = qty * imageFile.groupSize.price
        billingItem.total = total
        if(billingItem.hasErrors()){
            renderErrors("Error Occured")
        }

        billingItem.save(flush: true)

//        billing.amount = total
//
//        billing.save(flush: true)

        def result = [status: "ok", data: billing]
        render result as JSON
    }

}
