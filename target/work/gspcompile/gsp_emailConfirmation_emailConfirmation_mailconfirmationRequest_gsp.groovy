import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

@GrailsPlugin(name='email-confirmation', version='2.0.8')
class gsp_emailConfirmation_emailConfirmation_mailconfirmationRequest_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/plugins/email-confirmation-2.0.8/grails-app/views/emailConfirmation/mail/confirmationRequest.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(uri)
printHtmlPart(1)
invokeTag('siteName','p',6,[:],-1)
printHtmlPart(2)
invokeTag('siteURL','p',7,[:],-1)
printHtmlPart(3)
invokeTag('organization','p',9,[:],-1)
printHtmlPart(3)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1341294604000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
