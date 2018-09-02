import com.picsell.data.MediaType
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_mediaType_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/mediaType/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: mediaTypeInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("mediaType.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'value':(mediaTypeInstance?.name),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: mediaTypeInstance, field: 'parent', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("mediaType.parent.label"),'default':("Parent")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("parent"),'name':("parent.id"),'from':(com.picsell.data.MediaType.list()),'optionValue':("name"),'optionKey':("id"),'value':(mediaTypeInstance?.parent?.id),'class':("many-to-one form-control"),'noSelection':(['null': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: mediaTypeInstance, field: 'child', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("mediaType.child.label"),'default':("Child")],-1)
printHtmlPart(6)
for( c in (mediaTypeInstance?.child) ) {
printHtmlPart(7)
createTagBody(2, {->
expressionOut.print(c?.name)
})
invokeTag('link','g',31,['controller':("mediaType"),'action':("show"),'id':(c.id)],2)
printHtmlPart(8)
}
printHtmlPart(9)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'mediaType.label', default: 'MediaType')]))
})
invokeTag('link','g',34,['controller':("mediaType"),'action':("create"),'params':(['mediaType.id': mediaTypeInstance?.id])],1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1532056157317L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
