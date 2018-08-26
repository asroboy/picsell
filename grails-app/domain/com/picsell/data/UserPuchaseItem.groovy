package com.picsell.data

import com.picsell.security.User

class UserPuchaseItem {

    User user
    ImageFile imageFile
    Date purchaseDate
    int purchasePrice
    PaymentMethod paymentMethod
    int totalAmount
    User contributor
    String downloadImageToken
    int linkClicked
    Date tokenExpired

    static constraints = {
        user nullable: false
        contributor nullable: true
        imageFile nullable: false
        purchaseDate nullable: true
        paymentMethod nullable: false
        downloadImageToken nullable: true
        tokenExpired nullable: true
    }
}
