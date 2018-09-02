import com.picsell.data.BankAccount
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_bankAccount_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/bankAccount/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: bankAccountInstance, field: 'accountNo', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("bankAccount.accountNo.label"),'default':("Account No")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("accountNo"),'value':(bankAccountInstance?.accountNo),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bankAccountInstance, field: 'accountName', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("bankAccount.accountName.label"),'default':("Account Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("accountName"),'value':(bankAccountInstance?.accountName),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bankAccountInstance, field: 'bankName', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("bankAccount.bankName.label"),'default':("Bank Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("bankName"),'value':(bankAccountInstance?.bankName),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bankAccountInstance, field: 'branchCode', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("bankAccount.branchCode.label"),'default':("Branch Code")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("branchCode"),'value':(bankAccountInstance?.branchCode),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bankAccountInstance, field: 'bankCode', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("bankAccount.bankCode.label"),'default':("Bank Code")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("bankCode"),'value':(bankAccountInstance?.bankCode),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bankAccountInstance, field: 'user', 'error'))
printHtmlPart(8)
invokeTag('message','g',53,['code':("bankAccount.user.label"),'default':("User")],-1)
printHtmlPart(9)
invokeTag('textField','g',56,['id':("user"),'name':("user.id"),'value':(userObject?.id),'class':("form-control")],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534507991719L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
