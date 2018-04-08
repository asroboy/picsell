package com.picsell.data

class ImageFile {

    static int MB = 1024 * 1000
    static int MAX_IMAGE_FILE = 100 * MB
    byte[] lampiran

    String tipeFile
    String namaFile
    Long ukuranFile

    String tableName
    Long tableId



    static constraints = {
        tipeFile(nullable: true, display: false)
        namaFile(nullable: true, display: false)
        ukuranFile(nullable: true, display: false)

        lampiran(nullable: true, maxSize: MAX_IMAGE_FILE)

        tableName nullable: false
        tableId nullable: false

    }
}
