import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_profileUserprofile_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/profileUser/profile.gsp" }
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
invokeTag('wrapTitleTag','sitemesh',12,[:],2)
printHtmlPart(3)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(4)
invokeTag('set','g',31,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',31,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(6)
loop:{
int i = 0
for( role in (userRoles) ) {
printHtmlPart(7)
if(true && (role?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(8)
expressionOut.print(com.picsell.data.Item.countByUserOwner(userObject))
printHtmlPart(9)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "approved"))
printHtmlPart(10)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "pending"))
printHtmlPart(11)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "rejected"))
printHtmlPart(12)
invokeTag('set','g',66,['var':("bankAccount"),'value':(com.picsell.data.BankAccount.findByUser(userObject))],-1)
printHtmlPart(13)
if(true && (bankAccount)) {
printHtmlPart(14)
expressionOut.print(bankAccount?.accountNo)
printHtmlPart(15)
expressionOut.print(bankAccount?.accountName)
printHtmlPart(16)
expressionOut.print(bankAccount?.bankName)
printHtmlPart(17)
expressionOut.print(bankAccount?.bankCode)
printHtmlPart(18)
expressionOut.print(createLink(controller: 'bankAccount', action: 'show', id: bankAccount?.id))
printHtmlPart(19)
}
else {
printHtmlPart(20)
expressionOut.print(createLink(controller: 'bankAccount', action: 'create'))
printHtmlPart(21)
}
printHtmlPart(22)
}
printHtmlPart(7)
if(true && (role?.role?.authority.equals("ROLE_USER"))) {
printHtmlPart(23)
expressionOut.print(createLink(controller: 'dashboard', action: 'user'))
printHtmlPart(24)
expressionOut.print(createLink(controller: 'purchaseHistory', action: 'index', id: role?.user?.id))
printHtmlPart(25)
}
printHtmlPart(7)
if(true && (role?.role?.authority.equals("ROLE_ADMIN"))) {
printHtmlPart(26)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id: userObject?.id))
printHtmlPart(27)
expressionOut.print(createLink(controller: 'dashboard', action: 'admin'))
printHtmlPart(28)
expressionOut.print(createLink(controller: 'userItem', action: 'contributorItems'))
printHtmlPart(29)
expressionOut.print(createLink(controller: 'home', action: 'setting'))
printHtmlPart(30)
}
printHtmlPart(31)
i++
}
}
printHtmlPart(32)
invokeTag('set','g',147,['var':("profilePicture"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId("User", userObject?.id))],-1)
printHtmlPart(33)
if(true && (profilePicture)) {
printHtmlPart(34)
expressionOut.print(createLink(controller: 'image', action: 'download', id: profilePicture?.id))
printHtmlPart(35)
}
else {
printHtmlPart(34)
expressionOut.print(resource(dir: 'images', file: 'profile_dmy.png'))
printHtmlPart(35)
}
printHtmlPart(36)
if(true && (flash.message)) {
printHtmlPart(37)
expressionOut.print(flash.message)
printHtmlPart(38)
}
printHtmlPart(39)
invokeTag('render','g',177,['template':("profile_info")],-1)
printHtmlPart(40)
invokeTag('render','g',220,['template':("/dashboard/change_password_modal")],-1)
printHtmlPart(5)
invokeTag('render','g',221,['template':("/dashboard/update_profile_modal")],-1)
printHtmlPart(5)
invokeTag('render','g',222,['template':("change_profile_picture_model")],-1)
printHtmlPart(41)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(42)
})
invokeTag('captureBody','sitemesh',231,[:],1)
printHtmlPart(43)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542542378315L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
