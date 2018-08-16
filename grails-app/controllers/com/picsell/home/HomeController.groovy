package com.picsell.home

import com.picsell.data.Category
import com.picsell.data.Item
import com.picsell.data.MediaType

class HomeController {

    def springSecurityService

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
        if (params.key) {
            def c = Item.createCriteria()
            def items = []
            def results = c.list() {
                like("name", "%" + params.key + "%")
                and {
                    eq("status", "approved")
                }
            }
            def d = Item.createCriteria()
            def results_tag = d.list() {
                like("tags", "%" + params.key + "%")
                and {
                    eq("status", "approved")
                }
            }
            results.each {
                items.add(it)
            }
            results_tag.each {
                items.add(it)
            }

            [items: items]
        } else if (params.media) {
            def c = Item.createCriteria()
            def mediaType = MediaType.findByName(params.media)
            def items = []
            def results = c.list() {
                eq("mediaType", mediaType)
                and {
                    eq("status", "approved")
                }
            }

            results.each {
                items.add(it)
            }

            [items: items]
        } else if (params.media && params.cat) {
            def c = Item.createCriteria()
            def mediaType = MediaType.findByName(params.media)
            def category = MediaType.findByName(params.cat)
            def items = []
            def results = c.list() {
                eq("mediaType", mediaType)
                and {
                    eq("status", "approved")
                }
                and {
                    eq("category", category)
                }
            }

            results.each {
                items.add(it)
            }

            [items: items]
        }
    }

    def test() {}

    def grid_test() {

    }

    def configuration() {

    }

    def itemDetail(Item itemInstance) {
        [itemInstance: itemInstance]
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

    def purchase_summary(Item itemInstance) {
        respond itemInstance
    }

    def subscribe_summary() {}

    def ui_development() {}

    def download_page(Item itemInstance) {

        [itemInstance: itemInstance]
    }
}
