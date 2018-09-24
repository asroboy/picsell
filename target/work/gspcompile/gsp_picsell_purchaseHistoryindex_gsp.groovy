import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_purchaseHistoryindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/purchaseHistory/index.gsp" }
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
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(4)
invokeTag('set','g',29,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userInstance))],-1)
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
}
printHtmlPart(25)
i++
}
}
printHtmlPart(26)
for( purchasedItem in (userPuchaseItems) ) {
printHtmlPart(27)
expressionOut.print(purchasedItem?.imageFile?.tableId)
printHtmlPart(28)
expressionOut.print(purchasedItem?.imageFile?.id)
printHtmlPart(29)
invokeTag('formatDate','g',133,['format':("yyyy-MM-dd"),'date':(purchasedItem?.purchaseDate)],-1)
printHtmlPart(29)
expressionOut.print(purchasedItem?.totalAmount)
printHtmlPart(30)
if(true && (purchasedItem?.linkClicked > 0)) {
printHtmlPart(31)
}
else if(true && (purchasedItem?.tokenExpired?.after(new Date()))) {
printHtmlPart(32)
}
else {
printHtmlPart(33)
}
printHtmlPart(34)
}
printHtmlPart(35)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(36)
})
invokeTag('captureBody','sitemesh',168,[:],1)
printHtmlPart(37)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535255430257L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
