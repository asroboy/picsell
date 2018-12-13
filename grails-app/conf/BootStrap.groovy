import com.picsell.config.Account
import com.picsell.config.TermOfService
import com.picsell.data.Banner
import com.picsell.data.Category
import com.picsell.data.Item
import com.picsell.data.ItemGroupSize
import com.picsell.data.ItemHasCategory
import com.picsell.data.MediaType
import com.picsell.security.Role
import com.picsell.security.RoleMenu
import com.picsell.security.User
import com.picsell.security.UserRole

class BootStrap {

    def init = { servletContext ->

        for (String url in [
                '/', '/error', '/index', '/index_bk.gsp', '/**/favicon.ico', '/shutdown',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*']) {
            RoleMenu.findByUrl(url) ?: new RoleMenu(url: url, configAttribute: 'permitAll').save()
        }

        RoleMenu.findByUrl('/profile/**') ?: new RoleMenu(url: '/profile/**', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrl('/admin/role/**') ?: new RoleMenu(url: '/admin/role/**', configAttribute: 'ROLE_SUPERVISOR').save()
        RoleMenu.findByUrl('/admin/user/**') ?: new RoleMenu(url: '/admin/user/**',
                configAttribute: 'ROLE_ADMIN,ROLE_SUPERVISOR').save()
        RoleMenu.findByUrl('/login/impersonate') ?: new RoleMenu(url: '/login/impersonate',
                configAttribute: 'ROLE_SWITCH_USER,isFullyAuthenticated()').save()

        //GLOBAL
        RoleMenu.findByUrl('/forgotPassword/**') ?: new RoleMenu(url: '/forgotPassword/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/picsellLogout/**') ?: new RoleMenu(url: '/picsellLogout/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/register/**') ?: new RoleMenu(url: '/register/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/home/**') ?: new RoleMenu(url: '/home/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/image/download/**') ?: new RoleMenu(url: '/image/download/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/item/itemDetail/**') ?: new RoleMenu(url: '/item/itemDetail/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/document/**') ?: new RoleMenu(url: '/document/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/document/preview/*') ?: new RoleMenu(url: '/document/preview/*', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/document/download/**') ?: new RoleMenu(url: '/document/download/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/document/photoWithWatermaarkPreview/**') ?: new RoleMenu(url: '/document/photoWithWatermaarkPreview/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/document/photoWithWatermaark/**') ?: new RoleMenu(url: '/document/photoWithWatermaark/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/document/downloadVideo/**') ?: new RoleMenu(url: '/document/downloadVideo/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/document/picsell_image/**') ?: new RoleMenu(url: '/document/picsell_image/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/customerMessage/saveExternal') ?: new RoleMenu(url: '/customerMessage/saveExternal', configAttribute: 'permitAll').save()
        RoleMenu.findByUrlAndConfigAttribute('/subcribtion/*', 'permitAll') ?: new RoleMenu(url: '/subcribtion/*', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/api/**') ?: new RoleMenu(url: '/api/**', configAttribute: 'permitAll').save()
//        RoleMenu.findByUrl('/billing/**') ?: new RoleMenu(url: '/billing/**', configAttribute: 'permitAll').save()

        //USER
        RoleMenu.findByUrl('/profileUser/profile/**') ?: new RoleMenu(url: '/profileUser/profile/**', configAttribute: 'ROLE_USER,ROLE_ADMIN,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/profileUser/saveProfile/**') ?: new RoleMenu(url: '/profileUser/saveProfile/**', configAttribute: 'ROLE_USER,ROLE_ADMIN, ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/profileUser/saveProfileImage/**') ?: new RoleMenu(url: '/profileUser/saveProfileImage/**', configAttribute: 'ROLE_USER,ROLE_ADMIN, ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/userItem/**') ?: new RoleMenu(url: '/userItem/**', configAttribute: 'ROLE_CONTRIBUTOR,ROLE_ADMIN').save()
        RoleMenu.findByUrl('/billing/saveBillingPayment/**') ?: new RoleMenu(url: '/billing/saveBillingPayment/**', configAttribute: 'ROLE_USER,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/billing/updateBillingPayment/**') ?: new RoleMenu(url: '/billing/updateBillingPayment/**', configAttribute: 'ROLE_USER,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/home/purchase_summary/**') ?: new RoleMenu(url: '/home/purchase_summary/**', configAttribute: 'ROLE_USER,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/purchaseHistory/**') ?: new RoleMenu(url: '/purchaseHistory/**', configAttribute: 'ROLE_USER,ROLE_CONTRIBUTOR').save()

        //ADMIN
        RoleMenu.findByUrl('/admin/**') ?: new RoleMenu(url: '/admin/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/requestmap/**') ?: new RoleMenu(url: '/requestmap/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/user/profile/**') ?: new RoleMenu(url: '/user/**', configAttribute: 'ROLE_USER,ROLE_ADMIN,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/user/**') ?: new RoleMenu(url: '/user/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/user/show/**') ?: new RoleMenu(url: '/user/show/**', configAttribute: 'ROLE_ADMIN, ROLE_USER').save()
        RoleMenu.findByUrl('/role/**') ?: new RoleMenu(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/userAccount/myAccount') ?: new RoleMenu(url: '/userAccount/myAccount', configAttribute: 'ROLE_USER').save()

        RoleMenu.findByUrl('/termOfService/**') ?: new RoleMenu(url: '/termOfService/**', configAttribute: 'ROLE_ADMIN').save()
//        RoleMenu.findByUrl('/user/*') ?: new RoleMenu(url: '/user/*', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/category/**') ?: new RoleMenu(url: '/category/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/testFile/**') ?: new RoleMenu(url: '/testFile/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/account/**') ?: new RoleMenu(url: '/account/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/mediaType/**') ?: new RoleMenu(url: '/mediaType/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/banner/**') ?: new RoleMenu(url: '/banner/**', configAttribute: 'ROLE_ADMIN').save()

        //ADMIN CONTRIBUTOR AND USER
        RoleMenu.findByUrl('/bankAccount/**') ?: new RoleMenu(url: '/bankAccount/**', configAttribute: 'ROLE_ADMIN,ROLE_USER,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/profileUser/**') ?: new RoleMenu(url: '/profileUser/**', configAttribute: 'ROLE_ADMIN,ROLE_USER,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/item/**') ?: new RoleMenu(url: '/item/**', configAttribute: 'ROLE_ADMIN,ROLE_USER').save()
        RoleMenu.findByUrl('/fileItem/**') ?: new RoleMenu(url: '/fileItem/**', configAttribute: 'ROLE_ADMIN,ROLE_USER').save()
        RoleMenu.findByUrl('/tos/**') ?: new RoleMenu(url: '/tos/**', configAttribute: 'ROLE_ADMIN,ROLE_USER,ROLE_CONTRIBUTOR').save()

        RoleMenu.findByUrl('/dashboard/admin') ?: new RoleMenu(url: '/dashboard/admin', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/dashboard/contributor') ?: new RoleMenu(url: '/dashboard/contributor', configAttribute: 'ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/dashboard/contributor/**') ?: new RoleMenu(url: '/dashboard/contributor/**', configAttribute: 'ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/dashboard/user') ?: new RoleMenu(url: '/dashboard/user', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrl('/dashboard/upgrade_to_cotributor') ?: new RoleMenu(url: '/dashboard/upgrade_to_cotributor', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrl('/dashboard/upgrade_account/**') ?: new RoleMenu(url: '/dashboard/upgrade_account/**', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrl('/dashboard/user_plans') ?: new RoleMenu(url: '/dashboard/user_plans', configAttribute: 'ROLE_USER,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/dashboard/billing_info') ?: new RoleMenu(url: '/dashboard/billing_info', configAttribute: 'ROLE_USER,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/dashboard/preferences') ?: new RoleMenu(url: '/dashboard/preferences', configAttribute: 'ROLE_USER,ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/dashboard/contributor_earnings/**') ?: new RoleMenu(url: '/dashboard/contributor_earnings/**', configAttribute: 'ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/dashboard/portfolio/**') ?: new RoleMenu(url: '/dashboard/portfolio/**', configAttribute: 'ROLE_CONTRIBUTOR').save()


        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(flush: true)
        def contributorRole = Role.findByAuthority('ROLE_CONTRIBUTOR') ?: new Role(authority: 'ROLE_CONTRIBUTOR').save(flush: true)

        def user = User.findByUsername('admin') ?: new User(firstName: 'Admin', lastName: 'Picsell', username: 'admin', password: 'admin123', email: 'admin@picsell.id').save(flush: true)
        def ridho = User.findByUsername('ridho') ?: new User(firstName: 'Asrofi', lastName: 'Ridho', username: 'ridho', password: 'ridho123', email: 'asrofiridho@gmail.com').save(flush: true)
        def atuanda = User.findByUsername('atuanda') ?: new User(firstName: 'Achtar', lastName: 'Tuanda', username: 'atuanda', password: 'atuanda123', email: 'atuanda@yahoo.com').save(flush: true)
        def contributor = User.findByUsername('contributor') ?: new User(firstName: 'Contributor', lastName: 'Picsell', username: 'contributor', password: 'contributor123', email: 'contributor@picsell.id').save(flush: true)


        UserRole.create user, adminRole
        UserRole.create ridho, adminRole
        UserRole.create atuanda, userRole
        UserRole.create contributor, contributorRole


        UserRole.withSession {
            it.flush()
            it.clear()
        }

        Category.findByName('Environment') ?: new Category(name: 'Environment').save()
        Category.findByName('Building') ?: new Category(name: 'Building').save()
        Category.findByName('Transport') ?: new Category(name: 'Transport').save()
        Category.findByName('Outfit') ?: new Category(name: 'Outfit').save()
        Category.findByName('Lifestyle') ?: new Category(name: 'Lifestyle').save()

        def mtImages = MediaType.findByName("Images") ?: new MediaType(name: 'Images').save(flush: true)
        MediaType.findByName("Illustration") ?: new MediaType(name: 'Illustration', parent: mtImages).save(flush: true)
        MediaType.findByName("Photos") ?: new MediaType(name: 'Photos', parent: mtImages).save(flush: true)
        MediaType.findByName("Footages") ?: new MediaType(name: 'Footages').save(flush: true)
        MediaType.findByName("After Effect") ?: new MediaType(name: 'After Effect').save(flush: true)
        MediaType.findByName("Photoshop PSD") ?: new MediaType(name: 'Photoshop PSD').save(flush: true)

        //Account
        Account.findByName('Subscription 1') ?: new Account(maxTeamUser: 1, name: 'Individual 1', type: 'Individual', lisence: 'Monthly', maxImages: 10, price: 10000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 2') ?: new Account(maxTeamUser: 1, name: 'Individual 2', type: 'Individual', lisence: 'Monthly', maxImages: 50, price: 50000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 3') ?: new Account(maxTeamUser: 1, name: 'Individual 3', type: 'Individual', lisence: 'Monthly', maxImages: 100, price: 100000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 4') ?: new Account(maxTeamUser: 1, name: 'Individual 4', type: 'Individual', lisence: 'Monthly', maxImages: 500, price: 500000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 5') ?: new Account(maxTeamUser: 1, name: 'Individual 5', type: 'Individual', lisence: 'Monthly', maxImages: 1000, price: 1000000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)

        Account.findByName('Subscription 6') ?: new Account(maxTeamUser: 1, name: 'Individual 6', type: 'Individual', lisence: 'Annually', maxImages: 10, price: 100000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 7') ?: new Account(maxTeamUser: 1, name: 'Individual 7', type: 'Individual', lisence: 'Annually', maxImages: 50, price: 500000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 8') ?: new Account(maxTeamUser: 1, name: 'Individual 8', type: 'Individual', lisence: 'Annually', maxImages: 100, price: 1000000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 9') ?: new Account(maxTeamUser: 1, name: 'Individual 9', type: 'Individual', lisence: 'Annually', maxImages: 500, price: 5000000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 10') ?: new Account(maxTeamUser: 1, name: 'Individual 10', type: 'Individual', lisence: 'Annually', maxImages: 1000, price: 10000000, inCurrency: 'IDR', unlimitedImages: false, allowMoreUser: false).save(flush: true)




        Account.findByName('Team 1') ?: new Account(maxTeamUser: 10, name: 'Team 1', type: 'Team', lisence: 'Annually', maxImages: 0, price: 100000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: false).save(flush: true)
        Account.findByName('Team 2') ?: new Account(maxTeamUser: 50, name: 'Team 2', type: 'Team', lisence: 'Annually', maxImages: 0, price: 500000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: false).save(flush: true)
        Account.findByName('Team 3') ?: new Account(maxTeamUser: 100, name: 'Team 3', type: 'Team', lisence: 'Annually', maxImages: 0, price: 1000000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: true).save(flush: true)
        Account.findByName('Team 4') ?: new Account(maxTeamUser: 500, name: 'Team 4', type: 'Team', lisence: 'Annually', maxImages: 0, price: 5000000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: true).save(flush: true)
        Account.findByName('Team 5') ?: new Account(maxTeamUser: 1000, name: 'Team 5', type: 'Team', lisence: 'Annually', maxImages: 0, price: 10000000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: true).save(flush: true)

        Account.findByName('Team 1') ?: new Account(maxTeamUser: 10, name: 'Team 6', type: 'Team', lisence: 'Monthly', maxImages: 0, price: 10000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: false).save(flush: true)
        Account.findByName('Team 2') ?: new Account(maxTeamUser: 50, name: 'Team 7', type: 'Team', lisence: 'Monthly', maxImages: 0, price: 50000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: false).save(flush: true)
        Account.findByName('Team 3') ?: new Account(maxTeamUser: 100, name: 'Team 8', type: 'Team', lisence: 'Monthly', maxImages: 0, price: 100000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: true).save(flush: true)
        Account.findByName('Team 4') ?: new Account(maxTeamUser: 500, name: 'Team 9', type: 'Team', lisence: 'Monthly', maxImages: 0, price: 500000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: true).save(flush: true)
        Account.findByName('Team 5') ?: new Account(maxTeamUser: 1000, name: 'Team 10', type: 'Team', lisence: 'Monthly', maxImages: 0, price: 1000000, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: true).save(flush: true)

        Account.findByName('Enterprice') ?: new Account(maxTeamUser: 1000, name: 'Enterprice', type: 'Enterprice', lisence: 'Enterprice', maxImages: 0, price: 700, inCurrency: 'IDR', unlimitedImages: true, allowMoreUser: true).save(flush: true)


        ItemGroupSize.findByGroupLabel("S") ?: new ItemGroupSize(groupLabel: "S", minSize: 3, maxSize: 5, price: 20000).save(flush: true)
        ItemGroupSize.findByGroupLabel("M") ?: new ItemGroupSize(groupLabel: "M", minSize: 6, maxSize: 9, price: 40000).save(flush: true)
        ItemGroupSize.findByGroupLabel("L") ?: new ItemGroupSize(groupLabel: "L", minSize: 10, maxSize: 15, price: 70000).save(flush: true)
        ItemGroupSize.findByGroupLabel("Others") ?: new ItemGroupSize(groupLabel: "Others", minSize: 16, maxSize: 100, price: 100000).save(flush: true)

        Banner.findByType("big") ?: new Banner(type: "big", isActive: false).save(flush: true)
        Banner.findByType("small") ?: new Banner(type: "small", isActive: false).save(flush: true)
        //Items
//        def item1 = Item.findByName("Item 1") ?: new Item(name: "Item 1", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!", price: 20, currency: "USD", userOwner: atuanda).save(flush: true)
//        def item2 = Item.findByName("Item 2") ?: new Item(name: "Item 2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!", price: 25, currency: "USD", userOwner: atuanda).save(flush: true)
//        def item3 = Item.findByName("Item 3") ?: new Item(name: "Item 3", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!", price: 30, currency: "USD", userOwner: atuanda).save(flush: true)
//        def item4 = Item.findByName("Item 4") ?: new Item(name: "Item 4", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!", price: 33, currency: "USD", userOwner: atuanda).save(flush: true)
//
//        ItemHasCategory.findByItem(item1) ?: new ItemHasCategory(item: item1, category: environtment).save(flush: true)
//        ItemHasCategory.findByItem(item2) ?: new ItemHasCategory(item: item2, category: building).save(flush: true)
//        ItemHasCategory.findByItem(item3) ?: new ItemHasCategory(item: item3, category: transport).save(flush: true)
//        ItemHasCategory.findByItem(item4) ?: new ItemHasCategory(item: item4, category: outfit).save(flush: true)


        TermOfService.findByTos("Terms of Service (\"Terms\")\n" +
                "Last updated: (add date)\n" +
                "Please read these Terms of Service (\"Terms\", \"Terms of Service\") carefully before using the\n" +
                "http://www.mywebsite.com (change this) website and the My Mobile App (change this) mobile\n" +
                "application (the \"Service\") operated by My Company (change this) (\"us\", \"we\", or \"our\").\n" +
                "Your access to and use of the Service is conditioned on your acceptance of and compliance with\n" +
                "these Terms. These Terms apply to all visitors, users and others who access or use the Service.\n" +
                "By accessing or using the Service you agree to be bound by these Terms. If you disagree\n" +
                "with any part of the terms then you may not access the Service.\n" +
                "Termination\n" +
                "We may terminate or suspend access to our Service immediately, without prior notice or liability, for\n" +
                "any reason whatsoever, including without limitation if you breach the Terms.\n" +
                "All provisions of the Terms which by their nature should survive termination shall survive\n" +
                "termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and\n" +
                "limitations of liability.\n" +
                "Subscriptions\n" +
                "Some parts of the Service are billed on a subscription basis (\"Subscription(s)\"). You will be billed in\n" +
                "advance on a recurring ...\n" +
                "The Subscriptions section is for SaaS businesses. For the full disclosure section or for a\n" +
                "“Purchases” section, create your own Terms of Service.\n" +
                "Content\n" +
                "Our Service allows you to post, link, store, share and otherwise make available certain information,\n" +
                "text, graphics, videos, or other material (\"Content\"). You are responsible for the …\n" +
                "The Content section is for businesses that allow users to create, edit, share, make content on\n" +
                "their websites or apps. For the full disclosure section, create your own Terms of Service.\n" +
                "Links To Other Web Sites\n" +
                "Our Service may contain links to third-party web sites or services that are not owned or controlled\n" +
                "by My Company (change this).\n" +
                "My Company (change this) has no control over, and assumes no responsibility for, the content,\n" +
                "privacy policies, or practices of any third party web sites or services. You further acknowledge and\n" +
                "agree that My Company (change this) shall not be responsible or liable, directly or indirectly, for any\n" +
                "damage or loss caused or alleged to be caused by or in connection with use of or reliance on any\n" +
                "such content, goods or services available on or through any such web sites or services.\n" +
                "Changes\n" +
                "We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a\n" +
                "revision is material we will try to provide at least 30 (change this) days' notice prior to any new terms\n" +
                "taking effect. What constitutes a material change will be determined at our sole discretion.\n" +
                "Contact Us\n" +
                "If you have any questions about these Terms, please contact us.") ?: new TermOfService(tos: "Terms of Service (\"Terms\")\n" +
                "Last updated: (add date)\n" +
                "Please read these Terms of Service (\"Terms\", \"Terms of Service\") carefully before using the\n" +
                "http://www.mywebsite.com (change this) website and the My Mobile App (change this) mobile\n" +
                "application (the \"Service\") operated by My Company (change this) (\"us\", \"we\", or \"our\").\n" +
                "Your access to and use of the Service is conditioned on your acceptance of and compliance with\n" +
                "these Terms. These Terms apply to all visitors, users and others who access or use the Service.\n" +
                "By accessing or using the Service you agree to be bound by these Terms. If you disagree\n" +
                "with any part of the terms then you may not access the Service.\n" +
                "Termination\n" +
                "We may terminate or suspend access to our Service immediately, without prior notice or liability, for\n" +
                "any reason whatsoever, including without limitation if you breach the Terms.\n" +
                "All provisions of the Terms which by their nature should survive termination shall survive\n" +
                "termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and\n" +
                "limitations of liability.\n" +
                "Subscriptions\n" +
                "Some parts of the Service are billed on a subscription basis (\"Subscription(s)\"). You will be billed in\n" +
                "advance on a recurring ...\n" +
                "The Subscriptions section is for SaaS businesses. For the full disclosure section or for a\n" +
                "“Purchases” section, create your own Terms of Service.\n" +
                "Content\n" +
                "Our Service allows you to post, link, store, share and otherwise make available certain information,\n" +
                "text, graphics, videos, or other material (\"Content\"). You are responsible for the …\n" +
                "The Content section is for businesses that allow users to create, edit, share, make content on\n" +
                "their websites or apps. For the full disclosure section, create your own Terms of Service.\n" +
                "Links To Other Web Sites\n" +
                "Our Service may contain links to third-party web sites or services that are not owned or controlled\n" +
                "by My Company (change this).\n" +
                "My Company (change this) has no control over, and assumes no responsibility for, the content,\n" +
                "privacy policies, or practices of any third party web sites or services. You further acknowledge and\n" +
                "agree that My Company (change this) shall not be responsible or liable, directly or indirectly, for any\n" +
                "damage or loss caused or alleged to be caused by or in connection with use of or reliance on any\n" +
                "such content, goods or services available on or through any such web sites or services.\n" +
                "Changes\n" +
                "We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a\n" +
                "revision is material we will try to provide at least 30 (change this) days' notice prior to any new terms\n" +
                "taking effect. What constitutes a material change will be determined at our sole discretion.\n" +
                "Contact Us\n" +
                "If you have any questions about these Terms, please contact us.").save()
    }

    def destroy = {
    }
}
