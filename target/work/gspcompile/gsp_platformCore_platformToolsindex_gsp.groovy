import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

@GrailsPlugin(name='platform-core', version='1.0.RC5')
class gsp_platformCore_platformToolsindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/plugins/platform-core-1.0.RC5/grails-app/views/platformTools/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',4,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',4,[:],2)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("platform/dev")],-1)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',6,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
createClosureForHtmlPart(6, 2)
invokeTag('link','g',16,['controller':("platformTools"),'action':("security")],2)
printHtmlPart(7)
createClosureForHtmlPart(8, 2)
invokeTag('link','g',17,['controller':("platformTools"),'action':("showPluginConfig")],2)
printHtmlPart(7)
createClosureForHtmlPart(9, 2)
invokeTag('link','g',18,['controller':("platformTools"),'action':("showNavigation")],2)
printHtmlPart(7)
createClosureForHtmlPart(10, 2)
invokeTag('link','g',19,['controller':("platformTools"),'action':("showEvents")],2)
printHtmlPart(7)
createClosureForHtmlPart(11, 2)
invokeTag('link','g',20,['controller':("platformTools"),'action':("showUiExtensions")],2)
printHtmlPart(12)
})
invokeTag('captureBody','sitemesh',21,[:],1)
printHtmlPart(13)
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
