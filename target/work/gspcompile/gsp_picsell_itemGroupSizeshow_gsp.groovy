import com.picsell.data.ItemGroupSize
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_itemGroupSizeshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/itemGroupSize/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'itemGroupSize.label', default: 'ItemGroupSize'))],-1)
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
if(true && (itemGroupSizeInstance?.groupLabel)) {
printHtmlPart(11)
invokeTag('message','g',35,['code':("itemGroupSize.groupLabel.label"),'default':("Group Label")],-1)
printHtmlPart(12)
invokeTag('fieldValue','g',39,['bean':(itemGroupSizeInstance),'field':("groupLabel")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (itemGroupSizeInstance?.maxSize)) {
printHtmlPart(15)
invokeTag('message','g',50,['code':("itemGroupSize.maxSize.label"),'default':("Max Size")],-1)
printHtmlPart(16)
invokeTag('fieldValue','g',55,['bean':(itemGroupSizeInstance),'field':("maxSize")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (itemGroupSizeInstance?.minSize)) {
printHtmlPart(17)
invokeTag('message','g',64,['code':("itemGroupSize.minSize.label"),'default':("Min Size")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',69,['bean':(itemGroupSizeInstance),'field':("minSize")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (itemGroupSizeInstance?.price)) {
printHtmlPart(19)
invokeTag('message','g',79,['code':("itemGroupSize.price.label"),'default':("Price")],-1)
printHtmlPart(20)
invokeTag('fieldValue','g',83,['bean':(itemGroupSizeInstance),'field':("price")],-1)
printHtmlPart(13)
}
printHtmlPart(21)
createTagBody(2, {->
printHtmlPart(22)
createTagBody(3, {->
invokeTag('message','g',101,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',101,['class':("edit btn btn-info"),'action':("edit"),'resource':(itemGroupSizeInstance)],3)
printHtmlPart(23)
invokeTag('actionSubmit','g',104,['class':("delete btn btn-info"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(24)
})
invokeTag('form','g',104,['url':([resource:itemGroupSizeInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(25)
})
invokeTag('captureBody','sitemesh',104,[:],1)
printHtmlPart(26)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534929850897L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
