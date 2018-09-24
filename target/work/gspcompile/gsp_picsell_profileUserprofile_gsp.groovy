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
invokeTag('set','g',29,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',29,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(6)
loop:{
int i = 0
for( role in (userRoles) ) {
printHtmlPart(7)
if(true && (role?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(8)
expressionOut.print(com.picsell.data.Item.countByUserOwner(profileUserInstance?.user))
printHtmlPart(9)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "approved"))
printHtmlPart(10)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "pending"))
printHtmlPart(11)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "rejected"))
printHtmlPart(12)
invokeTag('set','g',66,['var':("bankAccount"),'value':(com.picsell.data.BankAccount.findByUser(profileUserInstance?.user))],-1)
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
printHtmlPart(23)
expressionOut.print(createLink(controller: 'dashboard', action: 'admin'))
printHtmlPart(26)
}
printHtmlPart(27)
i++
}
}
printHtmlPart(28)
invokeTag('set','g',134,['var':("profilePicture"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId("ProfileUser", profileUserInstance?.id))],-1)
printHtmlPart(29)
if(true && (profilePicture)) {
printHtmlPart(30)
expressionOut.print(createLink(controller: 'image', action: 'download', id: profilePicture?.id))
printHtmlPart(31)
}
else {
printHtmlPart(30)
expressionOut.print(resource(dir: 'images', file: 'profile_dmy.png'))
printHtmlPart(31)
}
printHtmlPart(32)
if(true && (flash.message)) {
printHtmlPart(33)
expressionOut.print(flash.message)
printHtmlPart(34)
}
printHtmlPart(29)
createTagBody(2, {->
printHtmlPart(35)
createTagBody(3, {->
printHtmlPart(36)
if(true && (error in org.springframework.validation.FieldError)) {
printHtmlPart(37)
expressionOut.print(error.field)
printHtmlPart(38)
}
printHtmlPart(39)
invokeTag('message','g',165,['error':(error)],-1)
printHtmlPart(40)
})
invokeTag('eachError','g',166,['bean':(profileUserInstance),'var':("error")],3)
printHtmlPart(41)
})
invokeTag('hasErrors','g',166,['bean':(profileUserInstance)],2)
printHtmlPart(42)
if(true && (profileUserInstance.id)) {
printHtmlPart(43)
invokeTag('render','g',170,['template':("profile_info")],-1)
printHtmlPart(44)
invokeTag('render','g',173,['template':("edit_profile_info")],-1)
printHtmlPart(45)
}
else {
printHtmlPart(13)
invokeTag('render','g',177,['template':("add_profile_info")],-1)
printHtmlPart(29)
}
printHtmlPart(46)
createTagBody(2, {->
printHtmlPart(47)
expressionOut.print(hasErrors(bean: profilePicture, field: 'lampiran', 'error'))
printHtmlPart(48)
invokeTag('message','g',215,['code':("testFile.foto.label"),'default':("Pick a picture")],-1)
printHtmlPart(49)
invokeTag('submitButton','g',225,['name':("create"),'class':("save btn btn-block btn-outline-success"),'value':(message(code: 'default.button.save.label', default: 'Save'))],-1)
printHtmlPart(50)
})
invokeTag('form','g',227,['url':([resource: profileUserInstance, action: 'saveProfileImage']),'enctype':("multipart/form-data")],2)
printHtmlPart(51)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(52)
})
invokeTag('captureBody','sitemesh',251,[:],1)
printHtmlPart(53)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535255794492L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
