package com.picsell.data

import com.picsell.test.TestFile
import org.springframework.web.multipart.MultipartFile

class ImageController {


    def uploadToSpecifiedPath(MultipartFile uploadFile, String fileUploadDir){
        String uploadDir = !fileUploadDir.equals('') ?: 'C:/temp' //You define the path where the file will be saved
        File newFile = new File("$uploadDir/${uploadFile.originalFilename}"); //You create the destination file
        uploadFile.transferTo(newFile); //Transfer the data
    }

    def image(){
        File  downloadFile = new File(yourFileDomain?.pathProperty) //get the file using the data you saved in your domain
        if(downloadFile){ //Set your response properties
            response.characterEncoding = "UTF-8"
            response.setHeader "Content-disposition", "attachment; filename=\"${yourFileDomain?.fileNameProperty}\"" //add the header with the filename you saved in your domain you could also set a default filename
            //response.setHeader "Content-disposition", "attachment; filename=\"myfile.txt\""
            response.outputStream << new FileInputStream(downloadFile)
            response.outputStream.flush()
            return
        }
    }

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
