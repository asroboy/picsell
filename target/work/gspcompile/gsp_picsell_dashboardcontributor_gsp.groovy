import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_dashboardcontributor_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/contributor.gsp" }
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
expressionOut.print(createLink(controller: 'dashboard', action: 'contributor_earnings', id: userObject?.id))
printHtmlPart(8)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(9)
expressionOut.print(com.picsell.data.Item.countByUserOwner(userObject))
printHtmlPart(10)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "approved"))
printHtmlPart(11)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "pending"))
printHtmlPart(12)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "rejected"))
printHtmlPart(13)
invokeTag('set','g',113,['var':("profilePicture"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId("ProfileUser", profileUserInstance?.id))],-1)
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
expressionOut.print(userObject?.username)
printHtmlPart(18)
})
invokeTag('captureBody','sitemesh',300,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535256443801L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
