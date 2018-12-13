import com.picsell.data.ImageFile
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userItemindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userItem/index.gsp" }
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
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',12,[:],2)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(5)
invokeTag('set','g',16,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',16,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(7)
expressionOut.print(createLink(action: 'addItem'))
printHtmlPart(8)
expressionOut.print(createLink(action: 'index', params: [status: 'approved']))
printHtmlPart(9)
expressionOut.print(createLink(action: 'index', params: [status: 'rejected']))
printHtmlPart(10)
expressionOut.print(createLink(action: 'index', params: [status: 'pending']))
printHtmlPart(11)
expressionOut.print(createLink(controller: 'dashboard', action: 'contributor_earnings', id: userObject?.id))
printHtmlPart(12)
for( item in (items) ) {
printHtmlPart(13)
expressionOut.print(createLink(controller: 'userItem', action: 'itemDetail'))
printHtmlPart(14)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id, params: [s: '238h9uhh3']))
printHtmlPart(15)
expressionOut.print(createLink(controller: 'userItem', action: 'itemDetail', id: item?.id))
printHtmlPart(16)
expressionOut.print(item?.name)
printHtmlPart(17)
expressionOut.print(item?.description)
printHtmlPart(18)
invokeTag('formatDate','g',92,['format':("dd MMM yyyy"),'date':(item?.createdDate)],-1)
printHtmlPart(19)
expressionOut.print(item?.tags)
printHtmlPart(20)
if(true && (item?.status.equals("approved"))) {
printHtmlPart(21)
expressionOut.print(item?.status)
printHtmlPart(22)
}
else if(true && (item?.status.equals("pending"))) {
printHtmlPart(23)
expressionOut.print(item?.status)
printHtmlPart(22)
}
else {
printHtmlPart(24)
expressionOut.print(item?.status)
printHtmlPart(22)
}
printHtmlPart(25)
if(true && (!item?.status.equals("pending"))) {
printHtmlPart(26)
invokeTag('formatDate','g',122,['format':("dd MMM yyyy"),'date':(item?.statusCgDate)],-1)
printHtmlPart(27)
}
printHtmlPart(28)
if(true && (item?.statusInfo)) {
printHtmlPart(29)
if(true && (item?.status.equals("approved"))) {
printHtmlPart(30)
expressionOut.print(item?.statusInfo)
printHtmlPart(31)
}
else {
printHtmlPart(32)
expressionOut.print(item?.statusInfo)
printHtmlPart(31)
}
printHtmlPart(33)
}
printHtmlPart(34)
}
printHtmlPart(35)
if(true && (itemInstanceCount > params.max)) {
printHtmlPart(36)

def mod = itemInstanceCount % params.max

printHtmlPart(36)

Integer page = itemInstanceCount / params.max

printHtmlPart(36)

def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0

printHtmlPart(37)
if(true && (offsetNow > 0)) {
printHtmlPart(38)
expressionOut.print(createLink(action: 'index', params: [status: params.status, offset: (offsetNow - params.max), max: params.max]))
printHtmlPart(39)
}
printHtmlPart(40)
for( i in ((1..page).toList()) ) {
printHtmlPart(38)
expressionOut.print(createLink(action: 'index', params: [status: params.status, offset: ((i - 1) * params.max), max: params.max]))
printHtmlPart(16)
expressionOut.print(i)
printHtmlPart(41)
}
printHtmlPart(36)
if(true && (mod > 0)) {
printHtmlPart(38)
expressionOut.print(createLink(action: 'index', params: [status: params.status, offset: page * params.max, max: params.max]))
printHtmlPart(16)
expressionOut.print(page + 1)
printHtmlPart(41)
}
printHtmlPart(37)
if(true && (offsetNow < page * params.max)) {
printHtmlPart(38)
expressionOut.print(createLink(action: 'index', params: [status: params.status, offset: offsetNow + params.max, max: params.max]))
printHtmlPart(42)
}
printHtmlPart(43)
}
printHtmlPart(44)
expressionOut.print(params.item_id)
printHtmlPart(45)
})
invokeTag('captureBody','sitemesh',235,[:],1)
printHtmlPart(46)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542707119447L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
