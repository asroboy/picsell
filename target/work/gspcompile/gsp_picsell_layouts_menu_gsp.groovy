import com.picsell.security.Role
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layouts_menu_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/_menu.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(1)
invokeTag('set','g',83,['var':("profilePicture"),'value':(com.picsell.data.ProfileUser.findByUser(userObject)?.id)],-1)
printHtmlPart(2)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id: profilePicture, params: [uid: userObject?.id]))
printHtmlPart(3)
expressionOut.print(createLink(controller: 'logout'))
printHtmlPart(4)
if(true && (com.picsell.security.UserRole.findByUserAndRole(userObject, com.picsell.security.Role.findByAuthority('ROLE_ADMIN')) != null)) {
printHtmlPart(5)
expressionOut.print(createLink(controller: 'user', action: 'index'))
printHtmlPart(6)
expressionOut.print(createLink(controller: 'role', action: 'index'))
printHtmlPart(7)
expressionOut.print(createLink(controller: 'requestmap', action: 'index'))
printHtmlPart(8)
}
printHtmlPart(9)
expressionOut.print(createLink(controller: 'category', action: 'index'))
printHtmlPart(10)
expressionOut.print(createLink(controller: 'item', action: 'index'))
printHtmlPart(11)
expressionOut.print(createLink(controller: 'fileItem', action: 'index'))
printHtmlPart(12)
expressionOut.print(createLink(controller: 'account', action: 'index'))
printHtmlPart(13)
if(true && (com.picsell.security.UserRole.findByUserAndRole(userObject, com.picsell.security.Role.findByAuthority('ROLE_ADMIN')) != null)) {
printHtmlPart(14)
expressionOut.print(createLink(controller: 'termOfService', action: 'index'))
printHtmlPart(15)
}
printHtmlPart(16)
expressionOut.print(createLink(controller: 'logout'))
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1524965736000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
