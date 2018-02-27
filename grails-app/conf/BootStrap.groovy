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
        RoleMenu.findByUrl('/role/**') ?: new RoleMenu(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/ujian/**') ?: new RoleMenu(url: '/ujian/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/pertemuan/**') ?: new RoleMenu(url: '/pertemuan/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/certificate/**') ?: new RoleMenu(url: '/certificate/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/ujianPunyaSoal/**') ?: new RoleMenu(url: '/ujianPunyaSoal/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/pertemuanPunyaUjian/**') ?: new RoleMenu(url: '/pertemuanPunyaUjian/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/soal/**') ?: new RoleMenu(url: '/soal/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/jawaban/**') ?: new RoleMenu(url: '/jawaban/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/penjelasanSoal/**') ?: new RoleMenu(url: '/penjelasanSoal/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/pengumuman/**') ?: new RoleMenu(url: '/pengumuman/**', configAttribute: 'ROLE_ADMIN').save()
        RoleMenu.findByUrl('/diskusiPengumuman/**') ?: new RoleMenu(url: '/diskusiPengumuman/**', configAttribute: 'ROLE_ADMIN').save()



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

    }

    def destroy = {
    }
}
