import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_billingupdateBillingPayment_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/billing/updateBillingPayment.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(billingInfo?.country)
printHtmlPart(1)
expressionOut.print(billingInfo?.address1)
printHtmlPart(2)
expressionOut.print(billingInfo?.address2)
printHtmlPart(3)
expressionOut.print(billingInfo?.city)
printHtmlPart(4)
expressionOut.print(billingInfo?.stateProvince)
printHtmlPart(5)
expressionOut.print(billingInfo?.postalCode)
printHtmlPart(6)
expressionOut.print(paymentMethod?.firstName)
printHtmlPart(7)
expressionOut.print(paymentMethod?.lastName)
printHtmlPart(8)
expressionOut.print(paymentMethod?.creaditCardNumber)
printHtmlPart(9)
expressionOut.print(paymentMethod?.securityCode)
printHtmlPart(10)
expressionOut.print(paymentMethod?.expiredDate)
printHtmlPart(11)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537621364252L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
