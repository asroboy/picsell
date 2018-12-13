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
printHtmlPart(3)
invokeTag('set','g',19,['var':("billingInfo"),'value':(com.picsell.data.BillingAddress.findByUser(userObject))],-1)
printHtmlPart(2)
invokeTag('set','g',20,['var':("paymentMethod"),'value':(com.picsell.data.PaymentMethod.findByUser(userObject))],-1)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',21,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(6)
if(true && (billingInfo)) {
printHtmlPart(7)
invokeTag('render','g',43,['template':("billing_info")],-1)
printHtmlPart(8)
invokeTag('render','g',46,['template':("update_billing_info_form")],-1)
printHtmlPart(9)
}
else {
printHtmlPart(10)
invokeTag('render','g',51,['template':("add_billing_info_form")],-1)
printHtmlPart(11)
}
printHtmlPart(12)
expressionOut.print(resource(dir: 'images', file: 'ic_camera.jpg'))
printHtmlPart(13)
expressionOut.print(resource(dir: 'images', file: 'ic_search.jpg'))
printHtmlPart(13)
expressionOut.print(resource(dir: 'images', file: 'ic_document.jpg'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'images', file: 'ic_images.jpg'))
printHtmlPart(15)
expressionOut.print(createLink(controller: 'api', action: 'get_account'))
printHtmlPart(16)
expressionOut.print(params.package_id)
printHtmlPart(17)
expressionOut.print(createLink(controller: 'api', action: 'save_user_pack_acc'))
printHtmlPart(18)
expressionOut.print(params.package_id)
printHtmlPart(19)
expressionOut.print(params.user_id)
printHtmlPart(20)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',274,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1538473613543L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
