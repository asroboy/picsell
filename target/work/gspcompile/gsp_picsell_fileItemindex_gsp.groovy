import com.picsell.data.FileItem
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_fileItemindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/fileItem/index.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'fileItem.label', default: 'FileItem'))],-1)
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
invokeTag('sortableColumn','g',30,['property':("file"),'title':(message(code: 'fileItem.file.label', default: 'File'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',32,['property':("fileName"),'title':(message(code: 'fileItem.fileName.label', default: 'File Name'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',34,['property':("formatExtention"),'title':(message(code: 'fileItem.formatExtention.label', default: 'Format Extention'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',36,['property':("contentType"),'title':(message(code: 'fileItem.contentType.label', default: 'Content Type'))],-1)
printHtmlPart(12)
invokeTag('message','g',38,['code':("fileItem.item.label"),'default':("Item")],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',40,['property':("fileSize"),'title':(message(code: 'fileItem.fileSize.label', default: 'File Size'))],-1)
printHtmlPart(14)
loop:{
int i = 0
for( fileItemInstance in (fileItemInstanceList) ) {
printHtmlPart(15)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(16)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: fileItemInstance, field: "file"))
})
invokeTag('link','g',48,['action':("show"),'id':(fileItemInstance.id)],3)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: fileItemInstance, field: "fileName"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: fileItemInstance, field: "formatExtention"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: fileItemInstance, field: "contentType"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: fileItemInstance, field: "item"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: fileItemInstance, field: "fileSize"))
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
invokeTag('paginate','g',65,['total':(fileItemInstanceCount ?: 0)],-1)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',71,[:],1)
printHtmlPart(21)
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
