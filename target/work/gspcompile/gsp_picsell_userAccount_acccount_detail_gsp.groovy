import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_userAccount_acccount_detail_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userAccount/_acccount_detail.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
invokeTag('message','g',4,['code':("profileUser.name.label"),'default':("Account")],-1)
printHtmlPart(1)
if(true && (accountInstance?.name)) {
printHtmlPart(2)
invokeTag('message','g',7,['message':(accountInstance?.name)],-1)
printHtmlPart(3)
}
printHtmlPart(4)
invokeTag('message','g',14,['code':("profileUser.type.label"),'default':("Type")],-1)
printHtmlPart(1)
if(true && (accountInstance?.type)) {
printHtmlPart(2)
invokeTag('message','g',17,['message':(accountInstance?.type)],-1)
printHtmlPart(3)
}
printHtmlPart(5)
invokeTag('message','g',24,['code':("profileUser.lisence.label"),'default':("Lisence")],-1)
printHtmlPart(1)
if(true && (accountInstance?.lisence)) {
printHtmlPart(2)
invokeTag('message','g',27,['message':(accountInstance?.lisence)],-1)
printHtmlPart(3)
}
printHtmlPart(6)
invokeTag('message','g',34,['code':("profileUser.maxImages.label"),'default':("Max Allowed Images")],-1)
printHtmlPart(1)
if(true && (accountInstance?.maxImages)) {
printHtmlPart(2)
invokeTag('message','g',37,['message':(accountInstance?.maxImages)],-1)
printHtmlPart(3)
}
printHtmlPart(7)
invokeTag('message','g',44,['code':("profileUser.maxTeamUser.label"),'default':("Max Allowed Team")],-1)
printHtmlPart(1)
if(true && (accountInstance?.maxTeamUser)) {
printHtmlPart(2)
invokeTag('message','g',47,['message':(accountInstance?.maxTeamUser)],-1)
printHtmlPart(3)
}
printHtmlPart(8)
invokeTag('message','g',55,['code':("profileUser.info.label"),'default':("More info")],-1)
printHtmlPart(1)
if(true && (accountInstance?.info)) {
printHtmlPart(2)
invokeTag('message','g',58,['message':(accountInstance?.info)],-1)
printHtmlPart(3)
}
printHtmlPart(9)
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
