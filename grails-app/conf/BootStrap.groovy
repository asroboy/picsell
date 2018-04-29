import com.picsell.config.Account
import com.picsell.config.TermOfService
import com.picsell.data.Category
import com.picsell.data.Item
import com.picsell.data.ItemHasCategory
import com.picsell.security.Role
import com.picsell.security.RoleMenu
import com.picsell.security.User
import com.picsell.security.UserRole

class BootStrap {

    def init = { servletContext ->

        for (String url in [
                '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
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
        RoleMenu.findByUrl('/register/**') ?: new RoleMenu(url: '/register/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/home/**') ?: new RoleMenu(url: '/home/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/image/download/**') ?: new RoleMenu(url: '/image/download/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/item/itemDetail/**') ?: new RoleMenu(url: '/item/itemDetail/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/document/download/**') ?: new RoleMenu(url: '/document/download/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrlAndConfigAttribute('/subcribtion/*', 'permitAll') ?: new RoleMenu(url: '/subcribtion/*', configAttribute: 'permitAll').save()

        //USER
        RoleMenu.findByUrl('/profileUser/profile/**') ?: new RoleMenu(url: '/profileUser/profile/**', configAttribute: 'ROLE_USER,ROLE_ADMIN').save()
        RoleMenu.findByUrl('/profileUser/saveProfile/**') ?: new RoleMenu(url: '/profileUser/saveProfile/**', configAttribute: 'ROLE_USER,ROLE_ADMIN').save()
        RoleMenu.findByUrl('/profileUser/saveProfileImage/**') ?: new RoleMenu(url: '/profileUser/saveProfileImage/**', configAttribute: 'ROLE_USER,ROLE_ADMIN').save()
        RoleMenu.findByUrl('/userItem/**') ?: new RoleMenu(url: '/userItem/**', configAttribute: 'ROLE_CONTRIBUTOR').save()
        RoleMenu.findByUrl('/document/**') ?: new RoleMenu(url: '/document/**', configAttribute: 'ROLE_USER,ROLE_CONTRIBUTOR').save()

        //ADMIN
        RoleMenu.findByUrl('/admin/**') ?: new RoleMenu(url: '/admin/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/requestmap/**') ?: new RoleMenu(url: '/requestmap/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/user/**') ?: new RoleMenu(url: '/user/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/user/show/**') ?: new RoleMenu(url: '/user/show/**', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrl('/role/**') ?: new RoleMenu(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/userAccount/myAccount') ?: new RoleMenu(url: '/userAccount/myAccount', configAttribute: 'ROLE_USER').save()

        RoleMenu.findByUrl('/termOfService/**') ?: new RoleMenu(url: '/termOfService/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/user/*') ?: new RoleMenu(url: '/user/*', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/category/**') ?: new RoleMenu(url: '/category/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/testFile/**') ?: new RoleMenu(url: '/testFile/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/account/**') ?: new RoleMenu(url: '/account/**', configAttribute: 'ROLE_ADMIN').save()

        //ADMIN AND USER
        RoleMenu.findByUrl('/profileUser/**') ?: new RoleMenu(url: '/profileUser/**', configAttribute: 'ROLE_ADMIN,ROLE_USER').save()
        RoleMenu.findByUrl('/item/**') ?: new RoleMenu(url: '/item/*', configAttribute: 'ROLE_ADMIN,ROLE_USER').save()
        RoleMenu.findByUrl('/fileItem/**') ?: new RoleMenu(url: '/fileItem/**', configAttribute: 'ROLE_ADMIN,ROLE_USER').save()


        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save()
        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save()
        def contributorRole = Role.findByAuthority('ROLE_CONTRIBUTOR') ?: new Role(authority: 'ROLE_CONTRIBUTOR').save()

        def user = User.findByUsername('admin') ?: new User(username: 'admin', password: 'admin123')
        def ridho = User.findByUsername('ridho') ?: new User(username: 'ridho', password: 'ridho123')
        def atuanda = User.findByUsername('atuanda') ?: new User(username: 'atuanda', password: 'atuanda123')
        def contributor = User.findByUsername('contributor') ?: new User(username: 'contributor', password: 'contributor123')

        user.save(flush: true)
        ridho.save(flush: true)
        atuanda.save(flush: true)
        contributor.save(flush: true)

        UserRole.create user, adminRole
        UserRole.create ridho, adminRole
        UserRole.create atuanda, userRole
        UserRole.create contributor, contributorRole

        UserRole.withSession {
            it.flush()
            it.clear()
        }

        def environtment = Category.findByName('Environment') ?: new Category(name: 'Environment').save()
        def building = Category.findByName('Building') ?: new Category(name: 'Building').save()
        def transport = Category.findByName('Transport') ?: new Category(name: 'Transport').save()
        def outfit = Category.findByName('Outfit') ?: new Category(name: 'Outfit').save()
        def lifestyle = Category.findByName('Lifestyle') ?: new Category(name: 'Lifestyle').save()

        //Account
        Account.findByName('Subscription 1') ?: new Account(maxTeamUser: 1, name: 'Subscription 1', type: 'Subscription', lisence: 'Annual/Monthly', maxImages: 10, price: 49, inCurrency: 'USD', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 2') ?: new Account(maxTeamUser: 1, name: 'Subscription 2', type: 'Subscription', lisence: 'Annual/Monthly', maxImages: 50, price: 125, inCurrency: 'USD', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 3') ?: new Account(maxTeamUser: 1, name: 'Subscription 3', type: 'Subscription', lisence: 'Annual/Monthly', maxImages: 350, price: 199, inCurrency: 'USD', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Subscription 4') ?: new Account(maxTeamUser: 1, name: 'Subscription 4', type: 'Subscription', lisence: 'Annual/Monthly', maxImages: 750, price: 249, inCurrency: 'USD', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('On Demand 1') ?: new Account(maxTeamUser: 1, name: 'On Demand 1', type: 'On Demand', lisence: 'Standard/Enhance', maxImages: 5, price: 49, inCurrency: 'USD', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('On Demand 2') ?: new Account(maxTeamUser: 1, name: 'On Demand 2', type: 'On Demand', lisence: 'Standard/Enhance', maxImages: 25, price: 229, inCurrency: 'USD', unlimitedImages: false, allowMoreUser: false).save(flush: true)
        Account.findByName('Team 1') ?: new Account(maxTeamUser: 2, name: 'Team 1', type: 'Team', lisence: 'Standard License', maxImages: 0, price: 379, inCurrency: 'USD', unlimitedImages: true, allowMoreUser: false).save(flush: true)
        Account.findByName('Team 2') ?: new Account(maxTeamUser: 3, name: 'Team 2', type: 'Team', lisence: 'Standard License', maxImages: 0, price: 479, inCurrency: 'USD', unlimitedImages: true, allowMoreUser: false).save(flush: true)
        Account.findByName('Team 3') ?: new Account(maxTeamUser: 4, name: 'Team 3', type: 'Team', lisence: 'Standard License', maxImages: 0, price: 579, inCurrency: 'USD', unlimitedImages: true, allowMoreUser: true).save(flush: true)
        Account.findByName('Enterprice') ?: new Account(maxTeamUser: 1000, name: 'Enterprice', type: 'Enterprice Plan', lisence: 'Enterprice', maxImages: 0, price: 700, inCurrency: 'USD', unlimitedImages: true, allowMoreUser: true).save(flush: true)

        //Items
        def item1 = Item.findByName("Item 1") ?: new Item(name: "Item 1", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!", price: 20, currency: "USD", userOwner: atuanda).save(flush: true)
        def item2 = Item.findByName("Item 2") ?: new Item(name: "Item 2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!", price: 25, currency: "USD", userOwner: atuanda).save(flush: true)
        def item3 = Item.findByName("Item 3") ?: new Item(name: "Item 3", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!", price: 30, currency: "USD", userOwner: atuanda).save(flush: true)
        def item4 = Item.findByName("Item 4") ?: new Item(name: "Item 4", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!", price: 33, currency: "USD", userOwner: atuanda).save(flush: true)

        ItemHasCategory.findByItem(item1) ?: new ItemHasCategory(item: item1, category: environtment).save(flush: true)
        ItemHasCategory.findByItem(item2) ?: new ItemHasCategory(item: item2, category: building).save(flush: true)
        ItemHasCategory.findByItem(item3) ?: new ItemHasCategory(item: item3, category: transport).save(flush: true)
        ItemHasCategory.findByItem(item4) ?: new ItemHasCategory(item: item4, category: outfit).save(flush: true)


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
