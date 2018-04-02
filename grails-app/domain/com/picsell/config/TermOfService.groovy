package com.picsell.config

class TermOfService {

    String tos
    static constraints = {
        tos size: 1..500000, nullable: true
    }
}
