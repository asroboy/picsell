import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_loginauth_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/login/auth.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
invokeTag('set','g',1,['var':("securityConfig"),'value':(applicationContext.springSecurityService.securityConfig)],-1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("login")],-1)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'button_red.css'))
printHtmlPart(3)
invokeTag('title','s2ui',7,['messageCode':("spring.security.ui.login.title")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',8,['src':("spring-security-ui-auth.css")],-1)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(5)
createTagBody(1, {->
printHtmlPart(6)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_small.png'))
printHtmlPart(7)
createTagBody(2, {->
printHtmlPart(8)
if(true && (flash.message)) {
printHtmlPart(9)
expressionOut.print(flash.message)
printHtmlPart(10)
}
printHtmlPart(11)
expressionOut.print(securityConfig.apf.usernameParameter)
printHtmlPart(12)
expressionOut.print(securityConfig.apf.passwordParameter)
printHtmlPart(13)
createClosureForHtmlPart(14, 3)
invokeTag('link','g',70,['controller':("register"),'action':("register")],3)
printHtmlPart(15)
createClosureForHtmlPart(16, 3)
invokeTag('link','g',78,['controller':("register"),'action':("forgotPassword")],3)
printHtmlPart(17)
})
invokeTag('form','s2ui',82,['role':("form"),'type':("login"),'focus':("username")],2)
printHtmlPart(18)
})
invokeTag('captureBody','sitemesh',84,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542537670234L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
