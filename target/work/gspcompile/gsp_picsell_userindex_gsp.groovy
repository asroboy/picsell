import com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/index.gsp" }
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
invokeTag('sortableColumn','g',30,['property':("username"),'title':(message(code: 'user.username.label', default: 'Username'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',32,['property':("password"),'title':(message(code: 'user.password.label', default: 'Password'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',34,['property':("accountExpired"),'title':(message(code: 'user.accountExpired.label', default: 'Account Expired'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',36,['property':("accountLocked"),'title':(message(code: 'user.accountLocked.label', default: 'Account Locked'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',38,['property':("enabled"),'title':(message(code: 'user.enabled.label', default: 'Enabled'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',40,['property':("passwordExpired"),'title':(message(code: 'user.passwordExpired.label', default: 'Password Expired'))],-1)
printHtmlPart(12)
loop:{
int i = 0
for( userInstance in (userInstanceList) ) {
printHtmlPart(13)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(14)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: userInstance, field: "username"))
})
invokeTag('link','g',48,['action':("show"),'id':(userInstance.id)],3)
printHtmlPart(15)
expressionOut.print(fieldValue(bean: userInstance, field: "password"))
printHtmlPart(15)
invokeTag('formatBoolean','g',52,['boolean':(userInstance.accountExpired)],-1)
printHtmlPart(15)
invokeTag('formatBoolean','g',54,['boolean':(userInstance.accountLocked)],-1)
printHtmlPart(15)
invokeTag('formatBoolean','g',56,['boolean':(userInstance.enabled)],-1)
printHtmlPart(15)
invokeTag('formatBoolean','g',58,['boolean':(userInstance.passwordExpired)],-1)
printHtmlPart(16)
i++
}
}
printHtmlPart(17)
invokeTag('paginate','g',65,['total':(userInstanceCount ?: 0)],-1)
printHtmlPart(18)
})
invokeTag('captureBody','sitemesh',71,[:],1)
printHtmlPart(19)
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
