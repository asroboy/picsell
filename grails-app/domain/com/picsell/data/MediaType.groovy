package com.picsell.data

class MediaType {

    String name

    static hasMany = [child: MediaType]
    static belongsTo = [parent: MediaType]

    static constraints = {
        name nullable: false
        parent nullable: true
    }

    static mapping = {
        child cascade: false, lazy: false
    }
}
