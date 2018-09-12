package com.picsell.data

import javax.imageio.ImageIO
import java.awt.image.BufferedImage

class DocumentController {
    def burningImageService
    public static int BUFFER_SIZE = 100096;

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


    def download_() {
        ImageFile documentInstance = ImageFile.findByTableIdAndTableName(params.table_id, params.table_name)
        if (documentInstance == null) {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg\"")
            def file = new File(grailsApplication.config.uploadFolder + "/default/" + "blank_image.png")
            def fileInputStream = new FileInputStream(file)
            def outputStream = response.getOutputStream()
            byte[] buffer = new byte[BUFFER_SIZE];
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
                byte[] buffer = new byte[BUFFER_SIZE];
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
                def file = new File(documentInstance.path)
                def fileInputStream = new FileInputStream(file)
                def outputStream = response.getOutputStream()
                byte[] buffer = new byte[BUFFER_SIZE];
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


    def download(long id) {
        ImageFile documentInstance = ImageFile.get(id)
        if (documentInstance == null) {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"blank_image.png\"")
            def file = new File(grailsApplication.config.uploadFolder + "/default/" + "blank_image.png")
            def fileInputStream = new FileInputStream(file)
            def outputStream = response.getOutputStream()
            byte[] buffer = new byte[BUFFER_SIZE];
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
                byte[] buffer = new byte[BUFFER_SIZE];
                int len;
                while ((len = fileInputStream.read(buffer)) > 0) {
                    outputStream.write(buffer, 0, len);
                }
                outputStream.flush()
                outputStream.close()
                fileInputStream.close()
            } else {
                try {
                    response.setContentType("APPLICATION/OCTET-STREAM")
                    response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.namaFile}\"")
                    def file = new File(documentInstance.path)
                    def fileInputStream = new FileInputStream(file)
                    def outputStream = response.getOutputStream()
                    byte[] buffer = new byte[BUFFER_SIZE];
                    int len;
                    while ((len = fileInputStream.read(buffer)) > 0) {
                        outputStream.write(buffer, 0, len);
                    }
                    outputStream.flush()
                    outputStream.close()
                    fileInputStream.close()
                } catch (IOException e) {
                    e.printStackTrace()
                }

            }
        }
    }


    def picsell_image() {
//        print(params.token)
        if (params.token) {
            UserPuchaseItem userPuchaseItem = UserPuchaseItem.findByDownloadImageToken(params.token)
            if (userPuchaseItem) {
                if (userPuchaseItem?.tokenExpired.after(new Date()) && userPuchaseItem?.linkClicked < 1) {
                    userPuchaseItem.linkClicked = 1;
                    userPuchaseItem.save(flush: true)
                    response.setContentType("APPLICATION/OCTET-STREAM")
                    response.setHeader("Content-Disposition", "Attachment;Filename=\"${userPuchaseItem?.imageFile?.namaFile}\"")
                    def file = new File(userPuchaseItem?.imageFile?.path)
                    def fileInputStream = new FileInputStream(file)
                    def outputStream = response.getOutputStream()
                    byte[] buffer = new byte[BUFFER_SIZE];
                    int len;
                    while ((len = fileInputStream.read(buffer)) > 0) {
                        outputStream.write(buffer, 0, len);
                    }
                    outputStream.flush()
                    outputStream.close()
                    fileInputStream.close()
                } else {
                    render "you don't have access"
                }

            } else {
                render "you don't have access"
            }
        } else {
            render "you don't have access"
        }
    }


    def downloadVideo(long id) {
        ImageFile documentInstance = ImageFile.get(id)

        response.setContentType("APPLICATION/OCTET-STREAM")
        response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.namaFile}\"")
        def file = new File(documentInstance.path)
        def fileInputStream = new FileInputStream(file)
        def outputStream = response.getOutputStream()
        byte[] buffer = new byte[BUFFER_SIZE];
        int len;
        while ((len = fileInputStream.read(buffer)) > 0) {
            outputStream.write(buffer, 0, len);
        }
        outputStream.flush()
        outputStream.close()
        fileInputStream.close()

    }


    def photoWithWatermaarkPreview(long id) {
        ImageFile documentInstance = ImageFile.get(id)
        def item = Item.get(documentInstance?.tableId);



        String path = grailsApplication.config.uploadFolder + item?.userOwner?.id + "/tumbnails/" + documentInstance?.namaFile
        print(path)
        BufferedImage bimg = ImageIO.read(new File(path));
        int width = bimg.getWidth();
        int height = bimg.getHeight();


        def watermark = grailsApplication.config.uploadFolder + 'watermark/watermark/watermark.png'
        def watermarktOutPathRoot = grailsApplication.config.uploadFolder + 'watermark/resize/' + item?.userOwner?.id
        def watermarktOutPath = watermarktOutPathRoot + "/" + documentInstance?.id

        createUserDir(watermarktOutPathRoot)
        createSizeGroupDir(watermarktOutPath)

        def outPathRoot = grailsApplication.config.uploadFolder + 'watermark/out/' + item?.userOwner?.id
        def outPath = outPathRoot + "/" + documentInstance?.groupSize?.groupLabel


        createUserDir(outPathRoot)
        createSizeGroupDir(outPath)

        burningImageService.doWith(watermark, watermarktOutPath + "/").execute { it.scaleAccurate(width, height) }

        /**
         * MENGGUNAKAN WATERMARK
         */
        response.setContentType("APPLICATION/OCTET-STREAM")
        response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.namaFile}\"")



        def wtm = watermarktOutPath + "/watermark.png";
        burningImageService.doWith(path, outPath + "/").execute {
            it.watermark(wtm, ['right': 10, 'bottom': 10])
        }

        def file = new File(outPath + "/" + documentInstance.namaFile)
        def fileInputStream = new FileInputStream(file)
        def outputStream = response.getOutputStream()
        byte[] buffer = new byte[BUFFER_SIZE];
        int len;
        while ((len = fileInputStream.read(buffer)) > 0) {
            outputStream.write(buffer, 0, len);
        }
        outputStream.flush()
        outputStream.close()
        fileInputStream.close()
    }


    def photoWithWatermaark(ImageFile documentInstance) {
//        ImageFile documentInstance = ImageFile.get(id)

        print(documentInstance.id)
        print(documentInstance.path)
        BufferedImage bimg = ImageIO.read(new File(documentInstance.path));
        int width = bimg.getWidth();
        int height = bimg.getHeight();


        def watermark = grailsApplication.config.uploadFolder + 'watermark/watermark/watermark.png'
        def watermarktOutPath = grailsApplication.config.uploadFolder + 'watermark/resize/'
        def outPath = grailsApplication.config.uploadFolder + 'watermark/out/'

        burningImageService.doWith(watermark, watermarktOutPath).execute { it.scaleAccurate(width, height) }

        /**
         * MENGGUNAKAN WATERMARK
         */
        response.setContentType("APPLICATION/OCTET-STREAM")
        response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.namaFile}\"")



        burningImageService.doWith(documentInstance.path, outPath).execute {
            it.watermark(watermarktOutPath + "watermark.png", ['right': 10, 'bottom': 10])
        }
        def file = new File(outPath + documentInstance.namaFile)
        def fileInputStream = new FileInputStream(file)
        def outputStream = response.getOutputStream()
        byte[] buffer = new byte[BUFFER_SIZE];
        int len;
        while ((len = fileInputStream.read(buffer)) > 0) {
            outputStream.write(buffer, 0, len);
        }
        outputStream.flush()
        outputStream.close()
        fileInputStream.close()
    }


    def createUserDir(def dirRoot) {

        File folderPath = new File(dirRoot)
        // if the directory does not exist, create it
        if (!folderPath.exists()) {
            System.out.println("creating directory: " + folderPath.getName());
            boolean result = false;
            try {
                folderPath.mkdir();
                result = true;
            }
            catch (SecurityException se) {
                System.out.println("gagal: " + se.message);
            }
            if (result) {
                System.out.println("DIR created");
            }
        }
    }

    def createSizeGroupDir(def imagePath) {
        File folderPath = new File(imagePath)
        // if the directory does not exist, create it
        if (!folderPath.exists()) {
            System.out.println("creating directory: " + folderPath.getName());
            boolean result = false;
            try {
                folderPath.mkdir();
                result = true;
            }
            catch (SecurityException se) {
                System.out.println("gagal: " + se.message);
            }
            if (result) {
                System.out.println("DIR created");
            }
        }
    }

}
