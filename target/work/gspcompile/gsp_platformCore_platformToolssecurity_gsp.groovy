import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

@GrailsPlugin(name='platform-core', version='1.0.RC5')
class gsp_platformCore_platformToolssecurity_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/plugins/platform-core-1.0.RC5/grails-app/views/platformTools/security.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',3,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',3,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("platform/dev")],-1)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',5,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
if(true && (grailsApplication.mainContext.grailsSecurityBridge)) {
printHtmlPart(5)
expressionOut.print(grailsApplication.mainContext.grailsSecurityBridge?.getClass())
printHtmlPart(6)
}
else {
printHtmlPart(7)
}
printHtmlPart(8)
invokeTag('identity','s',17,[:],-1)
printHtmlPart(9)
createClosureForHtmlPart(10, 2)
invokeTag('ifPermitted','s',21,['role':("ADMIN")],2)
printHtmlPart(1)
createClosureForHtmlPart(11, 2)
invokeTag('ifNotPermitted','s',24,['role':("ADMIN")],2)
printHtmlPart(12)
invokeTag('info','s',28,[:],-1)
printHtmlPart(13)
if(true && (grailsApplication.mainContext.grailsSecurityBridge)) {
printHtmlPart(14)
invokeTag('loginButton','s',33,[:],-1)
printHtmlPart(15)
invokeTag('logoutButton','s',33,[:],-1)
printHtmlPart(16)
invokeTag('signupButton','s',33,[:],-1)
printHtmlPart(17)
}
else {
printHtmlPart(18)
}
printHtmlPart(3)
})
invokeTag('captureBody','sitemesh',39,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1358236820000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
