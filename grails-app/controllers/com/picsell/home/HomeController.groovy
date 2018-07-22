package com.picsell.home

import com.picsell.data.Category
import com.picsell.data.Item
import com.picsell.data.MediaType

class HomeController {

    def index() {
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
        }
    }

    def test() {}

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
}
