import com.picsell.data.Banner
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_bannerindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/banner/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'banner.label', default: 'Banner'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',10,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
if(true && (flash.message)) {
printHtmlPart(6)
expressionOut.print(flash.message)
printHtmlPart(7)
}
printHtmlPart(8)
invokeTag('sortableColumn','g',31,['property':("type"),'title':(message(code: 'banner.type.label', default: 'Type'))],-1)
printHtmlPart(9)
invokeTag('sortableColumn','g',35,['property':("description"),'title':(message(code: 'banner.description.label', default: 'Description'))],-1)
printHtmlPart(9)
invokeTag('sortableColumn','g',38,['property':("isActive"),'title':(message(code: 'banner.isActive.label', default: 'Is Active'))],-1)
printHtmlPart(10)
loop:{
int i = 0
for( bannerInstance in (bannerInstanceList) ) {
printHtmlPart(11)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(12)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: bannerInstance, field: "type"))
})
invokeTag('link','g',47,['action':("show"),'id':(bannerInstance.id)],3)
printHtmlPart(13)
expressionOut.print(fieldValue(bean: bannerInstance, field: "description"))
printHtmlPart(13)
invokeTag('formatBoolean','g',50,['boolean':(bannerInstance.isActive)],-1)
printHtmlPart(14)
i++
}
}
printHtmlPart(15)
invokeTag('paginate','g',56,['total':(bannerInstanceCount ?: 0)],-1)
printHtmlPart(16)
})
invokeTag('captureBody','sitemesh',61,[:],1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533746615483L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
