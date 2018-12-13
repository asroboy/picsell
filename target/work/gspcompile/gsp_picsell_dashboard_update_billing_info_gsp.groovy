import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_dashboard_update_billing_info_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/_update_billing_info.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('textField','g',25,['class':("form-control"),'name':("address_1"),'value':(billing_address?.address1)],-1)
printHtmlPart(2)
invokeTag('textField','g',32,['class':("form-control"),'name':("address_2"),'value':(billing_address?.address2)],-1)
printHtmlPart(3)
invokeTag('textField','g',37,['class':("form-control"),'name':("city"),'value':(billing_address?.city)],-1)
printHtmlPart(4)
invokeTag('textField','g',44,['class':("form-control"),'name':("country"),'value':(billing_address?.country)],-1)
printHtmlPart(5)
invokeTag('textField','g',51,['class':("form-control"),'name':("postal_code"),'value':(billing_address?.postalCode)],-1)
printHtmlPart(6)
invokeTag('textField','g',58,['class':("form-control"),'name':("province"),'value':(billing_address?.stateProvince)],-1)
printHtmlPart(7)
})
invokeTag('formRemote','g',67,['name':("updateProfile"),'url':([controller: 'api', action: 'updateBillingInfo', id: userObject?.id]),'update':("info"),'method':("post")],1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542591334752L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
