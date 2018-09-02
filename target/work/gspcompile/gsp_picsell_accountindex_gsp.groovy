import com.picsell.config.Account
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_accountindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/account/index.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'account.label', default: 'Account'))],-1)
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
invokeTag('sortableColumn','g',30,['property':("name"),'title':(message(code: 'account.name.label', default: 'Name'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',32,['property':("type"),'title':(message(code: 'account.type.label', default: 'Type'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',34,['property':("lisence"),'title':(message(code: 'account.lisence.label', default: 'Lisence'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',36,['property':("inCurrency"),'title':(message(code: 'account.inCurrency.label', default: 'In Currency'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',38,['property':("info"),'title':(message(code: 'account.info.label', default: 'Info'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',40,['property':("allowMoreUser"),'title':(message(code: 'account.allowMoreUser.label', default: 'Allow More User'))],-1)
printHtmlPart(12)
loop:{
int i = 0
for( accountInstance in (accountInstanceList) ) {
printHtmlPart(13)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(14)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: accountInstance, field: "name"))
})
invokeTag('link','g',48,['action':("show"),'id':(accountInstance.id)],3)
printHtmlPart(15)
expressionOut.print(fieldValue(bean: accountInstance, field: "type"))
printHtmlPart(15)
expressionOut.print(fieldValue(bean: accountInstance, field: "lisence"))
printHtmlPart(15)
expressionOut.print(fieldValue(bean: accountInstance, field: "inCurrency"))
printHtmlPart(15)
expressionOut.print(fieldValue(bean: accountInstance, field: "info"))
printHtmlPart(15)
invokeTag('formatBoolean','g',58,['boolean':(accountInstance.allowMoreUser)],-1)
printHtmlPart(16)
i++
}
}
printHtmlPart(17)
invokeTag('paginate','g',65,['total':(accountInstanceCount ?: 0)],-1)
printHtmlPart(18)
})
invokeTag('captureBody','sitemesh',71,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1524965736000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
