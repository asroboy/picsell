package com.picsell.home

import com.picsell.data.Billing
import com.picsell.data.BillingItem
import com.picsell.data.Category
import com.picsell.data.ImageFile
import com.picsell.data.Item
import com.picsell.data.MediaType
import com.picsell.data.ProfileUser
import com.picsell.security.User
import com.picsell.support.CustomerMessage
import grails.converters.JSON
import grails.transaction.Transactional

class HomeController {

    static allowedMethods = ['saveExternal': 'POST', changePassword: "POST", udpateProfile: "POST", saveProfileImage: "POST"]
    transient springSecurityService
    def passwordEncoder

    public boolean isValidPassword(String password, String userPassword) {
//        String encPassword = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
        return passwordEncoder.isPasswordValid(userPassword, password, null)
    }

    def changePassword(User userInstance) {
        def oldPassword = params.get('password-existing')
        def newPassword = params.get('password-new')
        def retypePassword = params.get('password-new')
        print "olsPassword " + oldPassword;
        boolean isMatch = isValidPassword(oldPassword, userInstance?.password)
        if (newPassword.equals(retypePassword)) {
            if (oldPassword.equals(newPassword)) {
                def message = "Your passwrod should not same with existing"
                render "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\n" +
                        message +
                        "  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                        "    <span aria-hidden=\"true\">&times;</span>\n" +
                        "  </button>\n" +
                        "</div>" +
                        "<script>" +
                        " \$('#change_password_modal').modal('hide');</script>"
            } else {
                if (isMatch) {
                    userInstance.password = newPassword
                    userInstance.save(flush: true)
                    if (userInstance.hasErrors()) {
                        def message = "Sorry, Problem when updating your password"
                        render "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\n" +
                                message +
                                "  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                                "    <span aria-hidden=\"true\">&times;</span>\n" +
                                "  </button>\n" +
                                "</div>" +
                                "<script>" +
                                " \$('#change_password_modal').modal('hide');</script>"
                    } else {
                        def message = "Your password successfully updated"
                        render "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\n" +
                                message +
                                "  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                                "    <span aria-hidden=\"true\">&times;</span>\n" +
                                "  </button>\n" +
                                "</div>" +
                                "<script>" +
                                " \$('#change_password_modal').modal('hide');</script>"
                    }

                } else {
                    def message = "Your existing password not match with the one you have entered"
                    render "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\n" +
                            message +
                            "  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                            "    <span aria-hidden=\"true\">&times;</span>\n" +
                            "  </button>\n" +
                            "</div>" +
                            "<script>" +
                            " \$('#change_password_modal').modal('hide');</script>"
                }
            }
        } else {
            def message = "Your new passowrd not match"
            render "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\n" +
                    message +
                    "  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                    "    <span aria-hidden=\"true\">&times;</span>\n" +
                    "  </button>\n" +
                    "</div>" +
                    "<script>" +
                    " \$('#change_password_modal').modal('hide');</script>"
        }

    }

    def saveProfileImage(User userInstance) {
        if (params.file) {
            def file = request.getFile('file')
            if (file.empty) {
                flash.message = "File cannot be empty"
            } else {
                def imageInstance = ImageFile.findByTableNameAndTableId(userInstance.class.simpleName, userInstance.id) ?: new ImageFile()
                imageInstance.tableName = userInstance.class.simpleName
                imageInstance.tableId = userInstance.id
                imageInstance.namaFile = file.originalFilename
                imageInstance.lampiran = file.getBytes()
                imageInstance.path = "-"
                imageInstance.ukuranFile = file.getBytes().length
                print(file.getBytes().length)
                imageInstance.save(flush: true)
                if (imageInstance.hasErrors()) {
                    flash.message = "Error while saving profile picture"
                } else {
                    redirect(controller: 'dashboard', action: 'user')
                }

            }
        }

    }

    def udpateProfile(User userInstance) {
        userInstance.alamat = params.alamat
        userInstance.firstName = params.firstName
        userInstance.lastName = params.lastName
        userInstance.kecamatan = params.kecamatan
        userInstance.kotaKabupaten = params.kotaKabupaten
        userInstance.provinsi = params.provinsi
        userInstance.save(flush: true)
        if (userInstance.hasErrors()) {
            def message = "Sorry, Problem when updating your profile"
            render "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\n" +
                    message +
                    "  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                    "    <span aria-hidden=\"true\">&times;</span>\n" +
                    "  </button>\n" +
                    "</div>" +
                    "<script>" +
                    " \$('#update_profile_modal').modal('hide');</script>"
        } else {
            def message = "Your profile successfully updated"
            render "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\n" +
                    "  <div style=\"margin-top:10px;margin-bottom:10px;\">" + message + "<span>&nbsp&nbsp</span><button type=\"button\" class=\"btn btn-sm btn-success\" onclick=\"location.reload();\">Refresh page</button></div>" +
                    "  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                    "    <span aria-hidden=\"true\">&times;</span>\n" +
                    "  </button>\n" +
                    "</div>" +
                    "<script>" +
                    " \$('#update_profile_modal').modal('hide');" +
                    "</script>"
        }

    }

    def index() {
        if (springSecurityService.isLoggedIn()) {
            print("is login")
            def user = com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))
            def userRoles = com.picsell.security.UserRole.findAllByUser(user)
            def userType = ""
            userRoles.each {
                if (it?.role?.authority.equalsIgnoreCase("ROLE_ADMIN")) {
                    userType += "ADMIN "
                }
                if (it?.role?.authority.equalsIgnoreCase("ROLE_CONTRIBUTOR")) {
                    userType += "CONTRIBUTOR "
                }
                if (it?.role?.authority.equalsIgnoreCase("ROLE_USER")) {
                    userType += "USER "
                }
            }
            print(userType)
            if (userType.contains("ADMIN")) {
                redirect controller: 'dashboard', action: 'admin'
            } else if (userType.contains("CONTRIBUTOR")) {
                redirect controller: 'dashboard', action: 'contributor'
            } else if (userType.contains("USER")) {
                redirect controller: 'dashboard', action: 'user'
            }

            [userType: userType]
        } else {
            redirect action: 'main'
        }
    }

    def main() {
        params.max = 70
        if (params.key) {
            print('key')
            def c = Item.createCriteria()
            def items = []
            def results = c.list(max: params.max, offset: params.offset ?: 0) {
                like("name", "%" + params.key + "%")
                and {
                    eq("status", "approved")
                }
            }
//            def d = Item.createCriteria()
//            def results_tag = d.list() {
//                like("tags", "%" + params.key + "%")
//                and {
//                    eq("status", "approved")
//                }
//            }
            results.each {
                items.add(it)
            }
//            results_tag.each {
//                items.add(it)
//            }

            def e = Item.createCriteria()
            def resultsCount = e.list() {
                like("name", "%" + params.key + "%")
                and {
                    eq("status", "approved")
                }
            }

            [items: items, itemInstanceCount: resultsCount.size()]
        } else if (params.media) {
            if (params.cat) {
                print('media and cat')
                def c = Item.createCriteria()
                def mediaType
                String media = params.media
                if (!media.equalsIgnoreCase("all media")) {
                    mediaType = MediaType.findByName(params.media)
                }
                def items = [];
                def category;
                String cat = params.cat
                if (!cat.equalsIgnoreCase("All Categories") || !cat.equals("")) {
                    print("cat " + cat)
                    category = Category.findByName(params.cat)
                }
                def results = c.list(max: params.max, offset: params.offset ?: 0) {
                    if (mediaType) {
                        eq("mediaType", mediaType)
                    }
                    and {
                        eq("status", "approved")
                    }
                    if (category) {
                        print("has category" + category)
                        and {
                            eq("category", category)
                        }
                    }
                }

                //provide count
                def d = Item.createCriteria()
                def resultCount = d.list() {
                    if (mediaType) {
                        eq("mediaType", mediaType)
                    }
                    and {
                        eq("status", "approved")
                    }
                    if (category) {
                        print("has category" + category)
                        and {
                            eq("category", category)
                        }
                    }
                }
                print("results " + results.size())
                print("result counts " + resultCount.size())
                results.each {
                    items.add(it)
                }

                [items: items, itemInstanceCount: resultCount.size()]
            } else {
                print('media')
                def c = Item.createCriteria()
                def mediaType = MediaType.findByName(params.media)
                def items = []

                def results = c.list(max: params.max, offset: params.offset ?: 0) {
                    eq("mediaType", mediaType)
                    and {
                        eq("status", "approved")
                    }
                }
                print("results " + results.size())
                results.each {
                    items.add(it)
                }

                def d = Item.createCriteria()
                def resultCount = d.list() {
                    eq("mediaType", mediaType)
                    and {
                        eq("status", "approved")
                    }
                }

                [items: items, itemInstanceCount: resultCount.size()]
            }
        } else if (params.top) {
            def items = Item.findAllByStatus("approved");
            [items: items]
        } else {
            def items = Item.findAllByStatus("approved", [max: 30]);
            [items: items]
        }
    }

    def test() {}

    def grid_test() {

    }

    def configuration() {

    }

    def itemDetail(Item itemInstance) {
        def itemImages = ImageFile.findAllByTableIdAndTableName(itemInstance?.id, itemInstance?.class.simpleName)
        def groupSizes = []
        itemImages.each {
            groupSizes.add(it?.groupSize)
        }
        [itemInstance: itemInstance, itemImages: itemImages, groupSizes: groupSizes as JSON, itemImagesJson: itemImages as JSON]
    }

    def mychart() {

    }

    def packages() {

    }

    def aboutUs() {}

    def policy() {}

    def agreement() {}

    def contributors() {}

    def tos() {}

    def hotItems() {
        def cat = Item.executeQuery("select distinct  category from Item ")
        def items = Item.list()

        [categories: cat, items: items]
    }

    def helpCenter() {

    }

    def setting() {

    }

    def purchase_summary(ImageFile imageFile) {
        def itemInstance = Item.get(imageFile?.tableId)

        def user = springSecurityService.currentUser
        Date now = new Date()
        def billing = new Billing(invoicedAt: now, invoiceNumber: "inv-" + now.getTime(), invoicedTo: user, amount: 0.0, status: "Unpaid").save(flush: true)

        if (billing.id) {
            int qty = 1
            def total = qty * imageFile.groupSize.price
            new BillingItem(
                    invoice: billing,
                    itemId: imageFile.tableId,
                    itemType: imageFile.tableName,
                    qty: qty,
                    total: total,
                    price : imageFile.groupSize.price
            ).save(flush: true)

            billing.amount = total
            billing.save(flush: true)
        }

        [itemInstance: itemInstance, imageFile: imageFile, billing: billing]
    }

    def subscribe_summary() {}

    def ui_development() {}

    def download_page(Item itemInstance) {

        [itemInstance: itemInstance]
    }


    def faq() {

    }


    @Transactional
    def saveExternal(CustomerMessage customerMessageInstance) {
        print 'saya dipanggil'
        if (customerMessageInstance == null) {
            notFound()
            return
        }

        if (customerMessageInstance.hasErrors()) {
            respond customerMessageInstance.errors
            return
        }

        customerMessageInstance.save flush: true
        []
    }

    def contactUs() {
        [customerMessageInstance: new CustomerMessage(params)]
    }

    def portfolio() {

    }
}
