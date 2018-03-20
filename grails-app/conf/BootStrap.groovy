import com.picsell.data.Category
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

        RoleMenu.findByUrl('/forgotPassword/**') ?: new RoleMenu(url: '/forgotPassword/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/register/**') ?: new RoleMenu(url: '/register/**', configAttribute: 'permitAll').save()
        RoleMenu.findByUrl('/home/**') ?: new RoleMenu(url: '/home/**', configAttribute: 'permitAll').save()

        //ADMIN
        RoleMenu.findByUrl('/admin/**') ?: new RoleMenu(url: '/admin/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/requestmap/**') ?: new RoleMenu(url: '/requestmap/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/user/**') ?: new RoleMenu(url: '/user/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/user/show/**') ?: new RoleMenu(url: '/user/show/**', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrl('/role/**') ?: new RoleMenu(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()

        RoleMenu.findByUrlAndConfigAttribute('/profileUser/**', 'ROLE_USER') ?: new RoleMenu(url: '/profileUser/**', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrlAndConfigAttribute('/profileUser/**', 'ROLE_ADMIN') ?: new RoleMenu(url: '/profileUser/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrlAndConfigAttribute('/category/**', 'ROLE_ADMIN') ?: new RoleMenu(url: '/category/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrlAndConfigAttribute('/item/*', 'ROLE_ADMIN') ?: new RoleMenu(url: '/item/*', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrlAndConfigAttribute('/item/*', 'ROLE_USER') ?: new RoleMenu(url: '/item/*', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrlAndConfigAttribute('/item/**', 'ROLE_USER') ?: new RoleMenu(url: '/item/**', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrlAndConfigAttribute('/item/**', 'ROLE_ADMIN') ?: new RoleMenu(url: '/item/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrlAndConfigAttribute('/fileItem/**', 'ROLE_ADMIN') ?: new RoleMenu(url: '/fileItem/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrlAndConfigAttribute('/fileItem/**', 'ROLE_USER') ?: new RoleMenu(url: '/fileItem/**', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrlAndConfigAttribute('/fileItem/*', 'ROLE_USER') ?: new RoleMenu(url: '/fileItem/*', configAttribute: 'ROLE_USER').save()
        RoleMenu.findByUrlAndConfigAttribute('/fileItem/*', 'ROLE_ADMIN') ?: new RoleMenu(url: '/fileItem/*', configAttribute: 'ROLE_ADMIN').save()



        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def userRole = new Role(authority: 'ROLE_USER').save()

        def user = new User(username: 'admin', password: 'admin123')
        def ridho = new User(username: 'ridho', password: 'ridho123')
        def atuanda = new User(username: 'atuanda', password: 'atuanda123')

        user.save(flush: true)
        ridho.save(flush: true)
        atuanda.save(flush: true)

        UserRole.create user, adminRole
        UserRole.create ridho, adminRole
        UserRole.create atuanda, userRole

        UserRole.withSession {
            it.flush()
            it.clear()
        }


        Category.findByName('Nature') ?: new Category(name: 'Nature').save()
        Category.findByName('Pets') ?: new Category(name: 'Pets').save()
        Category.findByName('Otomotif') ?: new Category(name: 'Otomotif').save()
        Category.findByName('Family') ?: new Category(name: 'Family').save()

    }

    def destroy = {
    }
}
