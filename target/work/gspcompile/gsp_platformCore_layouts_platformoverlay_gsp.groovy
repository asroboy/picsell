import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

@GrailsPlugin(name='platform-core', version='1.0.RC5')
class gsp_platformCore_layouts_platformoverlay_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/plugins/platform-core-1.0.RC5/grails-app/views/layouts/platform/overlay.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('layoutHead','g',4,[:],-1)
printHtmlPart(1)
createTagBody(2, {->
printHtmlPart(2)
invokeTag('layoutResources','r',6,[:],-1)
printHtmlPart(1)
})
invokeTag('isAvailable','plugin',7,['name':("resources")],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('layoutBody','g',10,[:],-1)
printHtmlPart(4)
createTagBody(2, {->
printHtmlPart(2)
invokeTag('layoutResources','r',13,[:],-1)
printHtmlPart(1)
})
invokeTag('isAvailable','plugin',14,['name':("resources")],2)
printHtmlPart(3)
})
invokeTag('captureBody','sitemesh',15,[:],1)
printHtmlPart(5)
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
