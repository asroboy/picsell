import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userItemaddItem_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userItem/addItem.gsp" }
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
invokeTag('message','g',38,['error':(error)],-1)
printHtmlPart(14)
})
invokeTag('eachError','g',39,['bean':(mItemInstance),'var':("error")],3)
printHtmlPart(15)
})
invokeTag('hasErrors','g',43,['bean':(mItemInstance)],2)
printHtmlPart(16)
createTagBody(2, {->
printHtmlPart(17)
invokeTag('render','g',51,['template':("formAddImageItem")],-1)
printHtmlPart(18)
invokeTag('render','g',61,['template':("formAddItem")],-1)
printHtmlPart(19)
invokeTag('submitButton','g',65,['name':("create"),'class':("save btn btn-sm btn-danger"),'value':(message(code: 'default.button.submit_now.label', default: 'Submit now'))],-1)
printHtmlPart(20)
expressionOut.print(createLink(action: 'index'))
printHtmlPart(21)
})
invokeTag('uploadForm','g',67,['url':([action: 'mSaveItem'])],2)
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',197,[:],1)
printHtmlPart(23)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534956782917L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
