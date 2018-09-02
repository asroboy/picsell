import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layouts_category_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/_category.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
expressionOut.print(createLink(controller: 'login', action: 'auth'))
printHtmlPart(2)
expressionOut.print(createLink(controller: 'register', action: 'register'))
printHtmlPart(3)
})
invokeTag('ifNotLoggedIn','sec',18,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
expressionOut.print(userObject?.username)
printHtmlPart(6)
invokeTag('set','g',31,['var':("profilePicture"),'value':(com.picsell.data.ProfileUser.findByUser(userObject)?.id)],-1)
printHtmlPart(7)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id: profilePicture, params: [uid: userObject?.id]))
printHtmlPart(8)
for( userRole in (userRoles) ) {
printHtmlPart(9)
if(true && (userRole?.role?.authority.equals("ROLE_USER"))) {
printHtmlPart(10)
expressionOut.print(createLink(controller: 'userAccount', action: 'myAccount'))
printHtmlPart(11)
if(true && (userRole?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(12)
}
printHtmlPart(13)
expressionOut.print(createLink(controller: 'myChart', action: 'index'))
printHtmlPart(14)
}
printHtmlPart(15)
if(true && (userRole?.role?.authority.equals("ROLE_ADMIN"))) {
printHtmlPart(10)
expressionOut.print(createLink(controller: 'home', action: 'configuration'))
printHtmlPart(16)
}
printHtmlPart(17)
}
printHtmlPart(18)
expressionOut.print(createLink(controller: 'logout', action: 'index'))
printHtmlPart(19)
})
invokeTag('ifLoggedIn','sec',64,[:],1)
printHtmlPart(20)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1527940284805L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
