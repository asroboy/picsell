import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_registerregister_bk_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/register/register.bk.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("login")],-1)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',4,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
if(true && (emailSent)) {
}
else {
printHtmlPart(5)
}
printHtmlPart(6)
createTagBody(2, {->
printHtmlPart(7)
createTagBody(3, {->
printHtmlPart(8)
if(true && (emailSent)) {
printHtmlPart(9)
invokeTag('message','g',19,['code':("spring.security.ui.register.sent")],-1)
printHtmlPart(10)
expressionOut.print(activateUrl)
printHtmlPart(11)
expressionOut.print(activateUrl)
printHtmlPart(12)
}
else {
printHtmlPart(13)
invokeTag('textFieldRow','s2ui',32,['name':("username"),'size':("40"),'labelCodeDefault':("Username"),'class':("form-control")],-1)
printHtmlPart(14)
invokeTag('textFieldRow','s2ui',38,['name':("email"),'size':("40"),'labelCodeDefault':("E-mail"),'class':("form-control")],-1)
printHtmlPart(15)
invokeTag('checkboxRow','s2ui',44,['name':("accountLocked"),'checked':("false"),'size':("40"),'labelCodeDefault':("accountLocked"),'class':("form-control")],-1)
printHtmlPart(14)
invokeTag('passwordFieldRow','s2ui',48,['name':("password"),'size':("40"),'labelCodeDefault':("Password"),'class':("form-control")],-1)
printHtmlPart(14)
invokeTag('passwordFieldRow','s2ui',53,['name':("password2"),'size':("40"),'labelCodeDefault':("Password (again)"),'class':("form-control")],-1)
printHtmlPart(16)
expressionOut.print(createLink(controller: 'login', action: 'auth'))
printHtmlPart(17)
}
printHtmlPart(18)
})
invokeTag('form','s2ui',63,['beanName':("registerCommand")],3)
printHtmlPart(19)
})
invokeTag('formContainer','s2ui',63,['type':("register"),'focus':("username"),'width':("100%")],2)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',63,[:],1)
printHtmlPart(21)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1526816727675L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
