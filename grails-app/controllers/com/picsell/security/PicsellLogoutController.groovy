package com.picsell.security

import grails.plugin.springsecurity.SpringSecurityUtils
import org.springframework.security.web.RedirectStrategy

import javax.servlet.http.HttpServletResponse

class PicsellLogoutController {
    /** Dependency injection for RedirectStrategy. */
    RedirectStrategy redirectStrategy

    def index() {
        if (!request.post && SpringSecurityUtils.getSecurityConfig().logout.postOnly) {
            response.sendError HttpServletResponse.SC_METHOD_NOT_ALLOWED // 405
            return
        }
        // TODO put any pre-logout code here
        redirectStrategy.sendRedirect request, response, createLink(controller: 'login', action: 'auth')
        // '/j_spring_security_logout'
        response.flushBuffer()
    }
}
