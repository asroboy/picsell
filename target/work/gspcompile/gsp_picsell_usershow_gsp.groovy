import com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_usershow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'user.label', default: 'User'))],-1)
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
if(true && (userInstance?.username)) {
printHtmlPart(11)
invokeTag('message','g',35,['code':("user.username.label"),'default':("Username")],-1)
printHtmlPart(12)
invokeTag('fieldValue','g',39,['bean':(userInstance),'field':("username")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userInstance?.password)) {
printHtmlPart(15)
invokeTag('message','g',50,['code':("user.password.label"),'default':("Password")],-1)
printHtmlPart(16)
invokeTag('fieldValue','g',55,['bean':(userInstance),'field':("password")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userInstance?.accountExpired)) {
printHtmlPart(17)
invokeTag('message','g',66,['code':("user.accountExpired.label"),'default':("Account Expired")],-1)
printHtmlPart(18)
invokeTag('formatBoolean','g',69,['boolean':(userInstance?.accountExpired)],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userInstance?.accountLocked)) {
printHtmlPart(19)
invokeTag('message','g',80,['code':("user.accountLocked.label"),'default':("Account Locked")],-1)
printHtmlPart(20)
invokeTag('formatBoolean','g',84,['boolean':(userInstance?.accountLocked)],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userInstance?.enabled)) {
printHtmlPart(21)
invokeTag('message','g',91,['code':("user.enabled.label"),'default':("Enabled")],-1)
printHtmlPart(22)
invokeTag('formatBoolean','g',99,['boolean':(userInstance?.enabled)],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (userInstance?.passwordExpired)) {
printHtmlPart(23)
invokeTag('message','g',107,['code':("user.passwordExpired.label"),'default':("Password Expired")],-1)
printHtmlPart(24)
invokeTag('formatBoolean','g',115,['boolean':(userInstance?.passwordExpired)],-1)
printHtmlPart(13)
}
printHtmlPart(25)
createTagBody(2, {->
printHtmlPart(26)
createTagBody(3, {->
invokeTag('message','g',127,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',127,['class':("edit btn btn-info"),'action':("edit"),'resource':(userInstance)],3)
printHtmlPart(27)
invokeTag('actionSubmit','g',135,['class':("delete btn btn-info"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(28)
})
invokeTag('form','g',135,['url':([resource:userInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(29)
})
invokeTag('captureBody','sitemesh',136,[:],1)
printHtmlPart(30)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1524965736000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
