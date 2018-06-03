package com.picsell.global

import com.picsell.config.Account
import com.picsell.data.Item
import com.picsell.data.ItemTags
import com.picsell.data.ProfileUser
import com.picsell.data.UserAccount
import com.picsell.security.Role
import com.picsell.security.User
import com.picsell.security.UserRole
import grails.converters.JSON
import grails.transaction.Transactional

class ApiController {
    def sessionFactory
    static allowedMethods = [createProfile: "POST", setUserRole: "POST", save_user_pack_acc: "POST"]

    @Transactional
    def createProfile() {
        def profile = new ProfileUser(namaDepan: params.first_name,
                namaBelakang: params.last_name,
                jenisKartuIdentitas: 'KTP',
                alamat: params.address,
                kecamatan: params.kecamatan,
                kotaKabupaten: params.city,
                provinsi: params.province,
                nomorIdIdentitas: params.nik,
                tempatLahir: params.tempatLahir,
                tglLahir: new Date(Long.parseLong(params.tgl_lahir)),
                user: User.get(params.user_id)
        )

        profile.save(flush: true)
        if (profile.hasErrors()) {
            println(profile.errors)
        }
        def result = [status: "ok", data: profile]
        render result as JSON
    }

    @Transactional
    def setUserRole() {
        def user = User.get(params.user_id)
        def role = Role.findByAuthority(params.role)
        def roleUser = UserRole.findByUser(user) ?: new UserRole(user: user, role: role);
        roleUser.save(flush: true)
        if (roleUser.hasErrors()) {
            println("error : " + roleUser.errors)
        }
        def result = [status: "ok", data: roleUser]
        render result as JSON
    }

    def check_contrib_has_subs_acc() {
        boolean hasAcc = true;
        String role = "";
        def userRoles = UserRole.executeQuery("from UserRole a where a.user = " + params.user_id)
        userRoles.each {
            if (it.role.authority.equals("ROLE_CONTRIBUTOR")) {
                role = it.role.authority;
                def userAccounts = UserAccount.executeQuery("from UserAccount b where b.user = " + params.user_id)
                if (userAccounts.size() == 0) {
                    hasAcc = false;
                } else {
                    hasAcc = true;
                }
            }
        }
        def result = [status: "ok", data: [user_id: params.user_id, role: role, has_account: hasAcc]]
        render result as JSON
    }

    def get_subs_account() {
        def accounts = Account.findAllByTypeAndLisenceAndInCurrency(params.type, params.license, params.currency)
        render accounts as JSON
    }

    def cheeck_user_items() {
        def userItems = Item.countByUserOwner(User.get(params.user_id))
        boolean isContributor = false;
        def userRoles = UserRole.executeQuery("from UserRole a where a.user = " + params.user_id)
        userRoles.each {
            if (it.role.authority.equals("ROLE_CONTRIBUTOR")) {
                isContributor = true;
            }
        }
        def result = [status: "ok", data: userItems, contributor: isContributor]
        render result as JSON
    }

    def get_account() {
        def accounts = Account.get(params.package_id)
        render accounts as JSON
    }

    @Transactional
    def save_user_pack_acc() {
        def account = Account.get(params.package_id);
        def user = User.get(params.user_id);
        def user_acc = new UserAccount(account: account, user: user).save(flush: true);
        if (user_acc.hasErrors()) {
            println(user_acc.errors)
        }
        render user_acc as JSON
    }

    @Transactional
    def saveItemTag() {
        def tags = params.tags.split(",");
        def item = Item.get(params.item_id);
        tags.each {
            new ItemTags(item: item, tag: it).save(flush: true);
        }
        def result = [status: "ok"]
        render result as JSON
    }

    @Transactional
    def updateApproval() {
        def item = Item.get(params.item_id);
        item.status = params.status
        item.statusInfo = params.status_info
        item.statusCgDate = new Date()
        item.statusCgBy = params.username
        def result = [status: "ok", data: item]
        render result as JSON
    }

    def getCategories(){
        def cat = Item.executeQuery("select distinct  category from Item ")
        render cat as JSON
    }
}
