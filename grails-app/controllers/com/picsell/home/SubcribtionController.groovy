package com.picsell.home

import com.picsell.config.Account
import com.picsell.data.UserAccount
import com.picsell.security.Role
import com.picsell.security.User
import com.picsell.security.UserRole
import grails.converters.JSON

class SubcribtionController {

    def index() {}

    def saveUsrRole() {
        print("id " + params.id)
        def user = User.get(params.id)
        def role = Role.findByAuthority(params.role_name)
        def userRole = UserRole.findByUserAndRole(user, role) ?: new UserRole(user: user, role: role)
        userRole.save(flush: true)
        def result = [status: "OK", data: userRole]
        render result as JSON
    }

    def subscribe(){
        print("id " + params.id)
        def user = User.get(params.id)
        def account = Account.get(params.account_id)
        def userAccount = new UserAccount(user: user, account: account)
        userAccount.save(flush: true)
        def result = [status: "OK", data: userAccount]
        render result as JSON
    }
}
