package com.picsell.data

class FileItem {
    byte[] file
    String fileName
    String formatExtention
    String contentType
    double fileSize
    double sizeX
    double  sizeY
    Item item

    static constraints = {
        file nullable: false
        fileName nullable: true
        formatExtention nullable: true
        contentType nullable:  true
        item nullable:  false
    }

    static mapping = {
        fileSize defaultValue: 0.0
        sizeX defaultValue: 0.0
        sizeY defaultValue: 0.0
    }
}
