import com.picsell.support.CustomerMessage
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_home_contact_us_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/_contact_us_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: customerMessageInstance, field: 'fullName', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("customerMessage.fullName.label"),'default':("Full Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("fullName"),'value':(customerMessageInstance?.fullName),'class':("form-control"),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customerMessageInstance, field: 'email', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("customerMessage.email.label"),'default':("Email")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("email"),'value':(customerMessageInstance?.email),'class':("form-control"),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customerMessageInstance, field: 'message', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("customerMessage.message.label"),'default':("Message")],-1)
printHtmlPart(6)
invokeTag('textArea','g',28,['name':("message"),'cols':("40"),'rows':("5"),'maxlength':("1000"),'required':(""),'value':(customerMessageInstance?.message),'class':("form-control")],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537722315476L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
