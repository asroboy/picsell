import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_dashboarduser_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/user.gsp" }
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
invokeTag('set','g',32,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',32,[:],1)
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
expressionOut.print(createLink(action: 'upgrade_to_cotributor'))
printHtmlPart(13)
invokeTag('set','g',108,['var':("profilePicture"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId("User", userObject?.id))],-1)
printHtmlPart(14)
if(true && (profilePicture)) {
printHtmlPart(15)
expressionOut.print(createLink(controller: 'image', action: 'download', id: profilePicture?.id))
printHtmlPart(16)
}
else {
printHtmlPart(15)
expressionOut.print(resource(dir: 'images', file: 'profile_dmy.png'))
printHtmlPart(16)
}
printHtmlPart(17)
invokeTag('set','g',137,['var':("profile"),'value':(com.picsell.data.ProfileUser.findByUser(userObject))],-1)
printHtmlPart(18)
expressionOut.print(userObject?.id)
printHtmlPart(19)
expressionOut.print(userObject?.username)
printHtmlPart(20)
expressionOut.print(userObject?.email)
printHtmlPart(21)
expressionOut.print(userObject?.firstName)
printHtmlPart(22)
expressionOut.print(userObject?.lastName)
printHtmlPart(23)
expressionOut.print((userObject?.alamat ?: "") + " " + (userObject?.kotaKabupaten ?: "") + " " + (userObject?.provinsi ?: ""))
printHtmlPart(24)
invokeTag('render','g',192,['template':("change_password_modal")],-1)
printHtmlPart(6)
invokeTag('render','g',193,['template':("warning_modal")],-1)
printHtmlPart(6)
invokeTag('render','g',193,['template':("update_profile_modal")],-1)
printHtmlPart(6)
invokeTag('render','g',195,['template':("change_profile_picture_modal")],-1)
printHtmlPart(25)
expressionOut.print(createLink(controller: 'home', action:'changePassword', id: userObject?.id))
printHtmlPart(26)
})
invokeTag('captureBody','sitemesh',231,[:],1)
printHtmlPart(27)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542539831943L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
