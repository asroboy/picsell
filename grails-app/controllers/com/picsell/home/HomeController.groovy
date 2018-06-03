package com.picsell.home

import com.picsell.data.Item

class HomeController {

    def index() {
        if(params.key){
            def c = Item.createCriteria()
            def results = c.list () {
                like("name", "%" + params.key + "%")
            }

            [items: results]
        }
    }

    def test() {}

    def configuration() {

    }

    def itemDetail(Item itemInstance) {
        respond itemInstance
    }

    def mychart(){

    }

    def packages(){

    }

    def aboutUs(){}

    def policy(){}

    def agreement(){}

    def contributors(){}

    def tos(){}

    def hotItems(){
        def cat = Item.executeQuery("select distinct  category from Item ")
        def items = Item.list()

        [categories : cat, items: items]
    }

    def helpCenter(){

    }

    def setting(){

    }

    def purchase_summary(Item itemInstance){
        respond itemInstance
    }

    def subscribe_summary(){}
}
