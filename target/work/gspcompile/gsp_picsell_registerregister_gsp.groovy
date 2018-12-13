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
expressionOut.print(resource(dir: 'css', file: 'button_red.css'))
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',6,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_small.png'))
printHtmlPart(6)
if(true && (emailSent)) {
}
else {
printHtmlPart(7)
}
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
createTagBody(3, {->
printHtmlPart(10)
if(true && (emailSent)) {
printHtmlPart(11)
invokeTag('message','g',44,['code':("spring.security.ui.register.sent")],-1)
printHtmlPart(12)
expressionOut.print(createLink(controller: 'api', action: 'createProfile'))
printHtmlPart(13)
expressionOut.print(first_name)
printHtmlPart(14)
expressionOut.print(last_name)
printHtmlPart(15)
expressionOut.print(user_id)
printHtmlPart(16)
expressionOut.print(new java.util.Date().getTime())
printHtmlPart(17)
expressionOut.print(createLink(controller: 'api', action: 'setUserRole'))
printHtmlPart(18)
expressionOut.print(user_id)
printHtmlPart(19)
expressionOut.print(role)
printHtmlPart(20)
expressionOut.print(activateUrl)
printHtmlPart(21)
}
else {
printHtmlPart(22)
expressionOut.print(registerCommand?.firstName)
printHtmlPart(23)
expressionOut.print(registerCommand?.lastName)
printHtmlPart(24)
invokeTag('textFieldRow','s2ui',140,['name':("username"),'size':("40"),'labelCodeDefault':("Username"),'class':("form-control"),'required':("")],-1)
printHtmlPart(25)
invokeTag('textFieldRow','s2ui',151,['name':("email"),'size':("40"),'labelCodeDefault':("E-mail"),'class':("form-control"),'required':("")],-1)
printHtmlPart(26)
invokeTag('passwordFieldRow','s2ui',163,['name':("password"),'size':("40"),'labelCodeDefault':("Password"),'class':("form-control"),'required':("")],-1)
printHtmlPart(27)
invokeTag('passwordFieldRow','s2ui',180,['name':("password2"),'size':("40"),'labelCodeDefault':("Retype password&nbsp&nbsp&nbsp&nbsp"),'class':("form-control"),'required':("")],-1)
printHtmlPart(28)
expressionOut.print(createLink(controller: 'home', action: 'tos'))
printHtmlPart(29)
}
printHtmlPart(9)
})
invokeTag('form','s2ui',223,['beanName':("registerCommand")],3)
printHtmlPart(30)
})
invokeTag('formContainer','s2ui',223,['type':("register"),'focus':("username"),'width':("100%")],2)
printHtmlPart(31)
if(true && (emailSent)) {
}
else {
printHtmlPart(32)
}
printHtmlPart(33)
})
invokeTag('captureBody','sitemesh',245,[:],1)
printHtmlPart(34)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542538768552L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
