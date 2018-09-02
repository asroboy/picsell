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
printHtmlPart(1)
invokeTag('title','s2ui',5,['messageCode':("spring.security.ui.login.title")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',6,['src':("spring-security-ui-auth.css")],-1)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',7,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_small.png'))
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
expressionOut.print(securityConfig.apf.usernameParameter)
printHtmlPart(7)
expressionOut.print(securityConfig.apf.passwordParameter)
printHtmlPart(8)
createClosureForHtmlPart(9, 3)
invokeTag('link','g',67,['controller':("register"),'action':("register")],3)
printHtmlPart(10)
createClosureForHtmlPart(11, 3)
invokeTag('link','g',72,['controller':("register"),'action':("forgotPassword")],3)
printHtmlPart(12)
})
invokeTag('form','s2ui',78,['role':("form"),'type':("login"),'focus':("username")],2)
printHtmlPart(13)
})
invokeTag('captureBody','sitemesh',79,[:],1)
printHtmlPart(14)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1530715367054L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
