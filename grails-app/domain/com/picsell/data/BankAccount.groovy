package com.picsell.data

import com.picsell.security.User

class BankAccount {

    User user
    String accountNo
    String accountName
    String bankName
    String branchCode
    String bankCode

    static constraints = {
        accountNo nullable: false
        accountName nullable: false
        bankName nullable: false
        branchCode nullable: true
        bankCode nullable: true
    }
}
