package com.picsell.data

import com.picsell.test.TestFile

class ImageController {

    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def imageInstance = new ImageFile()
            imageInstance.tableName = request.getPart('table_name')
            imageInstance.tableId= request.getPart('table_id')
            imageInstance.namaFile = file.originalFilename
            imageInstance.lampiran = file.getBytes()
            imageInstance.ukuranFile = file.length()
            imageInstance.save()
        }
        redirect (action:'list')
    }

    def download(long id) {
        ImageFile imageInstance = ImageFile.get(id)
        if (imageInstance == null) {
            flash.message = "Image not found."
            redirect(action: 'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${imageInstance.namaFile}\"")
            def outputStream = response.getOutputStream()
            outputStream << imageInstance.lampiran
            outputStream.flush()
            outputStream.close()
        }
    }

}
