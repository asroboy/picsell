import com.picsell.security.Role
import  com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homemychart_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/mychart.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(2)
createTagBody(2, {->
invokeTag('captureTitle','sitemesh',11,[:],-1)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(3)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(4)
invokeTag('set','g',16,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(2)
invokeTag('set','g',17,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(2)
invokeTag('set','g',18,['var':("userAccounts"),'value':(com.picsell.data.UserAccount.findAllByUser(userObject))],-1)
printHtmlPart(2)
invokeTag('set','g',19,['var':("itemCharts"),'value':(com.picsell.data.ItemChart.findAllByUser(userObject))],-1)
printHtmlPart(0)
})
invokeTag('captureHead','sitemesh',19,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(5)
for( itemChart in (itemCharts) ) {
printHtmlPart(6)
if(true && (itemChart.status == null)) {
printHtmlPart(7)
expressionOut.print(itemChart?.id)
printHtmlPart(8)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemChart.item?.id, itemChart.item.class.simpleName)?.id, params: [s: '238h9uhh3', table_id: itemChart.item?.id, table_name: 'Item']))
printHtmlPart(9)
expressionOut.print(itemChart.item?.userOwner?.username)
printHtmlPart(10)
expressionOut.print(itemChart.item?.price)
printHtmlPart(11)
expressionOut.print(itemChart.item?.currency)
printHtmlPart(12)
expressionOut.print(itemChart.id)
printHtmlPart(13)
expressionOut.print(createLink(controller: 'home', action: 'purchase_summary', id: itemChart?.item?.id, params:[chart_id: itemChart?.id]))
printHtmlPart(14)
}
printHtmlPart(15)
}
printHtmlPart(16)
for( item in (itemCharts) ) {
printHtmlPart(6)
if(true && (item?.status?.equals("paid"))) {
printHtmlPart(7)
expressionOut.print(item?.id)
printHtmlPart(8)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item.item?.id, item.item.class.simpleName)?.id, params: [s: '238h9uhh3', table_id: item.item?.id, table_name: 'Item']))
printHtmlPart(9)
expressionOut.print(item.item?.userOwner?.username)
printHtmlPart(10)
expressionOut.print(item.item?.price)
printHtmlPart(11)
expressionOut.print(item.item?.currency)
printHtmlPart(17)
}
printHtmlPart(15)
}
printHtmlPart(18)
})
invokeTag('captureBody','sitemesh',114,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1532234105159L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
