import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

@GrailsPlugin(name='platform-core', version='1.0.RC5')
class gsp_platformCore_platformToolsshowUiExtensions_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/plugins/platform-core-1.0.RC5/grails-app/views/platformTools/showUiExtensions.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',3,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',3,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("platform/dev")],-1)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',5,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('tagDemo','p',13,['tag':("p:displayMessage")],-1)
printHtmlPart(5)
createClosureForHtmlPart(6, 2)
invokeTag('tagDemo','p',16,['tag':("p:button")],2)
printHtmlPart(7)
createClosureForHtmlPart(8, 2)
invokeTag('tagDemo','p',17,['tag':("p:button"),'kind':("anchor")],2)
printHtmlPart(7)
createClosureForHtmlPart(9, 2)
invokeTag('tagDemo','p',18,['tag':("p:button"),'kind':("submit"),'action':("update")],2)
printHtmlPart(7)
createClosureForHtmlPart(6, 2)
invokeTag('tagDemo','p',19,['tag':("p:button"),'kind':("button"),'text':("text.from.i18n"),'textScope':("my.i18n.scope")],2)
printHtmlPart(7)
createClosureForHtmlPart(9, 2)
invokeTag('tagDemo','p',20,['tag':("p:button"),'kind':("submit"),'action':("update"),'text':("text.from.i18n"),'textPlugin':("emailConfirmation")],2)
printHtmlPart(7)
invokeTag('tagDemo','p',21,['tag':("p:button"),'kind':("button"),'text':("text.from.i18n"),'textScope':("my.i18n.scope")],-1)
printHtmlPart(7)
invokeTag('tagDemo','p',22,['tag':("p:button"),'kind':("submit"),'action':("update"),'text':("text.from.i18n"),'textPlugin':("emailConfirmation")],-1)
printHtmlPart(10)
createTagBody(2, {->
printHtmlPart(11)
createClosureForHtmlPart(12, 3)
invokeTag('tagDemo','p',26,['tag':("p:label"),'class':("form-data"),'for':("field0"),'text':("this.is.field.zero")],3)
printHtmlPart(11)
invokeTag('tagDemo','p',27,['tag':("p:label"),'class':("form-data"),'for':("field1"),'text':("this.is.a.field")],-1)
printHtmlPart(11)
invokeTag('tagDemo','p',28,['tag':("p:label"),'class':("form-data"),'for':("field2"),'text':("this.is.another.field"),'textScope':("my.i18n.scope")],-1)
printHtmlPart(11)
invokeTag('tagDemo','p',29,['tag':("p:label"),'class':("form-data"),'for':("field3"),'text':("this.is.yet.another.field"),'textPlugin':("emailConfirmation")],-1)
printHtmlPart(7)
})
invokeTag('form','g',30,[:],2)
printHtmlPart(13)
invokeTag('tagDemo','p',33,['tag':("p:smartLink"),'controller':("platformTools")],-1)
printHtmlPart(7)
createClosureForHtmlPart(14, 2)
invokeTag('tagDemo','p',34,['tag':("p:smartLink"),'controller':("platformTools")],2)
printHtmlPart(7)
invokeTag('tagDemo','p',35,['tag':("p:smartLink"),'controller':("platformTools"),'action':("showNavigation")],-1)
printHtmlPart(7)
invokeTag('tagDemo','p',36,['tag':("p:smartLink"),'action':("showPluginConfig")],-1)
printHtmlPart(7)
invokeTag('tagDemo','p',37,['tag':("p:smartLink"),'action':("showPluginConfig"),'textScope':("my.i18n.scope")],-1)
printHtmlPart(7)
invokeTag('tagDemo','p',38,['tag':("p:smartLink"),'action':("showPluginConfig"),'textPlugin':("emailConfirmation")],-1)
printHtmlPart(15)
invokeTag('tagDemo','p',41,['tag':("p:organization")],-1)
printHtmlPart(7)
invokeTag('tagDemo','p',42,['tag':("p:siteName")],-1)
printHtmlPart(7)
invokeTag('tagDemo','p',43,['tag':("p:siteURL")],-1)
printHtmlPart(7)
invokeTag('tagDemo','p',44,['tag':("p:siteLink")],-1)
printHtmlPart(7)
invokeTag('tagDemo','p',45,['tag':("p:year")],-1)
printHtmlPart(16)
invokeTag('prettyPrint','p',48,['value':(pluginSessionInfo)],-1)
printHtmlPart(17)
invokeTag('prettyPrint','p',49,['value':(pluginFlashInfo)],-1)
printHtmlPart(18)
invokeTag('prettyPrint','p',50,['value':(pluginRequestInfo)],-1)
printHtmlPart(19)
createClosureForHtmlPart(20, 2)
invokeTag('tagDemo','p',56,['tag':("p:text"),'code':("test.message")],2)
printHtmlPart(21)
createClosureForHtmlPart(22, 2)
invokeTag('tagDemo','p',59,['tag':("p:text"),'code':("test.missing.message")],2)
printHtmlPart(23)
createClosureForHtmlPart(20, 2)
invokeTag('tagDemo','p',64,['tag':("p:text"),'codes':(['nonsense.message', 'test.message'])],2)
printHtmlPart(24)
})
invokeTag('captureBody','sitemesh',69,[:],1)
printHtmlPart(25)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1358236820000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
