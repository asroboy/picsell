package com.picsell.security

import grails.plugin.springsecurity.SpringSecurityUtils
import org.springframework.security.web.RedirectStrategy

import javax.servlet.http.HttpServletResponse

class LogoutController {
    /** Dependency injection for RedirectStrategy. */
    RedirectStrategy redirectStrategy

    def index() {
        redirect uri: SpringSecurityUtils.securityConfig.logout.filterProcessesUrl
    }

    def relogin() {

        if (!request.post && SpringSecurityUtils.getSecurityConfig().logout.postOnly) {
            response.sendError HttpServletResponse.SC_METHOD_NOT_ALLOWED // 405
            return
        }

        // TODO put any pre-logout code here
        def uri = createLink(controller: 'login', action: 'auth')
        redirectStrategy.sendRedirect request, response, uri
        // '/j_spring_security_logout'
        response.flushBuffer()
    }
}
