import com.picsell.config.Account
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_account_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/account/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: accountInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("account.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'value':(accountInstance?.name),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'type', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("account.type.label"),'default':("Type")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['name':("type"),'from':(accountInstance.constraints.type.inList),'value':(accountInstance?.type),'valueMessagePrefix':("account.type"),'noSelection':(['': '']),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'lisence', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("account.lisence.label"),'default':("Lisence")],-1)
printHtmlPart(2)
invokeTag('select','g',28,['name':("lisence"),'from':(accountInstance.constraints.lisence.inList),'value':(accountInstance?.lisence),'valueMessagePrefix':("account.lisence"),'noSelection':(['': '']),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'inCurrency', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("account.inCurrency.label"),'default':("In Currency")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['name':("inCurrency"),'from':(accountInstance.constraints.inCurrency.inList),'value':(accountInstance?.inCurrency),'valueMessagePrefix':("account.inCurrency"),'noSelection':(['': '']),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'info', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("account.info.label"),'default':("Info")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("info"),'value':(accountInstance?.info),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'allowMoreUser', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("account.allowMoreUser.label"),'default':("Allow More User")],-1)
printHtmlPart(2)
invokeTag('checkBox','g',55,['name':("allowMoreUser"),'value':(accountInstance?.allowMoreUser),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'maxImages', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("account.maxImages.label"),'default':("Max Images")],-1)
printHtmlPart(10)
invokeTag('field','g',64,['name':("maxImages"),'type':("number"),'value':(accountInstance.maxImages),'required':(""),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'maxTeamUser', 'error'))
printHtmlPart(11)
invokeTag('message','g',70,['code':("account.maxTeamUser.label"),'default':("Max Team User")],-1)
printHtmlPart(10)
invokeTag('field','g',73,['name':("maxTeamUser"),'type':("number"),'value':(accountInstance.maxTeamUser),'required':(""),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'price', 'error'))
printHtmlPart(12)
invokeTag('message','g',79,['code':("account.price.label"),'default':("Price")],-1)
printHtmlPart(10)
invokeTag('field','g',82,['name':("price"),'type':("number"),'value':(accountInstance.price),'required':(""),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: accountInstance, field: 'unlimitedImages', 'error'))
printHtmlPart(13)
invokeTag('message','g',88,['code':("account.unlimitedImages.label"),'default':("Unlimited Images")],-1)
printHtmlPart(2)
invokeTag('checkBox','g',91,['name':("unlimitedImages"),'value':(accountInstance?.unlimitedImages),'class':("form-control")],-1)
printHtmlPart(14)
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
