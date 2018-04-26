package com.picsell.home

import com.picsell.data.Item

class HomeController {

    def index() {}

    def test() {}

    def configuration() {

    }

    def itemDetail(Item itemInstance) {
        respond itemInstance
    }
}
