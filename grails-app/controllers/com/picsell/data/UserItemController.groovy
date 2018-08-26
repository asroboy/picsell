package com.picsell.data

import com.picsell.security.User
import grails.transaction.Transactional
import org.apache.commons.io.FileUtils
import org.apache.commons.io.FilenameUtils
import org.codehaus.groovy.grails.validation.Validateable
import org.springframework.mail.javamail.MimeMessageHelper
import org.springframework.mail.javamail.MimeMessagePreparator
import org.springframework.web.multipart.MultipartFile

import javax.imageio.IIOImage
import javax.imageio.ImageIO
import javax.imageio.ImageWriteParam
import javax.imageio.ImageWriter
import javax.imageio.stream.ImageOutputStream
import javax.imageio.stream.MemoryCacheImageOutputStream
import javax.mail.internet.MimeMessage
import java.awt.Graphics2D
import java.awt.RenderingHints
import java.awt.Transparency
import java.awt.image.BufferedImage
import org.imgscalr.Scalr

import static org.springframework.http.HttpStatus.OK

class UserItemController {
    def grailsApplication
    def burningImageService


    def index(Integer max) {
        params.max = Math.min(max ?: 9, 100)
        def user = User.get(sec.loggedInUserInfo(field: "id"))
        println(user?.username)
        def items
        def itemInstanceCount
        if (params.status) {
            items = Item.findAllByUserOwnerAndStatus(user, params.status, params)
            itemInstanceCount = Item.findAllByUserOwnerAndStatus(user, params.status).size()
        } else {
            items = Item.findAllByUserOwner(user, params)
            itemInstanceCount = Item.findAllByUserOwner(user).size()
        }

        [items: items, itemInstanceCount: itemInstanceCount]
    }

    def addFirstItem() {
        respond new Item(params)
    }

    def addItem() {
        respond new Item(params)
    }

    def contributorItems(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        def items = params.status ? Item.findAllByStatus(params.status, params) : Item.list(params)
        print("size : " + items.size());
        respond items, model: [itemInstanceCount: Item.count()]
    }

    def itemDetail(Item itemInstance) {
        respond itemInstance
    }

    @Transactional
    def mSaveItem() {

        Item mItemInstance = new Item()

        mItemInstance.name = request.getParameter("name")
        mItemInstance.description = request.getParameter("description")
        mItemInstance.price = Double.parseDouble(request.getParameter("price"))
        mItemInstance.currency = request.getParameter("currency")
        mItemInstance.tags = request.getParameter("tags")
        def mdeiaType = MediaType.get(request.getParameter("mediaType"))
        mItemInstance.mediaType = mdeiaType
        def category = Category.get(request.getParameter("category"))
        mItemInstance.category = category
        mItemInstance.createdDate = new Date()
        mItemInstance.userOwner = User.get(request.getParameter("userOwner.id"))
        mItemInstance.status = "pending"

        print("mSaveItem")

        def file = request.getFile('file')
        if (file.empty) {
            respond "File cannot be empty", view: 'addItem'
            print("file empty")
            return
        } else {
            print("file not empty")
            mItemInstance.save()
            if (mItemInstance.hasErrors()) {
                print("mSaveItem ERROR" + mItemInstance.errors)
                respond mItemInstance, view: 'addItem'
                return
            }

            print("File name " + file.originalFilename)

            saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel("Others"), true, "", false)

            if (request.getParameter("group_size_l")) {
                print("group_size_l " + request.getParameter("group_size_l"))
                saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_l")), false, request.getParameter("image_dim_l"), false)
            }
            if (request.getParameter("group_size_m")) {
                print("group_size_m " + request.getParameter("group_size_m"))
                saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_m")), false, request.getParameter("image_dim_m"), false)
            }
            if (request.getParameter("group_size_s")) {
                print("group_size_s " + request.getParameter("group_size_s"))
                saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_s")), false, request.getParameter("image_dim_s"), false)
            }

            saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel("Others"), false, "", true)

            redirect(action: "index", params: [item_id: mItemInstance?.id])
        }
    }

    @Transactional
    def saveItem(Item mItemInstance) {
        if (mItemInstance == null) {
            notFound()
            return
        }

        def file = request.getFile('file')
        if (file.empty) {
            respond "File cannot be empty", view: 'addItem'
            return
        } else {
            mItemInstance.save()
            if (mItemInstance.hasErrors()) {
                respond mItemInstance.errors, view: 'addItem'
                return
            }

            saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel("Others"), true, "", false)

            if (request.getParameter("group_size_l")) {
                print("group_size_l " + request.getParameter("group_size_l"))
                saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_l")), false, request.getParameter("image_dim_l"), false)
            }
            if (request.getParameter("group_size_m")) {
                print("group_size_m " + request.getParameter("group_size_m"))
                saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_m")), false, request.getParameter("image_dim_m"), false)
            }
            if (request.getParameter("group_size_s")) {
                print("group_size_s " + request.getParameter("group_size_s"))
                saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_s")), false, request.getParameter("image_dim_s"), false)
            }

            saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel("Others"), false, "", true)

            redirect(action: "index", params: [item_id: mItemInstance?.id])
        }

    }


    def updateItem_(Item itemInstance) {
        updateItem(itemInstance)
    }

    @Transactional
    def updateItem(Item mItemInstance) {
        print("ID : " + mItemInstance?.id)
        if (mItemInstance == null) {
            notFound()
            return
        }

        if (mItemInstance.hasErrors()) {
            respond mItemInstance.errors, view: 'itemDetail'
            return
        }

        def file = request.getFile('file')
        if (file) {
            print("FILE EXIST")
            mItemInstance.name = request.getParameter("name")
            mItemInstance.description = request.getParameter("description")
            mItemInstance.price = Double.parseDouble(request.getParameter("price").replace(",", ""))
            mItemInstance.currency = request.getParameter("currency")
            mItemInstance.tags = request.getParameter("tags")
            def category = Category.get(request.getParameter("category"))
            mItemInstance.category = category
            mItemInstance.statusCgDate = new Date()
            mItemInstance.userOwner = User.get(request.getParameter("userOwner.id"))
            mItemInstance.status = "pending"
            mItemInstance.save(flush: true)
            if (mItemInstance.hasErrors()) {
                respond mItemInstance.errors, view: 'itemDetail'
                return
            }
            String fileName = file.originalFilename;
            if (!fileName.trim().equals("")) {

                saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel("Others"), true, "", false)

                if (request.getParameter("group_size_l")) {
                    print("group_size_l " + request.getParameter("group_size_l"))
                    saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_l")), false, request.getParameter("image_dim_l"), false)
                }
                if (request.getParameter("group_size_m")) {
                    print("group_size_m " + request.getParameter("group_size_m"))
                    saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_m")), false, request.getParameter("image_dim_m"), false)
                }
                if (request.getParameter("group_size_s")) {
                    print("group_size_s " + request.getParameter("group_size_s"))
                    saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel(request.getParameter("group_size_s")), false, request.getParameter("image_dim_s"), false)
                }

                saveFile(file, mItemInstance, ItemGroupSize.findByGroupLabel("Others"), false, "", true)

                redirect(action: "index", params: [item_id: mItemInstance?.id])
            } else {
                redirect(action: "index", params: [item_id: mItemInstance?.id])
            }


        } else {
            print("NO FILE")
            mItemInstance.name = request.getParameter("name")
            mItemInstance.description = request.getParameter("description")
            mItemInstance.price = Double.parseDouble(request.getParameter("price").replace(",", ""))
            mItemInstance.currency = request.getParameter("currency")
            mItemInstance.tags = request.getParameter("tags")
            def category = Category.get(request.getParameter("category"))
            mItemInstance.category = category
            mItemInstance.statusCgDate = new Date()
            mItemInstance.userOwner = User.get(request.getParameter("userOwner.id"))
            mItemInstance.status = "pending"
            mItemInstance.save flush: true
            if (mItemInstance.hasErrors()) {
                respond mItemInstance.errors, view: 'itemDetail'
                return
            }
            redirect(action: "index", params: [item_id: mItemInstance?.id])
        }

    }

    def saveFile(
            def file, Item mItemInstance, ItemGroupSize groupSize, boolean isOriginal, String dimensi, boolean tumbnails) {
        if (file != null && mItemInstance.id) {
            print("File name " + file.originalFilename)
            createUserDir((mItemInstance?.userOwner?.id))
            def imageFile = ImageFile.findByTableIdAndTableNameAndGroupSize(mItemInstance?.id, mItemInstance.class.simpleName, groupSize) ?: new ImageFile()
//            if (!imageFile?.namaFile.equals(file.originalFilename)) {
            String imagePath = ""
            if (tumbnails) {
                imagePath = grailsApplication.config.uploadFolder + (mItemInstance?.userOwner?.id) + "/" + "tumbnails"
            } else {
                imagePath = grailsApplication.config.uploadFolder + (mItemInstance?.userOwner?.id) + "/" + (groupSize ? (groupSize?.groupLabel) : "default")
            }

            print("PATH   : " + imagePath)
            createSizeGroupDir(imagePath)

            imageFile.namaFile = mItemInstance?.id + "." + FilenameUtils.getExtension(file.originalFilename)
            imageFile.path = imagePath + "/" + mItemInstance?.id + "." + FilenameUtils.getExtension(file.originalFilename)
            imageFile.ukuranFile = file.size
            imageFile.tipeFile = file.contentType
            imageFile.tableId = mItemInstance?.id
            imageFile.groupSize = groupSize
            imageFile.tableName = mItemInstance.class.simpleName

            if (isOriginal) {
                file.transferTo(new File(imagePath + "/" + mItemInstance?.id + "." + FilenameUtils.getExtension(file.originalFilename)))
            } else {

                //CARA 1 ampuh tanpe mengurangi banyak kualitas gambar
                BufferedImage image = ImageIO.read(new File(grailsApplication.config.uploadFolder + (mItemInstance?.userOwner?.id) + "/Others/" + mItemInstance?.id + "." + FilenameUtils.getExtension(file.originalFilename)))
                int newWidth = 0
                int newHeight = 0
                if (tumbnails) {
                    newWidth = image.getWidth() * 30 / 100;
                    newHeight = image.getHeight() * 30 / 100;
                    imageFile.width = newWidth
                    imageFile.height = newHeight
                } else {
                    newWidth = Integer.parseInt(dimensi.split("x")[0])
                    newHeight = Integer.parseInt(dimensi.split("x")[1])
                    imageFile.width = newWidth
                    imageFile.height = newHeight
                }

                BufferedImage scaled = getScaledInstance(
                        image, newWidth, newHeight, RenderingHints.VALUE_INTERPOLATION_BILINEAR, true);
                String imageType = FilenameUtils.getExtension(file.originalFilename);
                String outPath = imagePath + "/" + mItemInstance?.id + "." + imageType;
                writeJPG(scaled, new FileOutputStream(outPath), 1, imageType);

                //CARA 2
                /**
                 def img = ImageIO.read(new File(grailsApplication.config.uploadFolder + (mItemInstance?.userOwner?.id) + "/Others/" + mItemInstance?.id + "." + FilenameUtils.getExtension(file.originalFilename)))
                 int newWidth = Integer.parseInt(dimensi.split("x")[0])
                 int newHeight = Integer.parseInt(dimensi.split("x")[1])
                 new BufferedImage(newWidth, newHeight, img.type).with { i ->
                 createGraphics().with {setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BICUBIC)
                 drawImage(img, 0, 0, newWidth, newHeight, null)
                 dispose()}ImageIO.write(i, FilenameUtils.getExtension(file.originalFilename), new File(imagePath + "/" + mItemInstance?.id + "." + FilenameUtils.getExtension(file.originalFilename)))}**/

                //CARA 1
                /**
                 burningImageService.doWith(grailsApplication.config.uploadFolder + (mItemInstance?.userOwner?.id) + "/Others/" + mItemInstance?.id + "." + FilenameUtils.getExtension(file.originalFilename), imagePath).execute {it.scaleAccurate(Integer.parseInt(dimensi.split("x")[0]), Integer.parseInt(dimensi.split("x")[1]))}**/
            }
            imageFile.save()
            print("ID " + imageFile?.id)
//            }

        }
//        redirect(action: "index", params: [item_id: mItemInstance?.id])
//        redirect(action: "index")
    }


    def scaleImage(String pathToOriginalImage, String imageFormat, Integer targetWidth, Integer targetHeight) {

        File originalImageFile = new File(pathToOriginalImage)
        BufferedImage image = ImageIO.read(originalImageFile)

        BufferedImage scaledImg = Scalr.resize(image, Scalr.Method.QUALITY, Scalr.Mode.FIT_TO_WIDTH,
                targetWidth, targetHeight, Scalr.OP_ANTIALIAS)

        ByteArrayOutputStream baos = new ByteArrayOutputStream()
        ImageIO.write(scaledImg, imageFormat, baos)
        baos.flush()
        byte[] scaledImageInByte = baos.toByteArray()
        baos.close()
        return scaledImageInByte
    }

    def createUserDir(def id) {

        File folderPath = new File(grailsApplication.config.uploadFolder + id)
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

    /**
     *
     * @param img
     * @param targetWidth
     * @param targetHeight
     * @param hint
     * @param higherQuality
     * @return
     */

    public BufferedImage getScaledInstance(BufferedImage img, int targetWidth, int targetHeight, Object hint, boolean higherQuality) {
        int type = (img.getTransparency() == Transparency.OPAQUE) ? BufferedImage.TYPE_INT_RGB : BufferedImage.TYPE_INT_ARGB;
        BufferedImage ret = (BufferedImage) img;
        int w, h;
        if (higherQuality) {
            // Use multi-step technique: start with original size, then
            // scale down in multiple passes with drawImage()
            // until the target size is reached
            w = img.getWidth();
            h = img.getHeight();
        } else {
            // Use one-step technique: scale directly from original
            // size to target size with a single drawImage() call
            w = targetWidth;
            h = targetHeight;
        }

        while (w != targetWidth || h != targetHeight) {
            if (higherQuality && w > targetWidth) {
                w /= 2;
                if (w < targetWidth) {
                    w = targetWidth;
                }
            }

            if (higherQuality && h > targetHeight) {
                h /= 2;
                if (h < targetHeight) {
                    h = targetHeight;
                }
            }

            BufferedImage tmp = new BufferedImage(w, h, type);
            Graphics2D g2 = tmp.createGraphics();
            g2.setRenderingHint(RenderingHints.KEY_INTERPOLATION, hint);
            g2.drawImage(ret, 0, 0, w, h, null);
            g2.dispose();

            ret = tmp;
        }

        return ret;
    }

    /**
     *
     * @param bufferedImage
     * @param outputStream
     * @param quality
     * @param imageType
     * @throws IOException
     */
    public void writeJPG(BufferedImage bufferedImage, OutputStream outputStream, float quality, imageType) throws IOException {
        Iterator<ImageWriter> iterator =
                ImageIO.getImageWritersByFormatName(imageType);
        ImageWriter imageWriter = iterator.next();
        ImageWriteParam imageWriteParam = imageWriter.getDefaultWriteParam();
        imageWriteParam.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
        imageWriteParam.setCompressionQuality(quality);
        ImageOutputStream imageOutputStream =
                new MemoryCacheImageOutputStream(outputStream);
        imageWriter.setOutput(imageOutputStream);
        IIOImage iioimage = new IIOImage(bufferedImage, null, null);
        imageWriter.write(null, iioimage, imageWriteParam);
        imageOutputStream.flush();
    }
}
