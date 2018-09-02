import com.picsell.data.UserPuchaseItem
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userPuchaseItemshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userPuchaseItem/show.gsp" }
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
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
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
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
invokeTag('message','g',23,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',23,['class':("create btn btn-info"),'action':("create")],2)
printHtmlPart(7)
if(true && (flash.message)) {
printHtmlPart(8)
expressionOut.print(flash.message)
printHtmlPart(9)
}
printHtmlPart(10)
if(true && (userPuchaseItemInstance?.user)) {
printHtmlPart(11)
invokeTag('message','g',35,['code':("userPuchaseItem.user.label"),'default':("User")],-1)
printHtmlPart(12)
createTagBody(3, {->
expressionOut.print(userPuchaseItemInstance?.user?.encodeAsHTML())
})
invokeTag('link','g',39,['controller':("user"),'action':("show"),'id':(userPuchaseItemInstance?.user?.id)],3)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userPuchaseItemInstance?.imageFile)) {
printHtmlPart(15)
invokeTag('message','g',50,['code':("userPuchaseItem.imageFile.label"),'default':("Image File")],-1)
printHtmlPart(16)
createTagBody(3, {->
expressionOut.print(userPuchaseItemInstance?.imageFile?.encodeAsHTML())
})
invokeTag('link','g',55,['controller':("imageFile"),'action':("show"),'id':(userPuchaseItemInstance?.imageFile?.id)],3)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userPuchaseItemInstance?.purchaseDate)) {
printHtmlPart(17)
invokeTag('message','g',65,['code':("userPuchaseItem.purchaseDate.label"),'default':("Purchase Date")],-1)
printHtmlPart(18)
invokeTag('formatDate','g',69,['date':(userPuchaseItemInstance?.purchaseDate)],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userPuchaseItemInstance?.paymentMethod)) {
printHtmlPart(19)
invokeTag('message','g',80,['code':("userPuchaseItem.paymentMethod.label"),'default':("Payment Method")],-1)
printHtmlPart(20)
createTagBody(3, {->
expressionOut.print(userPuchaseItemInstance?.paymentMethod?.encodeAsHTML())
})
invokeTag('link','g',87,['controller':("paymentMethod"),'action':("show"),'id':(userPuchaseItemInstance?.paymentMethod?.id)],3)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userPuchaseItemInstance?.purchasePrice)) {
printHtmlPart(21)
invokeTag('message','g',95,['code':("userPuchaseItem.purchasePrice.label"),'default':("Purchase Price")],-1)
printHtmlPart(22)
invokeTag('fieldValue','g',99,['bean':(userPuchaseItemInstance),'field':("purchasePrice")],-1)
printHtmlPart(13)
}
printHtmlPart(23)
createTagBody(2, {->
printHtmlPart(24)
createTagBody(3, {->
invokeTag('message','g',115,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',115,['class':("edit btn btn-info"),'action':("edit"),'resource':(userPuchaseItemInstance)],3)
printHtmlPart(25)
invokeTag('actionSubmit','g',119,['class':("delete btn btn-info"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(26)
})
invokeTag('form','g',119,['url':([resource:userPuchaseItemInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(27)
})
invokeTag('captureBody','sitemesh',120,[:],1)
printHtmlPart(28)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1535130498572L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
