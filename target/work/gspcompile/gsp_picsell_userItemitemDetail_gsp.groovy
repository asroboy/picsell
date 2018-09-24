import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userItemitemDetail_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userItem/itemDetail.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(2)
createTagBody(2, {->
invokeTag('captureTitle','sitemesh',11,[:],-1)
})
invokeTag('wrapTitleTag','sitemesh',12,[:],2)
printHtmlPart(3)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',13,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(5)
expressionOut.print(itemInstance?.name)
printHtmlPart(6)
invokeTag('set','g',27,['var':("userItem"),'value':(itemInstance)],-1)
printHtmlPart(7)
createTagBody(2, {->
printHtmlPart(8)
invokeTag('render','g',32,['template':("formAddImageItem")],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
createTagBody(3, {->
printHtmlPart(13)
createTagBody(4, {->
printHtmlPart(14)
if(true && (error in org.springframework.validation.FieldError)) {
printHtmlPart(15)
expressionOut.print(error.field)
printHtmlPart(16)
}
printHtmlPart(17)
invokeTag('message','g',56,['error':(error)],-1)
printHtmlPart(18)
})
invokeTag('eachError','g',56,['bean':(itemInstance),'var':("error")],4)
printHtmlPart(19)
})
invokeTag('hasErrors','g',60,['bean':(itemInstance)],3)
printHtmlPart(20)
invokeTag('render','g',62,['template':("formAddItem")],-1)
printHtmlPart(21)
invokeTag('submitButton','g',73,['name':("updateItem"),'class':("update btn btn-sm btn-danger"),'value':(message(code: 'default.button.submit_now.label', default: 'Submit now'))],-1)
printHtmlPart(22)
expressionOut.print(createLink(action: 'index'))
printHtmlPart(23)
})
invokeTag('uploadForm','g',79,['url':(createLink(action: 'updateItem', id: itemInstance?.id))],2)
printHtmlPart(24)
})
invokeTag('captureBody','sitemesh',210,[:],1)
printHtmlPart(25)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534956591782L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
