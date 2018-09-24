import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

@GrailsPlugin(name='email-confirmation', version='2.0.8')
class gsp_emailConfirmation_layoutsmain_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/plugins/email-confirmation-2.0.8/grails-app/views/layouts/main.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('layoutTitle','g',3,['default':("Grails")],-1)
})
invokeTag('captureTitle','sitemesh',3,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',3,[:],2)
printHtmlPart(2)
expressionOut.print(createLinkTo(dir:'css',file:'main.css'))
printHtmlPart(3)
invokeTag('layoutHead','g',5,[:],-1)
printHtmlPart(1)
invokeTag('javascript','g',6,['library':("application")],-1)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',7,[:],1)
printHtmlPart(5)
createTagBody(1, {->
printHtmlPart(6)
expressionOut.print(createLinkTo(dir:'images',file:'spinner.gif'))
printHtmlPart(7)
expressionOut.print(createLinkTo(dir:'images',file:'grails_logo.jpg'))
printHtmlPart(8)
invokeTag('layoutBody','g',13,[:],-1)
printHtmlPart(9)
})
invokeTag('captureBody','sitemesh',14,[:],1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1323954188000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
