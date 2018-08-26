package com.picsell.global

import com.picsell.config.Account
import com.picsell.data.ImageFile
import com.picsell.data.Item
import com.picsell.data.ItemChart
import com.picsell.data.ItemTags
import com.picsell.data.ItemViewed
import com.picsell.data.PaymentMethod
import com.picsell.data.ProfileUser
import com.picsell.data.UserAccount
import com.picsell.data.UserLikeItem
import com.picsell.data.UserPuchaseItem
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
        def profile = new ProfileUser(
                namaDepan: params.first_name,
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

    def getCategories() {
        def cat = Item.executeQuery("select distinct  category from Item ")
        render cat as JSON
    }


    def like() {
        def user = User.get(params.user_id)
        def item = Item.get(params.item_id)
        def userLikeItem = UserLikeItem.findByItemAndUser(item, user)
        String status = "";
        if (userLikeItem) {
            userLikeItem.delete(flush: true)
            status = "dislike"
        } else {
            userLikeItem = new UserLikeItem(user: user, item: item)
            userLikeItem.save(flush: true)
            status = "like"
        }
        def result = [status: 1, data: status]
        render result as JSON
    }

    def is_like() {
        def user = User.get(params.user_id)
        def item = Item.get(params.item_id)
        def userLikeItem = UserLikeItem.findByItemAndUser(item, user)
        String status = "";
        if (userLikeItem) {
            status = "like"
        } else {
            status = "dislike"
        }
        def result = [status: 1, data: status]
        render result as JSON
    }

    def add_to_chart() {
        def user = User.get(params.user_id)
        def item = Item.get(params.item_id)
        def itemChart = new ItemChart(user: user, item: item)
        itemChart.save(flush: true)
        def result = [code: 1, data: itemChart]
        render result as JSON
    }


    def chart_staus_paid() {
        def itemChart
        if (params.chart_id) {
            itemChart = ItemChart.get(params.chart_id)
            itemChart.status = "paid"
        } else {
            def user = User.get(params.user_id)
            def item = Item.get(params.item_id)
            itemChart = new ItemChart(user: user, item: item, status: "paid")
        }

        itemChart.save(flush: true)
        def result = [code: 1, data: itemChart]
        render result as JSON
    }

    def delete_from_chart() {
        def itemChart = ItemChart.get(params.id)
        itemChart.delete(flush: true)
        def result = [code: 1, data: "ok"]
        render result as JSON
    }

    def view_count() {
        def itemView = new ItemViewed()
        itemView.item = Item.get(params.item_id)
        itemView.save(flush: true)
        def result = [code: 1, data: "ok"]
        render result as JSON
    }


    def purchase() {
        def user = User.get(params.user_id)
        def imageFile = ImageFile.get(params.image_id)
        def item = Item.get(imageFile?.tableId)
        def payment = PaymentMethod.get(params.payment_id)
        def totalAmount = params.total_amount
        def contributor = item?.userOwner
        print(imageFile?.height)
        print(item?.name)
        print(contributor?.username)
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, 7); // add 10 days

        Date expDate = cal.getTime();

        def generator = { String alphabet, int n ->
            new Random().with {
                (1..n).collect { alphabet[nextInt(alphabet.length())] }.join()
            }
        }
        def token = generator((('A'..'Z') + ('0'..'9')).join(), 15)

        def token_ = user?.username + token

//        def token_ = generateToken(user?.username);
        def purchase = new UserPuchaseItem(downloadImageToken: token_, tokenExpired: expDate, user: user, imageFile: imageFile, purchaseDate: date, paymentMethod: payment, totalAmount: totalAmount, contributor: contributor).save(flush: true)
        String url = createLink(controller: 'document', action: 'picsell_image') + "?token=" + token_;
        print(url);
        def result = [purchaseDate: purchase, url: url]
        render result as JSON
    }

    def generateToken(String username) {
        def generator = { String alphabet, int n ->
            new Random().with {
                (1..n).collect { alphabet[nextInt(alphabet.length())] }.join()
            }
        }
        def token = generator((('A'..'Z') + ('0'..'9')).join(), 15)

        def uTok = username + token

        println "==>${uTok}<=="
        return uTok
    }


}
