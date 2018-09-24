import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_requestmapsearch_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/requestmap/search.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',3,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_sbadmin")],-1)
printHtmlPart(2)
invokeTag('title','s2ui',4,['messageCode':("spring.security.ui.requestmap.search")],-1)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',4,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
createTagBody(2, {->
printHtmlPart(5)
createTagBody(3, {->
printHtmlPart(6)
invokeTag('message','g',10,['code':("requestmap.url.label"),'default':("URL")],-1)
printHtmlPart(7)
invokeTag('textField','g',13,['class':("form-control"),'name':("url"),'size':("50"),'maxlength':("255"),'autocomplete':("off"),'value':(url)],-1)
printHtmlPart(8)
invokeTag('message','g',14,['code':("requestmap.configAttribute.label"),'default':("Config Attribute")],-1)
printHtmlPart(7)
invokeTag('textField','g',17,['class':("form-control"),'name':("configAttribute"),'size':("50"),'maxlength':("255"),'autocomplete':("off"),'value':(configAttribute)],-1)
printHtmlPart(9)
if(true && (hasHttpMethod)) {
printHtmlPart(6)
invokeTag('message','g',19,['code':("requestmap.httpMethod.label"),'default':("HttpMethod")],-1)
printHtmlPart(10)
invokeTag('select','g',23,['class':("form-control"),'name':("httpMethod"),'from':(org.springframework.http.HttpMethod.values()),'value':(httpMethod),'noSelection':(['null': 'All'])],-1)
printHtmlPart(11)
}
printHtmlPart(5)
})
invokeTag('searchForm','s2ui',23,['colspan':("2")],3)
printHtmlPart(12)
})
invokeTag('formContainer','s2ui',23,['type':("search"),'beanType':("requestmap"),'height':("350")],2)
printHtmlPart(12)
if(true && (searched)) {
printHtmlPart(13)
invokeTag('sortableColumn','s2ui',31,['property':("url"),'titleDefault':("URL")],-1)
printHtmlPart(14)
invokeTag('sortableColumn','s2ui',34,['property':("configAttribute"),'titleDefault':("Config Attribute")],-1)
printHtmlPart(14)
if(true && (hasHttpMethod)) {
printHtmlPart(14)
invokeTag('sortableColumn','s2ui',36,['property':("httpMethod"),'titleDefault':("HttpMethod")],-1)
printHtmlPart(14)
}
printHtmlPart(15)
loop:{
int i = 0
for( requestmap in (results) ) {
printHtmlPart(16)
expressionOut.print((i % 2) == 0 ? 'odd' : 'even')
printHtmlPart(17)
createTagBody(4, {->
expressionOut.print(uiPropertiesStrategy.getProperty(requestmap, 'url'))
})
invokeTag('link','g',44,['action':("edit"),'id':(requestmap.id)],4)
printHtmlPart(18)
expressionOut.print(uiPropertiesStrategy.getProperty(requestmap, 'configAttribute'))
printHtmlPart(19)
if(true && (hasHttpMethod)) {
printHtmlPart(20)
expressionOut.print(uiPropertiesStrategy.getProperty(requestmap, 'httpMethod'))
printHtmlPart(19)
}
printHtmlPart(21)
i++
}
}
printHtmlPart(22)
invokeTag('paginate','s2ui',48,['total':(totalCount)],-1)
printHtmlPart(12)
}
printHtmlPart(23)
invokeTag('ajaxSearch','s2ui',53,['paramName':("url")],-1)
printHtmlPart(2)
invokeTag('ajaxSearch','s2ui',56,['paramName':("configAttribute"),'focus':("false")],-1)
printHtmlPart(3)
})
invokeTag('captureBody','sitemesh',57,[:],1)
printHtmlPart(24)
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
