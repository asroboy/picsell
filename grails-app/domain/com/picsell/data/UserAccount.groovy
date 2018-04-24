package com.picsell.data

import com.picsell.config.Account
import com.picsell.security.User

class UserAccount {

    User user
    Account account
    static constraints = {
        user nullable: false
        account nullable: false
    }
}
