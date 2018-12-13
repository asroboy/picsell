package picsell

import com.picsell.data.BillingAddress
import com.picsell.data.PaymentMethod
import com.picsell.security.User
import grails.transaction.Transactional

class BillingController {

    static allowedMethods = [updateBillingPayment: "POST"]

    @Transactional
    def saveBillingPayment() {
        def user = User.get(params.user_id) ?: User.findByUsername(sec.loggedInUserInfo(field: 'username'))
        print(user)
        def billing = BillingAddress.findByUser(user) ?: new BillingAddress()
        billing.user = user
        billing.address1 = params.address_1
        billing.address2 = params.address_2
        billing.city = params.city
        billing.country = params.country
        billing.stateProvince = params.state
        billing.postalCode = params.postal_code

        if (billing.hasErrors()) {
            print(billing.errors)
            return
        }
        billing.save(flush: true)

        print(params.first_name)
        def payment = PaymentMethod.findByUser(user) ?: new PaymentMethod()

        payment.user = user
        payment.creaditCardNumber = params.cc_number
        payment.firstName = params.first_name
        payment.lastName = params.last_name
        payment.expiredDate = params.month + "/" + params.year
        payment.securityCode = Integer.parseInt(params.mvcs)

        if (payment.hasErrors()) {
            print(payment.errors)
            return
        }
        payment.save(flush: true)

        redirect controller: 'home', action: 'purchase_summary', id: params.item_id
//        [billing: billingAddress, payment: paymentMethod]
    }

    @Transactional
    def updateBillingPayment() {
        def user = User.get(params.user_id) ?: User.findByUsername(sec.loggedInUserInfo(field: 'username'))
        def billing = BillingAddress.get(params.billing_id)
        print "USER ID " + params.user_id
        print "BILLING ADDRESS ID " + params.billing_id
        print "PAYMENT ID " + params.id_payment
        billing.user = user;
        billing.address1 = params.address_1;
        billing.address2 = params.address_2;
        billing.city = params.city;
        billing.country = params.country;
        billing.stateProvince = params.state;
        billing.postalCode = params.postal_code;

        if (billing.hasErrors()) {
            print(billing.errors)
            return
        }

        billing.save(flush: true)

        print(params.mvcs)
        def payment = PaymentMethod.get(params.id_payment);

        payment.user = user;
        payment.creaditCardNumber = params.cc_number;
        payment.firstName = params.first_name;
        payment.lastName = params.last_name;
        payment.expiredDate = params.month + "/" + params.year;
        payment.securityCode = 0;


        if (payment.hasErrors()) {
            print(payment.errors)
            return
        }
        payment.save(flush: true)
        [billingInfo: billing, paymentMethod: payment]
    }
}
