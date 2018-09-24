import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_loginauth_bk_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/login/auth.bk.gsp" }
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
createTagBody(2, {->
printHtmlPart(5)
expressionOut.print(securityConfig.apf.usernameParameter)
printHtmlPart(6)
expressionOut.print(securityConfig.apf.passwordParameter)
printHtmlPart(7)
expressionOut.print(securityConfig.rememberMe.parameter)
printHtmlPart(8)
createTagBody(3, {->
invokeTag('message','g',42,['code':("spring.security.ui.login.forgotPassword")],-1)
})
invokeTag('link','g',42,['controller':("register"),'action':("forgotPassword")],3)
printHtmlPart(9)
invokeTag('linkButton','s2ui',45,['elementId':("register"),'controller':("register"),'messageCode':("spring.security.ui.login.register")],-1)
printHtmlPart(10)
})
invokeTag('form','s2ui',49,['role':("form"),'type':("login"),'focus':("username")],2)
printHtmlPart(11)
})
invokeTag('captureBody','sitemesh',50,[:],1)
printHtmlPart(12)
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
