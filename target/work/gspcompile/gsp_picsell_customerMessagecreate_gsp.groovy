import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_customerMessagecreate_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/customerMessage/create.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_sbadmin_gh")],-1)
printHtmlPart(1)
invokeTag('set','g',5,['var':("entityName"),'value':(message(code: 'customerMessage.label', default: 'CustomerMessage'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',6,['code':("default.create.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',7,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',13,['code':("default.create.label"),'args':([entityName])],-1)
printHtmlPart(5)
if(true && (flash.message)) {
printHtmlPart(6)
expressionOut.print(flash.message)
printHtmlPart(7)
}
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
createTagBody(3, {->
printHtmlPart(10)
if(true && (error in org.springframework.validation.FieldError)) {
printHtmlPart(11)
expressionOut.print(error.field)
printHtmlPart(12)
}
printHtmlPart(13)
invokeTag('message','g',27,['error':(error)],-1)
printHtmlPart(14)
})
invokeTag('eachError','g',28,['bean':(customerMessageInstance),'var':("error")],3)
printHtmlPart(15)
})
invokeTag('hasErrors','g',30,['bean':(customerMessageInstance)],2)
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(16)
invokeTag('render','g',33,['template':("form")],-1)
printHtmlPart(17)
invokeTag('submitButton','g',37,['name':("create"),'class':("save btn btn-info"),'value':(message(code: 'default.button.create.label', default: 'Create'))],-1)
printHtmlPart(18)
})
invokeTag('form','g',39,['url':([resource: customerMessageInstance, action: 'save'])],2)
printHtmlPart(19)
})
invokeTag('captureBody','sitemesh',43,[:],1)
printHtmlPart(20)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537750336962L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
