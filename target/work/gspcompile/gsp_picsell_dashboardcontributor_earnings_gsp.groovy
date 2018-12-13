import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_dashboardcontributor_earnings_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/contributor_earnings.gsp" }
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
invokeTag('set','g',12,['var':("entityName"),'value':(message(code: 'termOfService.label', default: 'TermOfService'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',12,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',13,[:],2)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(5)
invokeTag('set','g',17,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',17,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(7)
expressionOut.print(createLink(controller: 'dashboard', action: 'contributor_earnings', id: userObject?.id))
printHtmlPart(8)
expressionOut.print(createLink(controller: 'dashboard', action: 'portfolio', id: userObject?.id))
printHtmlPart(9)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(10)
expressionOut.print(com.picsell.data.Item.countByUserOwner(userObject))
printHtmlPart(11)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "approved"))
printHtmlPart(12)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "pending"))
printHtmlPart(13)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "rejected"))
printHtmlPart(14)
expressionOut.print(userPurchaseItems*.totalAmount.sum()?:0)
printHtmlPart(15)
for( purchasedItem in (userPurchaseItems) ) {
printHtmlPart(16)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: purchasedItem?.imageFile?.tableId))
printHtmlPart(17)
expressionOut.print(purchasedItem?.imageFile?.tableId)
printHtmlPart(18)
expressionOut.print(purchasedItem?.imageFile?.id)
printHtmlPart(19)
invokeTag('formatDate','g',124,['format':("yyyy-MM-dd"),'date':(purchasedItem?.purchaseDate)],-1)
printHtmlPart(20)
expressionOut.print(purchasedItem?.totalAmount?:0)
printHtmlPart(21)
expressionOut.print(purchasedItem?.imageFile?.groupSize?.groupLabel)
printHtmlPart(22)
}
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',135,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1540608249658L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
