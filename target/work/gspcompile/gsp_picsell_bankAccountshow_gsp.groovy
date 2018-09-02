import com.picsell.data.BankAccount
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_bankAccountshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/bankAccount/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(1)
createTagBody(2, {->
invokeTag('captureTitle','sitemesh',6,[:],-1)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',22,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
expressionOut.print(com.picsell.data.Item.countByUserOwner(bankAccountInstance?.user))
printHtmlPart(6)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(bankAccountInstance?.user, "approved"))
printHtmlPart(7)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(bankAccountInstance?.user, "pending"))
printHtmlPart(8)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(bankAccountInstance?.user, "rejected"))
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (bankAccountInstance?.accountNo)) {
printHtmlPart(13)
invokeTag('message','g',76,['code':("bankAccount.accountNo.label"),'default':("Account No")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',80,['bean':(bankAccountInstance),'field':("accountNo")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (bankAccountInstance?.accountName)) {
printHtmlPart(17)
invokeTag('message','g',90,['code':("bankAccount.accountName.label"),'default':("Account Name")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',95,['bean':(bankAccountInstance),'field':("accountName")],-1)
printHtmlPart(19)
}
printHtmlPart(16)
if(true && (bankAccountInstance?.bankName)) {
printHtmlPart(20)
invokeTag('message','g',105,['code':("bankAccount.bankName.label"),'default':("Bank Name")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',110,['bean':(bankAccountInstance),'field':("bankName")],-1)
printHtmlPart(19)
}
printHtmlPart(16)
if(true && (bankAccountInstance?.branchCode)) {
printHtmlPart(22)
invokeTag('message','g',121,['code':("bankAccount.branchCode.label"),'default':("Branch Code")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',126,['bean':(bankAccountInstance),'field':("branchCode")],-1)
printHtmlPart(24)
}
printHtmlPart(16)
if(true && (bankAccountInstance?.bankCode)) {
printHtmlPart(25)
invokeTag('message','g',139,['code':("bankAccount.bankCode.label"),'default':("Bank Code")],-1)
printHtmlPart(26)
invokeTag('fieldValue','g',144,['bean':(bankAccountInstance),'field':("bankCode")],-1)
printHtmlPart(24)
}
printHtmlPart(27)
createTagBody(2, {->
printHtmlPart(28)
createClosureForHtmlPart(29, 3)
invokeTag('link','g',156,['class':("edit btn btn-sm btn-danger"),'action':("edit"),'resource':(bankAccountInstance)],3)
printHtmlPart(30)
})
invokeTag('form','g',157,['url':([resource: bankAccountInstance, action: 'delete']),'method':("DELETE")],2)
printHtmlPart(31)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(32)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id:bankAccountInstance?.user?.id ))
printHtmlPart(33)
expressionOut.print(createLink(controller: 'dashboard', action: 'contributor' ))
printHtmlPart(34)
})
invokeTag('captureBody','sitemesh',174,[:],1)
printHtmlPart(35)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534507368738L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
