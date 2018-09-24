import com.picsell.data.UserPuchaseItem
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userPuchaseItem_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userPuchaseItem/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: userPuchaseItemInstance, field: 'user', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("userPuchaseItem.user.label"),'default':("User")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("user"),'name':("user.id"),'from':(com.picsell.security.User.list()),'optionKey':("id"),'required':(""),'value':(userPuchaseItemInstance?.user?.id),'class':("many-to-one form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userPuchaseItemInstance, field: 'imageFile', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("userPuchaseItem.imageFile.label"),'default':("Image File")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("imageFile"),'name':("imageFile.id"),'from':(com.picsell.data.ImageFile.list()),'optionKey':("id"),'required':(""),'value':(userPuchaseItemInstance?.imageFile?.id),'class':("many-to-one form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userPuchaseItemInstance, field: 'purchaseDate', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("userPuchaseItem.purchaseDate.label"),'default':("Purchase Date")],-1)
printHtmlPart(6)
invokeTag('datePicker','g',28,['name':("purchaseDate"),'precision':("day"),'value':(userPuchaseItemInstance?.purchaseDate),'default':("none"),'noSelection':(['': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userPuchaseItemInstance, field: 'paymentMethod', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("userPuchaseItem.paymentMethod.label"),'default':("Payment Method")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['id':("paymentMethod"),'name':("paymentMethod.id"),'from':(com.picsell.data.PaymentMethod.list()),'optionKey':("id"),'required':(""),'value':(userPuchaseItemInstance?.paymentMethod?.id),'class':("many-to-one form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userPuchaseItemInstance, field: 'purchasePrice', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("userPuchaseItem.purchasePrice.label"),'default':("Purchase Price")],-1)
printHtmlPart(2)
invokeTag('field','g',46,['name':("purchasePrice"),'type':("number"),'value':(userPuchaseItemInstance.purchasePrice),'required':(""),'class':("form-control")],-1)
printHtmlPart(9)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535130500024L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
