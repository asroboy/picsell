package com.picsell.data

class ImageFile {

    static int MB = 1024 * 1000
    static int MAX_IMAGE_FILE = 100 * MB
    byte[] lampiran

    String tipeFile
    String namaFile
    int width
    int height
    Long ukuranFile
    String path

    String tableName
    Long tableId


    ItemGroupSize groupSize

    static constraints = {
        tipeFile(nullable: true, display: false)
        namaFile(nullable: true, display: false)
        ukuranFile(nullable: true, display: false)

        lampiran(nullable: true, maxSize: MAX_IMAGE_FILE)
        path(blank:false,nullable:false)

        tableName nullable: true
        tableId nullable: true
        lampiran nullable: true

        groupSize nullable: true

    }
}
