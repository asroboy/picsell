import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

@GrailsPlugin(name='spring-security-ui', version='1.0-RC3')
class gsp_springSecurityUi_securityInfomappings_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/plugins/spring-security-ui-1.0-RC3/grails-app/views/securityInfo/mappings.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',3,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':(layoutUi)],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',4,['code':("spring.security.ui.menu.securityInfo.mappings")],-1)
})
invokeTag('captureTitle','sitemesh',4,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',4,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',5,[:],1)
printHtmlPart(2)
createTagBody(1, {->
printHtmlPart(3)
invokeTag('message','g',8,['code':("spring.security.ui.info.mappings.type"),'args':([securityConfigType])],-1)
printHtmlPart(1)
createTagBody(2, {->
printHtmlPart(4)
invokeTag('set','g',10,['var':("closure"),'value':(it.configAttributes.any { ca -> ca.getClass().name.contains("ClosureConfigAttribute") })],-1)
printHtmlPart(5)
expressionOut.print(it.pattern)
printHtmlPart(6)
expressionOut.print(closure ? '&lt;closure&gt;' : it.configAttributes.toString()[1..-2])
printHtmlPart(6)
expressionOut.print(it.httpMethod ?: 'all')
printHtmlPart(7)
})
invokeTag('securityInfoTable','s2ui',14,['type':("mappings"),'items':(configAttributes),'headerCodes':("pattern,attribute,method")],2)
printHtmlPart(2)
})
invokeTag('captureBody','sitemesh',15,[:],1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1450632156000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
