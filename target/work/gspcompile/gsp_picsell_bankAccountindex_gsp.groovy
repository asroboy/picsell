import com.picsell.data.BankAccount
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_bankAccountindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/bankAccount/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_sbadmin_gh")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'bankAccount.label', default: 'BankAccount'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',13,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
invokeTag('message','g',20,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',20,['class':("create btn btn-info"),'action':("create")],2)
printHtmlPart(7)
if(true && (flash.message)) {
printHtmlPart(8)
expressionOut.print(flash.message)
printHtmlPart(9)
}
printHtmlPart(10)
invokeTag('sortableColumn','g',30,['property':("accountNo"),'title':(message(code: 'bankAccount.accountNo.label', default: 'Account No'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',32,['property':("accountName"),'title':(message(code: 'bankAccount.accountName.label', default: 'Account Name'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',34,['property':("bankName"),'title':(message(code: 'bankAccount.bankName.label', default: 'Bank Name'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',36,['property':("branchCode"),'title':(message(code: 'bankAccount.branchCode.label', default: 'Branch Code'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',38,['property':("bankCode"),'title':(message(code: 'bankAccount.bankCode.label', default: 'Bank Code'))],-1)
printHtmlPart(12)
invokeTag('message','g',40,['code':("bankAccount.user.label"),'default':("User")],-1)
printHtmlPart(13)
loop:{
int i = 0
for( bankAccountInstance in (bankAccountInstanceList) ) {
printHtmlPart(14)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: bankAccountInstance, field: "accountNo"))
})
invokeTag('link','g',48,['action':("show"),'id':(bankAccountInstance.id)],3)
printHtmlPart(16)
expressionOut.print(fieldValue(bean: bankAccountInstance, field: "accountName"))
printHtmlPart(16)
expressionOut.print(fieldValue(bean: bankAccountInstance, field: "bankName"))
printHtmlPart(16)
expressionOut.print(fieldValue(bean: bankAccountInstance, field: "branchCode"))
printHtmlPart(16)
expressionOut.print(fieldValue(bean: bankAccountInstance, field: "bankCode"))
printHtmlPart(16)
expressionOut.print(fieldValue(bean: bankAccountInstance, field: "user"))
printHtmlPart(17)
i++
}
}
printHtmlPart(18)
invokeTag('paginate','g',65,['total':(bankAccountInstanceCount ?: 0)],-1)
printHtmlPart(19)
})
invokeTag('captureBody','sitemesh',71,[:],1)
printHtmlPart(20)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534503010110L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
