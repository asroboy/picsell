import com.picsell.support.CustomerMessage
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_customerMessageshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/customerMessage/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'customerMessage.label', default: 'CustomerMessage'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
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
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
invokeTag('message','g',23,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',23,['class':("create btn btn-info"),'action':("create")],2)
printHtmlPart(7)
if(true && (flash.message)) {
printHtmlPart(8)
expressionOut.print(flash.message)
printHtmlPart(9)
}
printHtmlPart(10)
if(true && (customerMessageInstance?.fullName)) {
printHtmlPart(11)
invokeTag('message','g',35,['code':("customerMessage.fullName.label"),'default':("Full Name")],-1)
printHtmlPart(12)
invokeTag('fieldValue','g',39,['bean':(customerMessageInstance),'field':("fullName")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (customerMessageInstance?.email)) {
printHtmlPart(15)
invokeTag('message','g',50,['code':("customerMessage.email.label"),'default':("Email")],-1)
printHtmlPart(16)
invokeTag('fieldValue','g',54,['bean':(customerMessageInstance),'field':("email")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (customerMessageInstance?.message)) {
printHtmlPart(17)
invokeTag('message','g',64,['code':("customerMessage.message.label"),'default':("Message")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',69,['bean':(customerMessageInstance),'field':("message")],-1)
printHtmlPart(13)
}
printHtmlPart(19)
createTagBody(2, {->
printHtmlPart(20)
createTagBody(3, {->
invokeTag('message','g',85,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',85,['class':("edit btn btn-info"),'action':("edit"),'resource':(customerMessageInstance)],3)
printHtmlPart(21)
invokeTag('actionSubmit','g',88,['class':("delete btn btn-info"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(22)
})
invokeTag('form','g',88,['url':([resource:customerMessageInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',88,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537720519231L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
