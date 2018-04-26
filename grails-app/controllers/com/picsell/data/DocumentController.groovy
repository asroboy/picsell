package com.picsell.data

class DocumentController {
    def burningImageService

    def list() {
        [images: ImageFile.list()]
    }

    def index() {

    }

    def upload() {
        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def documentInstance = new ImageFile()
            documentInstance.namaFile = file.originalFilename
            documentInstance.path = grailsApplication.config.uploadFolder + documentInstance.namaFile
            documentInstance.ukuranFile = file.size
            documentInstance.tipeFile = file.contentType
            file.transferTo(new File(documentInstance.path))
            documentInstance.save()
        }
        redirect(action: 'list')
    }

    def download(long id) {
        ImageFile documentInstance = ImageFile.get(id)
        if (documentInstance == null) {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg\"")
            def file = new File(grailsApplication.config.uploadFolder + "\\default\\" + "cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg" )
            def fileInputStream = new FileInputStream(file)
            def outputStream = response.getOutputStream()
            byte[] buffer = new byte[4096];
            int len;
            while ((len = fileInputStream.read(buffer)) > 0) {
                outputStream.write(buffer, 0, len);
            }
            outputStream.flush()
            outputStream.close()
            fileInputStream.close()
            print("null image")
//            redirect(action: 'list')
        } else {
            if (params.s) {
                response.setContentType("APPLICATION/OCTET-STREAM")
                response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.namaFile}\"")
                def file = new File(documentInstance.path)
                def fileInputStream = new FileInputStream(file)
                def outputStream = response.getOutputStream()
                byte[] buffer = new byte[4096];
                int len;
                while ((len = fileInputStream.read(buffer)) > 0) {
                    outputStream.write(buffer, 0, len);
                }
                outputStream.flush()
                outputStream.close()
                fileInputStream.close()
            } else {

                response.setContentType("APPLICATION/OCTET-STREAM")
                response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.namaFile}\"")

                def outPath = grailsApplication.config.uploadFolder + 'watermark/out/'

                burningImageService.doWith(documentInstance.path, outPath).execute {
                    it.watermark(grailsApplication.config.uploadFolder + 'watermark/watermark/watermark.png')
                }

                def file = new File(outPath + documentInstance.namaFile)
                def fileInputStream = new FileInputStream(file)
                def outputStream = response.getOutputStream()
                byte[] buffer = new byte[4096];
                int len;
                while ((len = fileInputStream.read(buffer)) > 0) {
                    outputStream.write(buffer, 0, len);
                }
                outputStream.flush()
                outputStream.close()
                fileInputStream.close()
            }
        }
    }
}
