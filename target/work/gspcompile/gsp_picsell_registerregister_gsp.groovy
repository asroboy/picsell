import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_registerregister_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/register/register.gsp" }
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
invokeTag('captureHead','sitemesh',5,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_small.png'))
printHtmlPart(5)
if(true && (emailSent)) {
}
else {
printHtmlPart(6)
}
printHtmlPart(7)
createTagBody(2, {->
printHtmlPart(8)
createTagBody(3, {->
printHtmlPart(9)
if(true && (emailSent)) {
printHtmlPart(10)
invokeTag('message','g',43,['code':("spring.security.ui.register.sent")],-1)
printHtmlPart(11)
expressionOut.print(createLink(controller: 'api', action: 'createProfile'))
printHtmlPart(12)
expressionOut.print(first_name)
printHtmlPart(13)
expressionOut.print(last_name)
printHtmlPart(14)
expressionOut.print(user_id)
printHtmlPart(15)
expressionOut.print(new java.util.Date().getTime())
printHtmlPart(16)
expressionOut.print(createLink(controller: 'api', action: 'setUserRole'))
printHtmlPart(17)
expressionOut.print(user_id)
printHtmlPart(18)
expressionOut.print(role)
printHtmlPart(19)
expressionOut.print(activateUrl)
printHtmlPart(20)
}
else {
printHtmlPart(21)
expressionOut.print(registerCommand?.firstName)
printHtmlPart(22)
expressionOut.print(registerCommand?.lastName)
printHtmlPart(23)
invokeTag('textFieldRow','s2ui',138,['name':("username"),'size':("40"),'labelCodeDefault':("Username"),'class':("form-control"),'required':("")],-1)
printHtmlPart(24)
invokeTag('textFieldRow','s2ui',148,['name':("email"),'size':("40"),'labelCodeDefault':("E-mail"),'class':("form-control"),'required':("")],-1)
printHtmlPart(25)
invokeTag('passwordFieldRow','s2ui',161,['name':("password"),'size':("40"),'labelCodeDefault':("Password"),'class':("form-control"),'required':("")],-1)
printHtmlPart(26)
invokeTag('passwordFieldRow','s2ui',178,['name':("password2"),'size':("40"),'labelCodeDefault':("Re-confirm password"),'class':("form-control"),'required':("")],-1)
printHtmlPart(27)
expressionOut.print(createLink(controller: 'home', action: 'tos'))
printHtmlPart(28)
}
printHtmlPart(8)
})
invokeTag('form','s2ui',220,['beanName':("registerCommand")],3)
printHtmlPart(7)
})
invokeTag('formContainer','s2ui',220,['type':("register"),'focus':("username"),'width':("100%")],2)
printHtmlPart(29)
if(true && (emailSent)) {
}
else {
printHtmlPart(30)
}
printHtmlPart(31)
})
invokeTag('captureBody','sitemesh',244,[:],1)
printHtmlPart(32)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537465925808L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
