package com.picsell.test

class TestFile {

    static scaffold = true

    byte[] foto
    String nama
    static constraints = {
        foto (blank: true, nullable:true, maxSize:1073741824)
        nama nullable: true

    }
}
