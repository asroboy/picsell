import com.picsell.data.FileItem
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_fileItem_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/fileItem/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: fileItemInstance, field: 'file', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("fileItem.file.label"),'default':("File")],-1)
printHtmlPart(2)
expressionOut.print(hasErrors(bean: fileItemInstance, field: 'fileName', 'error'))
printHtmlPart(3)
invokeTag('message','g',16,['code':("fileItem.fileName.label"),'default':("File Name")],-1)
printHtmlPart(4)
invokeTag('textField','g',19,['name':("fileName"),'value':(fileItemInstance?.fileName),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: fileItemInstance, field: 'formatExtention', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("fileItem.formatExtention.label"),'default':("Format Extention")],-1)
printHtmlPart(4)
invokeTag('textField','g',28,['name':("formatExtention"),'value':(fileItemInstance?.formatExtention),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: fileItemInstance, field: 'contentType', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("fileItem.contentType.label"),'default':("Content Type")],-1)
printHtmlPart(4)
invokeTag('textField','g',37,['name':("contentType"),'value':(fileItemInstance?.contentType),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: fileItemInstance, field: 'item', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("fileItem.item.label"),'default':("Item")],-1)
printHtmlPart(9)
invokeTag('select','g',46,['id':("item"),'name':("item.id"),'from':(com.picsell.data.Item.list()),'optionKey':("id"),'required':(""),'value':(fileItemInstance?.item?.id),'class':("many-to-one form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: fileItemInstance, field: 'fileSize', 'error'))
printHtmlPart(10)
invokeTag('message','g',52,['code':("fileItem.fileSize.label"),'default':("File Size")],-1)
printHtmlPart(9)
invokeTag('field','g',55,['name':("fileSize"),'value':(fieldValue(bean: fileItemInstance, field: 'fileSize')),'required':(""),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: fileItemInstance, field: 'sizeX', 'error'))
printHtmlPart(11)
invokeTag('message','g',61,['code':("fileItem.sizeX.label"),'default':("Size X")],-1)
printHtmlPart(9)
invokeTag('field','g',64,['name':("sizeX"),'value':(fieldValue(bean: fileItemInstance, field: 'sizeX')),'required':(""),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: fileItemInstance, field: 'sizeY', 'error'))
printHtmlPart(12)
invokeTag('message','g',70,['code':("fileItem.sizeY.label"),'default':("Size Y")],-1)
printHtmlPart(9)
invokeTag('field','g',73,['name':("sizeY"),'value':(fieldValue(bean: fileItemInstance, field: 'sizeY')),'required':(""),'class':("form-control")],-1)
printHtmlPart(13)
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
