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
invokeTag('captureHead','sitemesh',4,[:],1)
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
if(true && (flash.error)) {
printHtmlPart(10)
expressionOut.print(flash.error)
printHtmlPart(11)
}
printHtmlPart(9)
if(true && (emailSent)) {
printHtmlPart(12)
invokeTag('message','g',42,['code':("spring.security.ui.register.sent")],-1)
printHtmlPart(13)
expressionOut.print(createLink(controller: 'api', action: 'createProfile'))
printHtmlPart(14)
expressionOut.print(first_name)
printHtmlPart(15)
expressionOut.print(last_name)
printHtmlPart(16)
expressionOut.print(user_id)
printHtmlPart(17)
expressionOut.print(new java.util.Date().getTime())
printHtmlPart(18)
expressionOut.print(createLink(controller: 'api', action: 'setUserRole'))
printHtmlPart(19)
expressionOut.print(user_id)
printHtmlPart(20)
expressionOut.print(role)
printHtmlPart(21)
expressionOut.print(activateUrl)
printHtmlPart(22)
}
else {
printHtmlPart(23)
expressionOut.print(createLink(controller: 'home', action: 'tos'))
printHtmlPart(24)
}
printHtmlPart(8)
})
invokeTag('form','s2ui',198,['beanName':("registerCommand")],3)
printHtmlPart(7)
})
invokeTag('formContainer','s2ui',199,['type':("register"),'focus':("username"),'width':("100%")],2)
printHtmlPart(25)
if(true && (emailSent)) {
}
else {
printHtmlPart(26)
}
printHtmlPart(27)
})
invokeTag('captureBody','sitemesh',213,[:],1)
printHtmlPart(28)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535591216525L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
