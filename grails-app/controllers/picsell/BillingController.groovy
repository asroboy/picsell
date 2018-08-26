package picsell

import com.picsell.data.BillingAddress
import com.picsell.data.PaymentMethod
import com.picsell.security.User
import grails.transaction.Transactional

class BillingController {

    @Transactional
    def saveBillingPayment() {
        def user = User.get(params.user_id) ?: User.findByUsername(sec.loggedInUserInfo(field: 'username'))
        print(user)
        def billing = new BillingAddress(
                user: user,
                address1: params.address_1,
                address2: params.address_2,
                city: params.city,
                country: params.country,
                stateProvince: params.state,
                postalCode: params.postal_code,
        )

        if (billing.hasErrors()) {
            print(billing.errors)
            return
        }
        billing.save(flush: true)

        print(params.mvcs)
        def payment = new PaymentMethod(
                user: user,
                creaditCardNumber: params.cc_number,
                firstName: params.first_name,
                lastName: params.last_name,
                expiredDate: params.month + "/" + params.year,
                securityCode: 0
        )

        if (payment.hasErrors()) {
            print(payment.errors)
            return
        }
        payment.save(flush: true)

        redirect controller: 'home', action: 'purchase_summary', id: params.item_id
//        [billing: billingAddress, payment: paymentMethod]
    }
}
