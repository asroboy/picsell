import com.picsell.data.MediaType
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_mediaTypeshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/mediaType/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'mediaType.label', default: 'MediaType'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',10,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
createClosureForHtmlPart(6, 2)
invokeTag('link','g',25,['class':("create btn btn-danger"),'action':("create")],2)
printHtmlPart(7)
createClosureForHtmlPart(8, 2)
invokeTag('link','g',26,['class':("create btn btn-danger"),'action':("index")],2)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (mediaTypeInstance?.name)) {
printHtmlPart(13)
invokeTag('message','g',39,['code':("mediaType.name.label"),'default':("Name")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',44,['bean':(mediaTypeInstance),'field':("name")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (mediaTypeInstance?.parent)) {
printHtmlPart(17)
invokeTag('message','g',56,['code':("mediaType.parent.label"),'default':("Parent")],-1)
printHtmlPart(18)
createTagBody(3, {->
expressionOut.print(mediaTypeInstance?.parent?.name)
})
invokeTag('link','g',63,['controller':("mediaType"),'action':("show"),'id':(mediaTypeInstance?.parent?.id)],3)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (mediaTypeInstance?.child)) {
printHtmlPart(19)
invokeTag('message','g',76,['code':("mediaType.child.label"),'default':("Child")],-1)
printHtmlPart(20)
for( c in (mediaTypeInstance.child) ) {
printHtmlPart(21)
createTagBody(4, {->
expressionOut.print(c?.name)
})
invokeTag('link','g',82,['controller':("mediaType"),'action':("show"),'id':(c.id)],4)
printHtmlPart(22)
}
printHtmlPart(23)
}
printHtmlPart(24)
createTagBody(2, {->
printHtmlPart(25)
createTagBody(3, {->
invokeTag('message','g',97,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',97,['class':("edit btn btn-danger"),'action':("edit"),'resource':(mediaTypeInstance)],3)
printHtmlPart(26)
invokeTag('actionSubmit','g',101,['class':("delete btn btn-danger"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(27)
})
invokeTag('form','g',102,['url':([resource: mediaTypeInstance, action: 'delete']),'method':("DELETE")],2)
printHtmlPart(28)
})
invokeTag('captureBody','sitemesh',102,[:],1)
printHtmlPart(29)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533747033619L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
