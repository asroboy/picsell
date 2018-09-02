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
invokeTag('set','g',17,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',17,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(7)
expressionOut.print(createLink(controller: 'purchaseHistory', action: 'index', id: userObject?.id))
printHtmlPart(8)
invokeTag('set','g',71,['var':("profilePicture"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId("ProfileUser", profileUserInstance?.id))],-1)
printHtmlPart(9)
if(true && (profilePicture)) {
printHtmlPart(10)
expressionOut.print(createLink(controller: 'image', action: 'download', id: profilePicture?.id))
printHtmlPart(11)
}
else {
printHtmlPart(10)
expressionOut.print(resource(dir: 'images', file: 'profile_dmy.png'))
printHtmlPart(11)
}
printHtmlPart(12)
invokeTag('set','g',91,['var':("profile"),'value':(com.picsell.data.ProfileUser.findByUser(userObject))],-1)
printHtmlPart(13)
expressionOut.print(userObject?.id)
printHtmlPart(14)
expressionOut.print(userObject?.username)
printHtmlPart(15)
expressionOut.print(userObject?.email)
printHtmlPart(16)
expressionOut.print(profile?.namaDepan)
printHtmlPart(17)
expressionOut.print(profile?.namaBelakang)
printHtmlPart(18)
expressionOut.print((profile?.alamat ?: "") + " " + (profile?.kotaKabupaten ?: "") + " " + (profile?.provinsi ?: ""))
printHtmlPart(19)
if(true && (profile)) {
printHtmlPart(20)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id: profile?.id))
printHtmlPart(21)
}
else {
printHtmlPart(20)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id]))
printHtmlPart(21)
}
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',149,[:],1)
printHtmlPart(23)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535251143805L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
