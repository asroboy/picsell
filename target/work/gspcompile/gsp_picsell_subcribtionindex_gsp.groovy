import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_subcribtionindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/subcribtion/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(3)
createTagBody(2, {->
invokeTag('captureTitle','sitemesh',12,[:],-1)
})
invokeTag('wrapTitleTag','sitemesh',13,[:],2)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',67,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(5)
loop:{
int i = 0
for( ac in (com.picsell.config.Account.findAllByType('Subscription')) ) {
printHtmlPart(6)
expressionOut.print(ac?.id)
printHtmlPart(7)
expressionOut.print(ac?.maxImages)
printHtmlPart(8)
expressionOut.print(ac?.price)
printHtmlPart(9)
expressionOut.print(ac?.inCurrency)
printHtmlPart(10)
i++
}
}
printHtmlPart(11)
loop:{
int i = 0
for( ac in (com.picsell.config.Account.findAllByType('On Demand')) ) {
printHtmlPart(12)
expressionOut.print(ac?.id)
printHtmlPart(13)
expressionOut.print(ac?.maxImages)
printHtmlPart(14)
expressionOut.print(ac?.price)
printHtmlPart(9)
expressionOut.print(ac?.inCurrency)
printHtmlPart(10)
i++
}
}
printHtmlPart(15)
loop:{
int i = 0
for( ac in (com.picsell.config.Account.findAllByType('Team')) ) {
printHtmlPart(16)
expressionOut.print(ac?.id)
printHtmlPart(13)
expressionOut.print(ac?.maxTeamUser)
printHtmlPart(17)
expressionOut.print(ac?.price)
printHtmlPart(9)
expressionOut.print(ac?.inCurrency)
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
loop:{
int i = 0
for( ac in (com.picsell.config.Account.findAllByType('Enterprice Plan')) ) {
printHtmlPart(20)
expressionOut.print(ac?.id)
printHtmlPart(21)
i++
}
}
printHtmlPart(22)
createTagBody(2, {->
printHtmlPart(23)
expressionOut.print(raw(com.picsell.config.TermOfService.findAll()?.get(0)?.tos))
printHtmlPart(24)
})
invokeTag('ifLoggedIn','sec',275,[:],2)
printHtmlPart(25)
createTagBody(2, {->
printHtmlPart(26)
expressionOut.print(createLink(controller: 'login', action: 'index'))
printHtmlPart(27)
expressionOut.print(createLink(controller: 'register', action: 'register'))
printHtmlPart(28)
})
invokeTag('ifNotLoggedIn','sec',302,[:],2)
printHtmlPart(29)
expressionOut.print(createLink(controller: 'subcribtion', action: 'subscribe'))
printHtmlPart(30)
expressionOut.print(sec.loggedInUserInfo(field: 'id'))
printHtmlPart(31)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(32)
})
invokeTag('captureBody','sitemesh',394,[:],1)
printHtmlPart(33)
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
