import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homedownload_page_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/download_page.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',13,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(6)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)?.id))
printHtmlPart(7)
createTagBody(2, {->
printHtmlPart(8)
expressionOut.print(itemInstance?.id)
printHtmlPart(9)
expressionOut.print(itemInstance?.id)
printHtmlPart(10)
expressionOut.print(itemInstance?.id)
printHtmlPart(11)
expressionOut.print(itemInstance?.id)
printHtmlPart(12)
})
invokeTag('ifLoggedIn','sec',37,[:],2)
printHtmlPart(13)
expressionOut.print(createLink(cotroller: 'home', action: 'index', params: [cat: itemInstance?.category?.name]))
printHtmlPart(14)
expressionOut.print(itemInstance?.name)
printHtmlPart(15)
expressionOut.print(com.picsell.data.ItemViewed.countByItem(itemInstance))
printHtmlPart(16)
expressionOut.print(com.picsell.data.UserLikeItem.countByItem(itemInstance))
printHtmlPart(17)
expressionOut.print(itemInstance?.id)
printHtmlPart(18)
expressionOut.print(itemInstance?.description)
printHtmlPart(19)
expressionOut.print(itemInstance?.tags)
printHtmlPart(20)
expressionOut.print(itemInstance?.id)
printHtmlPart(21)
expressionOut.print(createLink(controller: 'home', action: 'purchase_summary', id: itemInstance?.id))
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',174,[:],1)
printHtmlPart(23)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533738362337L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
