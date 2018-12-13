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
expressionOut.print(resource(dir: 'images', file: 'bg-plans.jpg'))
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',33,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(7)
createClosureForHtmlPart(8, 2)
invokeTag('ifLoggedIn','sec',114,[:],2)
printHtmlPart(9)
createClosureForHtmlPart(10, 2)
invokeTag('ifNotLoggedIn','sec',123,[:],2)
printHtmlPart(11)
createClosureForHtmlPart(12, 2)
invokeTag('ifLoggedIn','sec',178,[:],2)
printHtmlPart(9)
createClosureForHtmlPart(10, 2)
invokeTag('ifNotLoggedIn','sec',189,[:],2)
printHtmlPart(13)
expressionOut.print(resource(dir: 'images', file: 'ic-email.png'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'images', file: 'ic-live-chat.png'))
printHtmlPart(15)
expressionOut.print(createLink(controller: 'home', action: 'faq'))
printHtmlPart(16)
expressionOut.print(resource(dir: 'images', file: 'ic-ask.png'))
printHtmlPart(17)
expressionOut.print(createLink(controller: 'home', action: 'contactUs'))
printHtmlPart(18)
expressionOut.print(resource(dir: 'images', file: 'bg-more-1.jpg'))
printHtmlPart(19)
expressionOut.print(resource(dir: 'images', file: 'ic-email.png'))
printHtmlPart(20)
expressionOut.print(resource(dir: 'images', file: 'ic-live-chat.png'))
printHtmlPart(21)
expressionOut.print(resource(dir: 'images', file: 'ic-ask.png'))
printHtmlPart(22)
expressionOut.print(createLink(controller: 'home', action: 'faq'))
printHtmlPart(23)
expressionOut.print(createLink(controller: 'api', action: 'get_subs_account'))
printHtmlPart(24)
expressionOut.print(createLink(controller: 'api', action: 'get_subs_account'))
printHtmlPart(25)
expressionOut.print(createLink(controller: 'home', action: 'subscribe_summary'))
printHtmlPart(26)
expressionOut.print(userObject?.id)
printHtmlPart(27)
expressionOut.print(createLink(controller: 'register', action: 'register'))
printHtmlPart(28)
})
invokeTag('captureBody','sitemesh',511,[:],1)
printHtmlPart(29)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542707517323L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
