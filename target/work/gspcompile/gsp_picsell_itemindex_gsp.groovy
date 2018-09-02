import com.picsell.data.Item
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_itemindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/item/index.gsp" }
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
invokeTag('sortableColumn','g',30,['property':("name"),'title':(message(code: 'item.name.label', default: 'Name'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',32,['property':("description"),'title':(message(code: 'item.description.label', default: 'Description'))],-1)
printHtmlPart(12)
invokeTag('message','g',34,['code':("item.userOwner.label"),'default':("User Owner")],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',36,['property':("currency"),'title':(message(code: 'item.currency.label', default: 'Currency'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',38,['property':("price"),'title':(message(code: 'item.price.label', default: 'Price'))],-1)
printHtmlPart(14)
loop:{
int i = 0
for( itemInstance in (itemInstanceList) ) {
printHtmlPart(15)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(16)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: itemInstance, field: "name"))
})
invokeTag('link','g',46,['action':("show"),'id':(itemInstance.id)],3)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: itemInstance, field: "description"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: itemInstance, field: "userOwner"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: itemInstance, field: "currency"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: itemInstance, field: "price"))
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
invokeTag('paginate','g',61,['total':(itemInstanceCount ?: 0)],-1)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',67,[:],1)
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
