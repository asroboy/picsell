import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

@GrailsPlugin(name='platform-core', version='1.0.RC5')
class gsp_platformCore_platformToolsshowNavigation_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/plugins/platform-core-1.0.RC5/grails-app/views/platformTools/showNavigation.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',4,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',4,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("platform/dev")],-1)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
invokeTag('menu','nav',15,['scope':("user")],-1)
printHtmlPart(6)
expressionOut.print(nav.activePath().encodeAsHTML())
printHtmlPart(7)
expressionOut.print(nav.activeNode()?.id.encodeAsHTML())
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
expressionOut.print(params.activePath)
printHtmlPart(10)
})
invokeTag('form','g',26,['mapping':("platformNormal"),'action':("showNavigation")],2)
printHtmlPart(11)
expressionOut.print(params.activePath)
printHtmlPart(12)
expressionOut.print(nav.firstActiveNode(path:params.activePath)?.id)
printHtmlPart(13)
invokeTag('primary','nav',30,['scope':(nav.scopeForActivationPath(path:params.activePath)),'path':(params.activePath)],-1)
printHtmlPart(14)
invokeTag('secondary','nav',33,['path':(params.activePath)],-1)
printHtmlPart(15)
invokeTag('menu','nav',36,['scope':(params.activePath),'path':(params.activePath),'class':(""),'depth':("2")],-1)
printHtmlPart(16)
createTagBody(2, {->
printHtmlPart(17)
invokeTag('callTag','p',40,['tag':("p:smartLink"),'attrs':(linkArgs)],-1)
printHtmlPart(18)
})
invokeTag('menu','nav',41,['scope':(params.activePath),'path':(params.activePath),'class':(""),'custom':("true"),'depth':("2")],2)
printHtmlPart(19)
for( scope in (navScopes) ) {
printHtmlPart(20)
expressionOut.print(scope.name.encodeAsHTML())
printHtmlPart(21)
createTagBody(3, {->
printHtmlPart(22)
expressionOut.print(item.id.encodeAsHTML())
printHtmlPart(23)
if(true && (item.id == params.activePath)) {
printHtmlPart(24)
}
printHtmlPart(25)
expressionOut.print(item.name.encodeAsHTML())
printHtmlPart(26)
expressionOut.print(item.order.encodeAsHTML())
printHtmlPart(27)
expressionOut.print(item.linkArgs.encodeAsHTML())
printHtmlPart(28)
createClosureForHtmlPart(29, 4)
invokeTag('callTag','p',53,['tag':("g:link"),'attrs':(new HashMap(item.linkArgs))],4)
printHtmlPart(30)
expressionOut.print(item.actionAliases?.encodeAsHTML())
printHtmlPart(31)
expressionOut.print(item.titleMessageCode.encodeAsHTML())
printHtmlPart(28)
invokeTag('message','g',55,['code':(item.titleMessageCode),'encodeAs':("HTML")],-1)
printHtmlPart(32)
expressionOut.print(item.titleDefault.encodeAsHTML())
printHtmlPart(33)
expressionOut.print(item.data.encodeAsHTML())
printHtmlPart(34)
expressionOut.print(item.visibleClosure ? 'from Closure' : item.visible)
printHtmlPart(35)
expressionOut.print(item.enabledClosure ? 'from Closure' : item.enabled)
printHtmlPart(36)
})
invokeTag('items','nav',60,['scope':(scope),'var':("item")],3)
printHtmlPart(37)
}
printHtmlPart(38)
for( n in (navNodesById) ) {
printHtmlPart(20)
expressionOut.print(n.key.encodeAsHTML())
printHtmlPart(39)
expressionOut.print(n.value.name.encodeAsHTML())
printHtmlPart(40)
if(true && (n.value instanceof org.grails.plugin.platform.navigation.NavigationItem)) {
printHtmlPart(28)
expressionOut.print(n.value.linkArgs.encodeAsHTML())
printHtmlPart(41)
}
printHtmlPart(42)
}
printHtmlPart(43)
for( n in (navNodesByControllerAction) ) {
printHtmlPart(20)
expressionOut.print(n.key.encodeAsHTML())
printHtmlPart(39)
expressionOut.print(n.value.name.encodeAsHTML())
printHtmlPart(28)
expressionOut.print(n.value.linkArgs.encodeAsHTML())
printHtmlPart(44)
}
printHtmlPart(45)
invokeTag('menu','nav',81,['scope':("footer")],-1)
printHtmlPart(46)
})
invokeTag('captureBody','sitemesh',85,[:],1)
printHtmlPart(47)
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
