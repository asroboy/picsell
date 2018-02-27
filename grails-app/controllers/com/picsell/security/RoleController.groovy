package com.picsell.security

class RoleController extends grails.plugin.springsecurity.ui.RoleController {
    def index(){

        [title: "Grup Pengguna"]
    }
}
