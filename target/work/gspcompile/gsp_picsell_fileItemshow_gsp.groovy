import com.picsell.data.FileItem
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_fileItemshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/fileItem/show.gsp" }
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
if(true && (fileItemInstance?.file)) {
printHtmlPart(11)
invokeTag('message','g',35,['code':("fileItem.file.label"),'default':("File")],-1)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (fileItemInstance?.fileName)) {
printHtmlPart(14)
invokeTag('message','g',48,['code':("fileItem.fileName.label"),'default':("File Name")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',53,['bean':(fileItemInstance),'field':("fileName")],-1)
printHtmlPart(16)
}
printHtmlPart(13)
if(true && (fileItemInstance?.formatExtention)) {
printHtmlPart(17)
invokeTag('message','g',64,['code':("fileItem.formatExtention.label"),'default':("Format Extention")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',67,['bean':(fileItemInstance),'field':("formatExtention")],-1)
printHtmlPart(16)
}
printHtmlPart(13)
if(true && (fileItemInstance?.contentType)) {
printHtmlPart(19)
invokeTag('message','g',77,['code':("fileItem.contentType.label"),'default':("Content Type")],-1)
printHtmlPart(20)
invokeTag('fieldValue','g',82,['bean':(fileItemInstance),'field':("contentType")],-1)
printHtmlPart(16)
}
printHtmlPart(13)
if(true && (fileItemInstance?.item)) {
printHtmlPart(21)
invokeTag('message','g',89,['code':("fileItem.item.label"),'default':("Item")],-1)
printHtmlPart(22)
createTagBody(3, {->
expressionOut.print(fileItemInstance?.item?.encodeAsHTML())
})
invokeTag('link','g',98,['controller':("item"),'action':("show"),'id':(fileItemInstance?.item?.id)],3)
printHtmlPart(16)
}
printHtmlPart(13)
if(true && (fileItemInstance?.fileSize)) {
printHtmlPart(23)
invokeTag('message','g',103,['code':("fileItem.fileSize.label"),'default':("File Size")],-1)
printHtmlPart(24)
invokeTag('fieldValue','g',113,['bean':(fileItemInstance),'field':("fileSize")],-1)
printHtmlPart(16)
}
printHtmlPart(13)
if(true && (fileItemInstance?.sizeX)) {
printHtmlPart(25)
invokeTag('message','g',117,['code':("fileItem.sizeX.label"),'default':("Size X")],-1)
printHtmlPart(26)
invokeTag('fieldValue','g',128,['bean':(fileItemInstance),'field':("sizeX")],-1)
printHtmlPart(16)
}
printHtmlPart(13)
if(true && (fileItemInstance?.sizeY)) {
printHtmlPart(27)
invokeTag('message','g',133,['code':("fileItem.sizeY.label"),'default':("Size Y")],-1)
printHtmlPart(28)
invokeTag('fieldValue','g',142,['bean':(fileItemInstance),'field':("sizeY")],-1)
printHtmlPart(16)
}
printHtmlPart(29)
createTagBody(2, {->
printHtmlPart(30)
createTagBody(3, {->
invokeTag('message','g',151,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',151,['class':("edit btn btn-info"),'action':("edit"),'resource':(fileItemInstance)],3)
printHtmlPart(31)
invokeTag('actionSubmit','g',164,['class':("delete btn btn-info"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(32)
})
invokeTag('form','g',165,['url':([resource:fileItemInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(33)
})
invokeTag('captureBody','sitemesh',165,[:],1)
printHtmlPart(34)
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
