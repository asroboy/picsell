import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_registerresetPassword_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/register/resetPassword.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',3,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("login")],-1)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'button_red.css'))
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',6,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_small.png'))
printHtmlPart(6)
createTagBody(2, {->
printHtmlPart(7)
createTagBody(3, {->
printHtmlPart(8)
invokeTag('hiddenField','g',31,['name':("t"),'value':(token)],-1)
printHtmlPart(9)
invokeTag('message','g',32,['code':("spring.security.ui.resetPassword.description")],-1)
printHtmlPart(10)
invokeTag('passwordFieldRow','s2ui',43,['name':("password"),'size':("40"),'labelCodeDefault':("Password"),'class':("form-control"),'required':("")],-1)
printHtmlPart(11)
invokeTag('passwordFieldRow','s2ui',51,['name':("password2"),'size':("40"),'labelCodeDefault':("Password (again)"),'class':("form-control"),'required':("")],-1)
printHtmlPart(12)
})
invokeTag('form','s2ui',56,['beanName':("resetPasswordCommand")],3)
printHtmlPart(13)
})
invokeTag('formContainer','s2ui',56,['type':("resetPassword"),'focus':("password"),'width':("100%"),'style':("text-align: center")],2)
printHtmlPart(14)
})
invokeTag('captureBody','sitemesh',58,[:],1)
printHtmlPart(15)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542537984080L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
