package com.picsell.config

import com.picsell.data.UserPuchaseItem
import com.picsell.security.Role
import com.picsell.security.User
import com.picsell.security.UserRole
import grails.converters.JSON
import grails.transaction.Transactional
import org.springframework.security.web.RedirectStrategy

class DashboardController {
    /** Dependency injection for RedirectStrategy. */
    RedirectStrategy redirectStrategy


    static allowedMethods = [upgrade_to_cotributor: 'GET', upgrade_account: 'POST']

    def index() {}

    def contributor(User userInstance) {

    }

    def admin(User userInstance) {

    }

    def user(User userInstance) {

    }

    def contributor_earnings(User userInstance) {
        def userPurchaseItems = UserPuchaseItem.findAllByContributor(userInstance)
        [userPurchaseItems: userPurchaseItems]
    }

    def upgrade_page() {
        redirect upgrade_to_cotributor()
    }

    def upgrade_to_cotributor() {
        print "called"
        []
    }

    @Transactional
    def upgrade_account(User userInstance) {
//        if (!request.post && SpringSecurityUtils.getSecurityConfig().logout.postOnly) {
//            response.sendError HttpServletResponse.SC_METHOD_NOT_ALLOWED // 405
//            return
//        }
        def userRole = UserRole.findByUser(userInstance);
        print userRole?.user?.email
        def roleUser = Role.findByAuthority('ROLE_USER');
        def contributorRole = Role.findByAuthority('ROLE_CONTRIBUTOR');
        UserRole.remove userInstance, roleUser

        UserRole.create userInstance, contributorRole
        def result = [status: "ok"]
        render result as JSON
    }

    def user_plans() {

    }

    def billing_info() {

    }

    def preferences() {

    }

    def portfolio(User userInstance){}
}
