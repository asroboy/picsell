import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userItem_formAddItem_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userItem/_formAddItem.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: itemInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("item.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'value':(itemInstance?.name),'class':("form-control"),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemInstance, field: 'description', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("item.description.label"),'default':("Description")],-1)
printHtmlPart(2)
invokeTag('textArea','g',19,['name':("description"),'cols':("40"),'rows':("5"),'maxlength':("1000"),'value':(itemInstance?.description),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemInstance, field: 'userOwner', 'error'))
printHtmlPart(5)
invokeTag('message','g',27,['code':("item.userOwner.label"),'default':("User Owner")],-1)
printHtmlPart(6)
invokeTag('textField','g',30,['name':("userOwner.id"),'value':(sec.loggedInUserInfo(field: 'id')),'class':("form-control")],-1)
printHtmlPart(7)
expressionOut.print(hasErrors(bean: itemInstance, field: 'mediaType', 'error'))
printHtmlPart(8)
invokeTag('message','g',31,['code':("item.mediaType.label"),'default':("Media Type")],-1)
printHtmlPart(2)
invokeTag('select','g',40,['name':("mediaType"),'from':(com.picsell.data.MediaType.list()),'optionKey':("id"),'optionValue':("name"),'value':(itemInstance?.mediaType?.id),'noSelection':(['': '']),'class':("form-control"),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemInstance, field: 'category', 'error'))
printHtmlPart(8)
invokeTag('message','g',46,['code':("item.category.label"),'default':("Category")],-1)
printHtmlPart(2)
invokeTag('select','g',51,['name':("category"),'from':(com.picsell.data.Category.list()),'optionKey':("id"),'optionValue':("name"),'value':(itemInstance?.category?.id),'noSelection':(['': '']),'class':("form-control"),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemInstance, field: 'category', 'error'))
printHtmlPart(9)
invokeTag('message','g',58,['code':("item.tags.label"),'default':("Tags - (Separate with comma, maximum allowed 7 tags)")],-1)
printHtmlPart(10)
invokeTag('textField','g',61,['name':("tags"),'value':(fieldValue(bean: itemInstance, field: 'tags')),'class':("form-control")],-1)
printHtmlPart(11)
expressionOut.print(hasErrors(bean: itemInstance, field: 'price', 'error'))
printHtmlPart(12)
invokeTag('message','g',67,['code':("item.price.label"),'default':("Price")],-1)
printHtmlPart(13)
invokeTag('select','g',74,['name':("currency"),'from':(itemInstance.constraints.currency.inList),'value':(itemInstance?.currency),'valueMessagePrefix':("item.currency"),'noSelection':(['': '']),'class':("form-control")],-1)
printHtmlPart(14)
invokeTag('textField','g',77,['name':("price"),'value':(fieldValue(bean: itemInstance, field: 'price')),'required':(""),'class':("form-control")],-1)
printHtmlPart(15)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542682988353L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
