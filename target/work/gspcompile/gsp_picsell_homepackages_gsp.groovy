import com.picsell.security.Role
import  com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homepackages_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/packages.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(2)
createTagBody(2, {->
invokeTag('captureTitle','sitemesh',11,[:],-1)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(3)
invokeTag('set','g',15,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(2)
invokeTag('set','g',16,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',17,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(6)
createClosureForHtmlPart(7, 2)
invokeTag('ifLoggedIn','sec',72,[:],2)
printHtmlPart(8)
createClosureForHtmlPart(9, 2)
invokeTag('ifNotLoggedIn','sec',77,[:],2)
printHtmlPart(10)
createClosureForHtmlPart(11, 2)
invokeTag('ifLoggedIn','sec',111,[:],2)
printHtmlPart(12)
createClosureForHtmlPart(13, 2)
invokeTag('ifNotLoggedIn','sec',116,[:],2)
printHtmlPart(14)
expressionOut.print(resource(dir: 'images', file: 'ic-email.png'))
printHtmlPart(15)
expressionOut.print(resource(dir: 'images', file: 'ic-live-chat.png'))
printHtmlPart(16)
expressionOut.print(resource(dir: 'images', file: 'ic-ask.png'))
printHtmlPart(17)
expressionOut.print(resource(dir: 'images', file: 'bg-more-1.jpg'))
printHtmlPart(18)
expressionOut.print(resource(dir: 'images', file: 'ic-email.png'))
printHtmlPart(19)
expressionOut.print(resource(dir: 'images', file: 'ic-live-chat.png'))
printHtmlPart(20)
expressionOut.print(resource(dir: 'images', file: 'ic-ask.png'))
printHtmlPart(21)
expressionOut.print(createLink(controller: 'api', action: 'get_subs_account'))
printHtmlPart(22)
expressionOut.print(createLink(controller: 'api', action: 'get_subs_account'))
printHtmlPart(23)
expressionOut.print(createLink(controller: 'home', action: 'subscribe_summary'))
printHtmlPart(24)
expressionOut.print(userObject?.id)
printHtmlPart(25)
expressionOut.print(createLink(controller: 'register', action: 'register'))
printHtmlPart(26)
})
invokeTag('captureBody','sitemesh',311,[:],1)
printHtmlPart(27)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533973731441L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
