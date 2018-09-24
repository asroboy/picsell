import com.picsell.data.ProfileUser
import  com.picsell.data.BankAccount
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_bankAccountedit_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/bankAccount/edit.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'bankAccount.label', default: 'BankAccount'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.edit.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(3)
invokeTag('set','g',11,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',12,[:],1)
printHtmlPart(5)
createTagBody(1, {->
printHtmlPart(6)
expressionOut.print(com.picsell.data.Item.countByUserOwner(userObject))
printHtmlPart(7)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "approved"))
printHtmlPart(8)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "pending"))
printHtmlPart(9)
expressionOut.print(com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "rejected"))
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
createTagBody(2, {->
printHtmlPart(14)
createTagBody(3, {->
printHtmlPart(15)
if(true && (error in org.springframework.validation.FieldError)) {
printHtmlPart(16)
expressionOut.print(error.field)
printHtmlPart(17)
}
printHtmlPart(18)
invokeTag('message','g',63,['error':(error)],-1)
printHtmlPart(19)
})
invokeTag('eachError','g',64,['bean':(bankAccountInstance),'var':("error")],3)
printHtmlPart(20)
})
invokeTag('hasErrors','g',66,['bean':(bankAccountInstance)],2)
printHtmlPart(13)
createTagBody(2, {->
printHtmlPart(21)
invokeTag('hiddenField','g',69,['name':("version"),'value':(bankAccountInstance?.version)],-1)
printHtmlPart(22)
invokeTag('render','g',71,['template':("form")],-1)
printHtmlPart(23)
invokeTag('actionSubmit','g',75,['class':("save btn btn-sm btn-danger"),'action':("update"),'value':(message(code: 'default.button.update.label', default: 'Update'))],-1)
printHtmlPart(24)
expressionOut.print(createLink(action: 'show', id: bankAccountInstance?.id))
printHtmlPart(25)
})
invokeTag('form','g',80,['url':([resource: propertyName, action: 'update']),'method':("PUT")],2)
printHtmlPart(26)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(27)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id:com.picsell.data.ProfileUser.findByUser(bankAccountInstance?.user)?.id ))
printHtmlPart(28)
expressionOut.print(createLink(controller: 'dashboard', action: 'contributor' ))
printHtmlPart(29)
})
invokeTag('captureBody','sitemesh',96,[:],1)
printHtmlPart(30)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534508252669L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
