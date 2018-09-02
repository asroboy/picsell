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
invokeTag('formatDate','g',88,['format':("dd MMM yyyy"),'date':(item?.createdDate)],-1)
printHtmlPart(18)
expressionOut.print(item?.price)
printHtmlPart(19)
expressionOut.print(item?.currency)
printHtmlPart(20)
expressionOut.print(item?.description)
printHtmlPart(21)
expressionOut.print(item?.tags)
printHtmlPart(22)
if(true && (item?.status.equals("approved"))) {
printHtmlPart(23)
expressionOut.print(item?.status)
printHtmlPart(24)
}
else if(true && (item?.status.equals("pending"))) {
printHtmlPart(25)
expressionOut.print(item?.status)
printHtmlPart(24)
}
else {
printHtmlPart(26)
expressionOut.print(item?.status)
printHtmlPart(24)
}
printHtmlPart(27)
if(true && (!item?.status.equals("pending"))) {
printHtmlPart(28)
invokeTag('formatDate','g',127,['format':("dd MMM yyyy"),'date':(item?.statusCgDate)],-1)
printHtmlPart(29)
}
printHtmlPart(30)
if(true && (item?.statusInfo)) {
printHtmlPart(31)
expressionOut.print(item?.statusInfo)
printHtmlPart(32)
}
printHtmlPart(33)
}
printHtmlPart(34)
if(true && (itemInstanceCount > params.max)) {
printHtmlPart(35)

def mod = itemInstanceCount % params.max

printHtmlPart(35)

Integer page = itemInstanceCount / params.max

printHtmlPart(35)

def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0

printHtmlPart(36)
if(true && (offsetNow > 0)) {
printHtmlPart(37)
expressionOut.print(createLink(action: 'index', params: [status: params.status, offset: (offsetNow - params.max), max: params.max]))
printHtmlPart(38)
}
printHtmlPart(39)
for( i in ((1..page).toList()) ) {
printHtmlPart(37)
expressionOut.print(createLink(action: 'index', params: [status: params.status, offset: ((i - 1) * params.max), max: params.max]))
printHtmlPart(16)
expressionOut.print(i)
printHtmlPart(40)
}
printHtmlPart(35)
if(true && (mod > 0)) {
printHtmlPart(37)
expressionOut.print(createLink(action: 'index', params: [status: params.status, offset: page * params.max, max: params.max]))
printHtmlPart(16)
expressionOut.print(page + 1)
printHtmlPart(40)
}
printHtmlPart(36)
if(true && (offsetNow < page * params.max)) {
printHtmlPart(37)
expressionOut.print(createLink(action: 'index', params: [status: params.status, offset: offsetNow + params.max, max: params.max]))
printHtmlPart(41)
}
printHtmlPart(42)
}
printHtmlPart(43)
expressionOut.print(params.item_id)
printHtmlPart(44)
})
invokeTag('captureBody','sitemesh',232,[:],1)
printHtmlPart(45)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535257025456L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
