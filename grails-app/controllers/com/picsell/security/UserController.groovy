package com.picsell.security

class UserController extends grails.plugin.springsecurity.ui.UserController {

    def index(){
        [title: "Pengguna"]
    }
}
