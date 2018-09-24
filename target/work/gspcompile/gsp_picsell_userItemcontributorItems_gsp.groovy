import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userItemcontributorItems_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userItem/contributorItems.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(2)
createTagBody(2, {->
invokeTag('captureTitle','sitemesh',11,[:],-1)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(3)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',13,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(5)
for( item in (itemInstanceList) ) {
printHtmlPart(6)
expressionOut.print(item?.id)
printHtmlPart(7)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id, params: [s: '238h9uhh3', table_id: item?.id, table_name: 'Item']))
printHtmlPart(8)
expressionOut.print(item?.userOwner?.username)
printHtmlPart(9)
expressionOut.print(item?.price)
printHtmlPart(10)
expressionOut.print(item?.currency)
printHtmlPart(11)
expressionOut.print(item?.id)
printHtmlPart(12)
expressionOut.print(item?.status)
printHtmlPart(13)
expressionOut.print(item?.id)
printHtmlPart(12)
expressionOut.print(item?.statusCgDate)
printHtmlPart(14)
expressionOut.print(item?.id)
printHtmlPart(15)
if(true && (item?.status.equals('pending') || item?.status.equals('rejected'))) {
printHtmlPart(16)
expressionOut.print(item?.id)
printHtmlPart(17)
}
printHtmlPart(18)
if(true && (item?.status.equals('approved'))) {
printHtmlPart(19)
expressionOut.print(item?.id)
printHtmlPart(20)
}
printHtmlPart(21)
}
printHtmlPart(22)

def mod = itemInstanceCount % params.max

printHtmlPart(23)

Integer page = itemInstanceCount / params.max

printHtmlPart(23)

def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0

printHtmlPart(24)
if(true && (offsetNow > 0)) {
printHtmlPart(25)
expressionOut.print(createLink(action: 'contributorItems', params: [offset: (offsetNow - params.max), max: params.max]))
printHtmlPart(26)
}
printHtmlPart(27)
for( i in ((1..page).toList()) ) {
printHtmlPart(25)
expressionOut.print(createLink(action: 'contributorItems', params: [offset: ((i - 1) * params.max), max: params.max]))
printHtmlPart(12)
expressionOut.print(i)
printHtmlPart(28)
}
printHtmlPart(23)
if(true && (mod > 0)) {
printHtmlPart(25)
expressionOut.print(createLink(action: 'contributorItems', params: [offset: page * params.max, max: params.max]))
printHtmlPart(12)
expressionOut.print(page + 1)
printHtmlPart(28)
}
printHtmlPart(24)
if(true && (offsetNow < page * params.max)) {
printHtmlPart(25)
expressionOut.print(createLink(action: 'contributorItems', params: [offset: offsetNow + params.max, max: params.max]))
printHtmlPart(29)
}
printHtmlPart(30)
expressionOut.print(createLink(controller: 'api', action: 'updateApproval'))
printHtmlPart(31)
expressionOut.print(userObject?.username)
printHtmlPart(32)
})
invokeTag('captureBody','sitemesh',139,[:],1)
printHtmlPart(33)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533998307694L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
