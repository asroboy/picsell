import com.picsell.security.Role
import  com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homesubscribe_summary_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/subscribe_summary.gsp" }
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
printHtmlPart(2)
invokeTag('set','g',17,['var':("userAccounts"),'value':(com.picsell.data.UserAccount.findAllByUser(userObject))],-1)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',19,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(6)
expressionOut.print(resource(dir: 'images', file: 'ic_camera.jpg'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'images', file: 'ic_search.jpg'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'images', file: 'ic_document.jpg'))
printHtmlPart(8)
expressionOut.print(resource(dir: 'images', file: 'ic_images.jpg'))
printHtmlPart(9)
expressionOut.print(createLink(controller: 'api', action: 'get_account'))
printHtmlPart(10)
expressionOut.print(params.package_id)
printHtmlPart(11)
expressionOut.print(createLink(controller: 'api', action: 'save_user_pack_acc'))
printHtmlPart(12)
expressionOut.print(params.package_id)
printHtmlPart(13)
expressionOut.print(params.user_id)
printHtmlPart(14)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(15)
})
invokeTag('captureBody','sitemesh',306,[:],1)
printHtmlPart(16)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1527927841186L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
