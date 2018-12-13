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
expressionOut.print(createLink(controller: 'document', action: 'photoWithWatermaark', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemChart.item?.id, itemChart.item.class.simpleName)?.id, params: [table_id: itemChart.item?.id, table_name: 'Item']))
printHtmlPart(8)
expressionOut.print(itemChart.item?.name)
printHtmlPart(9)
expressionOut.print(itemChart.item?.userOwner?.username)
printHtmlPart(10)
expressionOut.print(itemChart.item?.description)
printHtmlPart(11)
expressionOut.print(itemChart.item?.tags)
printHtmlPart(12)
expressionOut.print(itemChart.item?.price)
printHtmlPart(13)
expressionOut.print(itemChart.item?.currency)
printHtmlPart(14)
expressionOut.print(createLink(controller: 'home', action: 'purchase_summary', id: itemChart?.item?.id, params: [chart_id: itemChart?.id]))
printHtmlPart(15)
expressionOut.print(itemChart.id)
printHtmlPart(16)
}
printHtmlPart(17)
}
printHtmlPart(18)
})
invokeTag('captureBody','sitemesh',97,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542537442498L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
