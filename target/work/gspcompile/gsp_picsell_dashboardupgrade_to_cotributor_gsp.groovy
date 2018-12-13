import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_dashboardupgrade_to_cotributor_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/upgrade_to_cotributor.gsp" }
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
invokeTag('set','g',12,['var':("entityName"),'value':(message(code: 'termOfService.label', default: 'TermOfService'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',12,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',13,[:],2)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(5)
invokeTag('set','g',17,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',17,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(7)
expressionOut.print(createLink(controller: 'dashboard', action: 'user'))
printHtmlPart(8)
expressionOut.print(createLink(controller: 'dashboard', action: 'user_plans'))
printHtmlPart(9)
expressionOut.print(createLink(controller: 'dashboard', action: 'billing_info'))
printHtmlPart(10)
expressionOut.print(createLink(controller: 'purchaseHistory', action: 'index', id: userObject?.id))
printHtmlPart(11)
expressionOut.print(createLink(controller: 'dashboard', action: 'preferences'))
printHtmlPart(12)
expressionOut.print(createLink(controller: 'dashboard', action: 'upgrade_to_cotributor'))
printHtmlPart(13)
expressionOut.print(createLink(controller: 'home', action: 'tos'))
printHtmlPart(14)
expressionOut.print(createLink(controller: 'dashboard', action: 'upgrade_account', id: userObject?.id))
printHtmlPart(15)
expressionOut.print(createLink(controller: 'logout', action: 'index'))
printHtmlPart(16)
})
invokeTag('captureBody','sitemesh',170,[:],1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542541172875L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
