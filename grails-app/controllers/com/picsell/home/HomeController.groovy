package com.picsell.home

import com.picsell.data.Category
import com.picsell.data.ImageFile
import com.picsell.data.Item
import com.picsell.data.MediaType
import grails.converters.JSON

class HomeController {

    def springSecurityService

    def index() {
        if (springSecurityService.isLoggedIn()) {
            print("is login")
            def user = com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))
            def userRoles = com.picsell.security.UserRole.findAllByUser(user)
            def userType = ""
            userRoles.each {
                if (it?.role?.authority.equalsIgnoreCase("ROLE_ADMIN")) {
                    userType += "ADMIN "
                }
                if (it?.role?.authority.equalsIgnoreCase("ROLE_CONTRIBUTOR")) {
                    userType += "CONTRIBUTOR "
                }
                if (it?.role?.authority.equalsIgnoreCase("ROLE_USER")) {
                    userType += "USER "
                }
            }
            print(userType)
            if (userType.contains("ADMIN")) {
                redirect controller: 'dashboard', action: 'admin'
            } else if (userType.contains("CONTRIBUTOR")) {
                redirect controller: 'dashboard', action: 'contributor'
            } else if (userType.contains("USER")) {
                redirect controller: 'dashboard', action: 'user'
            }

            [userType: userType]
        } else {
            redirect action: 'main'
        }
    }

    def main() {
        params.max = 3
        if (params.key) {
            print('key')
            def c = Item.createCriteria()
            def items = []
            def results = c.list(max: params.max, offset: params.offset ?: 0) {
                like("name", "%" + params.key + "%")
                and {
                    eq("status", "approved")
                }
            }
//            def d = Item.createCriteria()
//            def results_tag = d.list() {
//                like("tags", "%" + params.key + "%")
//                and {
//                    eq("status", "approved")
//                }
//            }
            results.each {
                items.add(it)
            }
//            results_tag.each {
//                items.add(it)
//            }

            def e = Item.createCriteria()
            def resultsCount = e.list() {
                like("name", "%" + params.key + "%")
                and {
                    eq("status", "approved")
                }
            }

            [items: items, itemInstanceCount: resultsCount.size()]
        } else if (params.media) {
            if (params.cat) {
                print('media and cat')
                def c = Item.createCriteria()
                def mediaType
                if (!params.media.equals("All media")) {
                    mediaType = MediaType.findByName(params.media)
                }
                def items = [];
                def category;
                if (!params.cat.equals("All category") || !params.cat.equals("")) {
                    print("cat " + params.cat)
                    category = Category.findByName(params.cat)
                }
                def results = c.list(max: params.max, offset: params.offset ?: 0) {
                    if (mediaType) {
                        eq("mediaType", mediaType)
                    }
                    and {
                        eq("status", "approved")
                    }
                    if (category) {
                        print("has category" + category)
                        and {
                            eq("category", category)
                        }
                    }
                }

                //provide count
                def d = Item.createCriteria()
                def resultCount = d.list() {
                    if (mediaType) {
                        eq("mediaType", mediaType)
                    }
                    and {
                        eq("status", "approved")
                    }
                    if (category) {
                        print("has category" + category)
                        and {
                            eq("category", category)
                        }
                    }
                }
                print("results " + results.size())
                print("result counts " + resultCount.size())
                results.each {
                    items.add(it)
                }

                [items: items, itemInstanceCount: resultCount.size()]
            } else {
                print('media')
                def c = Item.createCriteria()
                def mediaType = MediaType.findByName(params.media)
                def items = []

                def results = c.list(max: params.max, offset: params.offset ?: 0) {
                    eq("mediaType", mediaType)
                    and {
                        eq("status", "approved")
                    }
                }
                print("results " + results.size())
                results.each {
                    items.add(it)
                }

                def d = Item.createCriteria()
                def resultCount = d.list() {
                    eq("mediaType", mediaType)
                    and {
                        eq("status", "approved")
                    }
                }

                [items: items, itemInstanceCount: resultCount.size()]
            }
        } else if (params.top) {
            def items = Item.findAllByStatus("approved");
            [items: items]
        } else {
            def items = Item.findAllByStatus("approved", [max: 30]);
            [items: items]
        }
    }

    def test() {}

    def grid_test() {

    }

    def configuration() {

    }

    def itemDetail(Item itemInstance) {
        def itemImages = ImageFile.findAllByTableIdAndTableName(itemInstance?.id, itemInstance?.class.simpleName)
        def groupSizes = []
        itemImages.each {
            groupSizes.add(it?.groupSize)
        }
        [itemInstance: itemInstance, itemImages: itemImages, groupSizes: groupSizes as JSON, itemImagesJson: itemImages as JSON]
    }

    def mychart() {

    }

    def packages() {

    }

    def aboutUs() {}

    def policy() {}

    def agreement() {}

    def contributors() {}

    def tos() {}

    def hotItems() {
        def cat = Item.executeQuery("select distinct  category from Item ")
        def items = Item.list()

        [categories: cat, items: items]
    }

    def helpCenter() {

    }

    def setting() {

    }

    def purchase_summary(ImageFile imageFile) {
        def itemInstance = Item.get(imageFile?.tableId)
        [itemInstance: itemInstance, imageFile: imageFile]
    }

    def subscribe_summary() {}

    def ui_development() {}

    def download_page(Item itemInstance) {

        [itemInstance: itemInstance]
    }
}
