import com.picsell.data.Item
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_itemshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/item/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'item.label', default: 'Item'))],-1)
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
if(true && (itemInstance?.name)) {
printHtmlPart(11)
invokeTag('message','g',35,['code':("item.name.label"),'default':("Name")],-1)
printHtmlPart(12)
invokeTag('fieldValue','g',39,['bean':(itemInstance),'field':("name")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (itemInstance?.description)) {
printHtmlPart(15)
invokeTag('message','g',51,['code':("item.description.label"),'default':("Description")],-1)
printHtmlPart(16)
invokeTag('fieldValue','g',55,['bean':(itemInstance),'field':("description")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (itemInstance?.userOwner)) {
printHtmlPart(17)
invokeTag('message','g',64,['code':("item.userOwner.label"),'default':("User Owner")],-1)
printHtmlPart(18)
createTagBody(3, {->
expressionOut.print(itemInstance?.userOwner?.encodeAsHTML())
})
invokeTag('link','g',71,['controller':("user"),'action':("show"),'id':(itemInstance?.userOwner?.id)],3)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (itemInstance?.currency)) {
printHtmlPart(19)
invokeTag('message','g',79,['code':("item.currency.label"),'default':("Currency")],-1)
printHtmlPart(20)
invokeTag('fieldValue','g',84,['bean':(itemInstance),'field':("currency")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (itemInstance?.price)) {
printHtmlPart(21)
invokeTag('message','g',91,['code':("item.price.label"),'default':("Price")],-1)
printHtmlPart(22)
invokeTag('fieldValue','g',99,['bean':(itemInstance),'field':("price")],-1)
printHtmlPart(13)
}
printHtmlPart(23)
createTagBody(2, {->
printHtmlPart(24)
createTagBody(3, {->
invokeTag('message','g',115,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',115,['class':("edit btn btn-info"),'action':("edit"),'resource':(itemInstance)],3)
printHtmlPart(25)
invokeTag('actionSubmit','g',119,['class':("delete btn btn-info"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(26)
})
invokeTag('form','g',119,['url':([resource:itemInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(27)
})
invokeTag('captureBody','sitemesh',120,[:],1)
printHtmlPart(28)
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
