import com.picsell.data.Item
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_item_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/item/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: itemInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("item.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'value':(itemInstance?.name),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemInstance, field: 'description', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("item.description.label"),'default':("Description")],-1)
printHtmlPart(2)
invokeTag('textArea','g',19,['name':("description"),'cols':("40"),'rows':("5"),'maxlength':("1000"),'value':(itemInstance?.description),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemInstance, field: 'userOwner', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("item.userOwner.label"),'default':("User Owner")],-1)
printHtmlPart(6)
invokeTag('select','g',28,['id':("userOwner"),'name':("userOwner.id"),'from':(com.picsell.security.User.list()),'optionKey':("id"),'required':(""),'value':(itemInstance?.userOwner?.id),'class':("many-to-one form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemInstance, field: 'currency', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("item.currency.label"),'default':("Currency")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['name':("currency"),'from':(itemInstance.constraints.currency.inList),'value':(itemInstance?.currency),'valueMessagePrefix':("item.currency"),'noSelection':(['': '']),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemInstance, field: 'price', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("item.price.label"),'default':("Price")],-1)
printHtmlPart(6)
invokeTag('field','g',46,['name':("price"),'value':(fieldValue(bean: itemInstance, field: 'price')),'required':(""),'class':("form-control")],-1)
printHtmlPart(9)
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
