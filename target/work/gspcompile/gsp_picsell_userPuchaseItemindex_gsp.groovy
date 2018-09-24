import com.picsell.data.UserPuchaseItem
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userPuchaseItemindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userPuchaseItem/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_sbadmin_gh")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'userPuchaseItem.label', default: 'UserPuchaseItem'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',13,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
invokeTag('message','g',20,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',20,['class':("create btn btn-info"),'action':("create")],2)
printHtmlPart(7)
if(true && (flash.message)) {
printHtmlPart(8)
expressionOut.print(flash.message)
printHtmlPart(9)
}
printHtmlPart(10)
invokeTag('message','g',30,['code':("userPuchaseItem.user.label"),'default':("User")],-1)
printHtmlPart(11)
invokeTag('message','g',32,['code':("userPuchaseItem.imageFile.label"),'default':("Image File")],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',34,['property':("purchaseDate"),'title':(message(code: 'userPuchaseItem.purchaseDate.label', default: 'Purchase Date'))],-1)
printHtmlPart(13)
invokeTag('message','g',36,['code':("userPuchaseItem.paymentMethod.label"),'default':("Payment Method")],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',38,['property':("purchasePrice"),'title':(message(code: 'userPuchaseItem.purchasePrice.label', default: 'Purchase Price'))],-1)
printHtmlPart(14)
loop:{
int i = 0
for( userPuchaseItemInstance in (userPuchaseItemInstanceList) ) {
printHtmlPart(15)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(16)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: userPuchaseItemInstance, field: "user"))
})
invokeTag('link','g',46,['action':("show"),'id':(userPuchaseItemInstance.id)],3)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: userPuchaseItemInstance, field: "imageFile"))
printHtmlPart(17)
invokeTag('formatDate','g',50,['date':(userPuchaseItemInstance.purchaseDate)],-1)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: userPuchaseItemInstance, field: "paymentMethod"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: userPuchaseItemInstance, field: "purchasePrice"))
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
invokeTag('paginate','g',61,['total':(userPuchaseItemInstanceCount ?: 0)],-1)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',67,[:],1)
printHtmlPart(21)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535130497998L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
