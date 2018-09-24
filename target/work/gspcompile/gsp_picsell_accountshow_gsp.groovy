import com.picsell.config.Account
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_accountshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/account/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'account.label', default: 'Account'))],-1)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',7,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
invokeTag('message','g',25,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',25,['class':("create btn btn-sm btn-danger"),'action':("create")],2)
printHtmlPart(7)
if(true && (flash.message)) {
printHtmlPart(8)
expressionOut.print(flash.message)
printHtmlPart(9)
}
printHtmlPart(10)
if(true && (accountInstance?.name)) {
printHtmlPart(11)
invokeTag('message','g',37,['code':("account.name.label"),'default':("Name")],-1)
printHtmlPart(12)
invokeTag('fieldValue','g',39,['bean':(accountInstance),'field':("name")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.type)) {
printHtmlPart(15)
invokeTag('message','g',53,['code':("account.type.label"),'default':("Type")],-1)
printHtmlPart(16)
invokeTag('fieldValue','g',57,['bean':(accountInstance),'field':("type")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.lisence)) {
printHtmlPart(17)
invokeTag('message','g',70,['code':("account.lisence.label"),'default':("Lisence")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',75,['bean':(accountInstance),'field':("lisence")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.inCurrency)) {
printHtmlPart(19)
invokeTag('message','g',84,['code':("account.inCurrency.label"),'default':("In Currency")],-1)
printHtmlPart(20)
invokeTag('fieldValue','g',92,['bean':(accountInstance),'field':("inCurrency")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.info)) {
printHtmlPart(21)
invokeTag('message','g',102,['code':("account.info.label"),'default':("Info")],-1)
printHtmlPart(22)
invokeTag('fieldValue','g',110,['bean':(accountInstance),'field':("info")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.allowMoreUser)) {
printHtmlPart(23)
invokeTag('message','g',118,['code':("account.allowMoreUser.label"),'default':("Allow More User")],-1)
printHtmlPart(24)
invokeTag('formatBoolean','g',127,['boolean':(accountInstance?.allowMoreUser)],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.maxImages)) {
printHtmlPart(25)
invokeTag('message','g',134,['code':("account.maxImages.label"),'default':("Max Images")],-1)
printHtmlPart(26)
invokeTag('fieldValue','g',145,['bean':(accountInstance),'field':("maxImages")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.maxTeamUser)) {
printHtmlPart(27)
invokeTag('message','g',151,['code':("account.maxTeamUser.label"),'default':("Max Team User")],-1)
printHtmlPart(28)
invokeTag('fieldValue','g',160,['bean':(accountInstance),'field':("maxTeamUser")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.price)) {
printHtmlPart(29)
invokeTag('message','g',169,['code':("account.price.label"),'default':("Price")],-1)
printHtmlPart(30)
invokeTag('fieldValue','g',178,['bean':(accountInstance),'field':("price")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (accountInstance?.unlimitedImages)) {
printHtmlPart(31)
invokeTag('message','g',187,['code':("account.unlimitedImages.label"),'default':("Unlimited Images")],-1)
printHtmlPart(32)
invokeTag('formatBoolean','g',194,['boolean':(accountInstance?.unlimitedImages)],-1)
printHtmlPart(13)
}
printHtmlPart(33)
createTagBody(2, {->
printHtmlPart(34)
createTagBody(3, {->
invokeTag('message','g',205,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',205,['class':("edit btn btn-sm btn-danger"),'action':("edit"),'resource':(accountInstance)],3)
printHtmlPart(35)
invokeTag('actionSubmit','g',220,['class':("delete btn btn-sm btn-danger"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(36)
})
invokeTag('form','g',220,['url':([resource: accountInstance, action: 'delete']),'method':("DELETE")],2)
printHtmlPart(37)
})
invokeTag('captureBody','sitemesh',222,[:],1)
printHtmlPart(38)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536771795812L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
