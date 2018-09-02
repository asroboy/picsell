import com.picsell.security.Role
import  com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homepurchase_summary_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/purchase_summary.gsp" }
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
invokeTag('set','g',15,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(2)
invokeTag('set','g',16,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(2)
invokeTag('set','g',17,['var':("userAccounts"),'value':(com.picsell.data.UserAccount.findAllByUser(userObject))],-1)
printHtmlPart(4)
invokeTag('set','g',20,['var':("billingInfo"),'value':(com.picsell.data.BillingAddress.findByUser(userObject))],-1)
printHtmlPart(2)
invokeTag('set','g',21,['var':("paymentMethod"),'value':(com.picsell.data.PaymentMethod.findByUser(userObject))],-1)
printHtmlPart(5)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',22,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(7)
if(true && (billingInfo)) {
printHtmlPart(8)
expressionOut.print(billingInfo?.country)
printHtmlPart(9)
expressionOut.print(billingInfo?.address1)
printHtmlPart(10)
expressionOut.print(billingInfo?.address2)
printHtmlPart(11)
expressionOut.print(billingInfo?.city)
printHtmlPart(12)
expressionOut.print(billingInfo?.stateProvince)
printHtmlPart(13)
expressionOut.print(billingInfo?.postalCode)
printHtmlPart(14)
expressionOut.print(paymentMethod?.firstName)
printHtmlPart(15)
expressionOut.print(paymentMethod?.lastName)
printHtmlPart(16)
expressionOut.print(paymentMethod?.creaditCardNumber)
printHtmlPart(17)
expressionOut.print(paymentMethod?.securityCode)
printHtmlPart(18)
expressionOut.print(paymentMethod?.expiredDate)
printHtmlPart(19)
}
else {
printHtmlPart(20)
createTagBody(3, {->
printHtmlPart(21)
expressionOut.print(imageFile?.id)
printHtmlPart(22)
expressionOut.print(userObject?.id)
printHtmlPart(23)
invokeTag('submitButton','g',214,['name':("submit"),'class':("btn btn-sm btn-danger"),'title':("Submit")],-1)
printHtmlPart(24)
})
invokeTag('form','g',217,['controller':("billing"),'action':("saveBillingPayment")],3)
printHtmlPart(25)
}
printHtmlPart(26)
expressionOut.print(resource(dir: 'images', file: 'ic_camera.jpg'))
printHtmlPart(27)
expressionOut.print(resource(dir: 'images', file: 'ic_search.jpg'))
printHtmlPart(27)
expressionOut.print(resource(dir: 'images', file: 'ic_document.jpg'))
printHtmlPart(28)
expressionOut.print(resource(dir: 'images', file: 'ic_images.jpg'))
printHtmlPart(29)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)?.id))
printHtmlPart(30)
expressionOut.print(itemInstance?.id)
printHtmlPart(31)
expressionOut.print(imageFile?.id)
printHtmlPart(32)
expressionOut.print(itemInstance?.name)
printHtmlPart(33)
expressionOut.print(imageFile?.groupSize?.groupLabel)
printHtmlPart(34)
expressionOut.print(itemInstance?.description)
printHtmlPart(35)
expressionOut.print(imageFile?.width)
printHtmlPart(36)
expressionOut.print(imageFile?.height)
printHtmlPart(37)
expressionOut.print(imageFile?.tipeFile)
printHtmlPart(38)
expressionOut.print(imageFile?.groupSize?.price)
printHtmlPart(39)
expressionOut.print(imageFile?.groupSize?.price * 1)
printHtmlPart(40)
if(true && (billingInfo)) {
printHtmlPart(41)
if(true && (params.chart_id)) {
printHtmlPart(42)
expressionOut.print(params.chart_id)
printHtmlPart(43)
expressionOut.print(imageFile?.id)
printHtmlPart(43)
expressionOut.print(userObject?.id)
printHtmlPart(43)
expressionOut.print(paymentMethod?.id)
printHtmlPart(43)
expressionOut.print(imageFile?.groupSize?.price)
printHtmlPart(44)
}
else {
printHtmlPart(45)
expressionOut.print(imageFile?.id)
printHtmlPart(43)
expressionOut.print(userObject?.id)
printHtmlPart(43)
expressionOut.print(paymentMethod?.id)
printHtmlPart(43)
expressionOut.print(imageFile?.groupSize?.price)
printHtmlPart(44)
}
printHtmlPart(46)
}
printHtmlPart(47)
expressionOut.print(createLink(controller: 'api', action: 'purchase'))
printHtmlPart(48)
expressionOut.print(createLink(controller: 'purchaseHistory', action: 'index', id: userObject?.id))
printHtmlPart(49)
expressionOut.print(createLink(controller: 'api', action: 'chart_staus_paid'))
printHtmlPart(50)
})
invokeTag('captureBody','sitemesh',436,[:],1)
printHtmlPart(51)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535255118860L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
