import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_registerforgotPassword_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/register/forgotPassword.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',3,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("login")],-1)
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
createTagBody(2, {->
printHtmlPart(7)
createTagBody(3, {->
printHtmlPart(8)
if(true && (emailSent)) {
printHtmlPart(9)
invokeTag('message','g',34,['code':("spring.security.ui.forgotPassword.sent")],-1)
printHtmlPart(10)
}
else {
printHtmlPart(11)
createClosureForHtmlPart(12, 5)
invokeTag('link','g',61,['controller':("register"),'action':("register")],5)
printHtmlPart(13)
createClosureForHtmlPart(14, 5)
invokeTag('link','g',65,['controller':("login"),'action':("auth")],5)
printHtmlPart(15)
}
printHtmlPart(7)
})
invokeTag('form','s2ui',68,['beanName':("forgotPasswordCommand")],3)
printHtmlPart(16)
})
invokeTag('formContainer','s2ui',68,['type':("forgotPassword"),'focus':("username"),'width':("100%")],2)
printHtmlPart(17)
})
invokeTag('captureBody','sitemesh',70,[:],1)
printHtmlPart(18)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542538502115L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
