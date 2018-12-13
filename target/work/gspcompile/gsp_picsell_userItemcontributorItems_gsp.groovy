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
invokeTag('set','g',16,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',16,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(6)
for( item in (itemInstanceList) ) {
printHtmlPart(7)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id, params: [s: '238h9uhh3', table_id: item?.id, table_name: 'Item']))
printHtmlPart(8)
expressionOut.print(item?.name)
printHtmlPart(9)
expressionOut.print(item?.id)
printHtmlPart(10)
expressionOut.print(item?.userOwner?.username)
printHtmlPart(11)
expressionOut.print(item?.description)
printHtmlPart(12)
expressionOut.print(item?.tags)
printHtmlPart(13)
expressionOut.print(item?.id)
printHtmlPart(14)
expressionOut.print(item?.status)
printHtmlPart(15)
expressionOut.print(item?.statusInfo)
printHtmlPart(16)
expressionOut.print(item?.id)
printHtmlPart(17)
invokeTag('formatDate','g',54,['date':(item?.statusCgDate),'format':("dd-MMM-yyyy hh:mm")],-1)
printHtmlPart(18)
expressionOut.print(item?.id)
printHtmlPart(14)
if(true && (item?.status.equals('pending') || item?.status.equals('rejected'))) {
printHtmlPart(19)
expressionOut.print(item?.id)
printHtmlPart(20)
expressionOut.print(item?.id)
printHtmlPart(21)
}
printHtmlPart(22)
if(true && (item?.status.equals('approved'))) {
printHtmlPart(23)
expressionOut.print(item?.id)
printHtmlPart(21)
}
printHtmlPart(24)
}
printHtmlPart(25)

def mod = itemInstanceCount % params.max

printHtmlPart(26)

Integer page = itemInstanceCount / params.max

printHtmlPart(26)

def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0

printHtmlPart(27)
if(true && (offsetNow > 0)) {
printHtmlPart(28)
expressionOut.print(createLink(action: 'contributorItems', params: [offset: (offsetNow - params.max), max: params.max]))
printHtmlPart(29)
}
printHtmlPart(30)
for( i in ((1..page).toList()) ) {
printHtmlPart(28)
expressionOut.print(createLink(action: 'contributorItems', params: [offset: ((i - 1) * params.max), max: params.max]))
printHtmlPart(17)
expressionOut.print(i)
printHtmlPart(31)
}
printHtmlPart(26)
if(true && (mod > 0)) {
printHtmlPart(28)
expressionOut.print(createLink(action: 'contributorItems', params: [offset: page * params.max, max: params.max]))
printHtmlPart(17)
expressionOut.print(page + 1)
printHtmlPart(31)
}
printHtmlPart(27)
if(true && (offsetNow < page * params.max)) {
printHtmlPart(28)
expressionOut.print(createLink(action: 'contributorItems', params: [offset: offsetNow + params.max, max: params.max]))
printHtmlPart(32)
}
printHtmlPart(33)
invokeTag('render','g',119,['template':("update_approval")],-1)
printHtmlPart(34)
expressionOut.print(createLink(controller: 'api', action: 'updateItemStatus'))
printHtmlPart(35)
expressionOut.print(userObject?.id)
printHtmlPart(36)
expressionOut.print(userObject?.username)
printHtmlPart(37)
})
invokeTag('captureBody','sitemesh',176,[:],1)
printHtmlPart(38)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1544624402367L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
