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
})
invokeTag('captureHead','sitemesh',4,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_small.png'))
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
createTagBody(3, {->
printHtmlPart(7)
if(true && (emailSent)) {
printHtmlPart(8)
invokeTag('message','g',30,['code':("spring.security.ui.forgotPassword.sent")],-1)
printHtmlPart(7)
}
else {
printHtmlPart(9)
invokeTag('message','g',36,['code':("spring.security.ui.forgotPassword.description")],-1)
printHtmlPart(10)
createClosureForHtmlPart(11, 5)
invokeTag('link','g',57,['controller':("register"),'action':("register")],5)
printHtmlPart(12)
createClosureForHtmlPart(13, 5)
invokeTag('link','g',60,['controller':("login"),'action':("auth")],5)
printHtmlPart(14)
}
printHtmlPart(6)
})
invokeTag('form','s2ui',62,['beanName':("forgotPasswordCommand")],3)
printHtmlPart(15)
})
invokeTag('formContainer','s2ui',63,['type':("forgotPassword"),'focus':("username"),'width':("100%")],2)
printHtmlPart(16)
})
invokeTag('captureBody','sitemesh',64,[:],1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1527442772403L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
