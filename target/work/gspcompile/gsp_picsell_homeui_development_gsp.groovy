import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homeui_development_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/ui_development.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1, shrink-to-fit=no")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',14,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(3)
createTagBody(2, {->
createClosureForHtmlPart(4, 3)
invokeTag('captureTitle','sitemesh',18,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',18,[:],2)
printHtmlPart(5)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css'))
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',56,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(7)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_no_text.png'))
printHtmlPart(8)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(9)
expressionOut.print(createLink(controller: 'home', action: 'aboutUs'))
printHtmlPart(10)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(11)
expressionOut.print(createLink(controller: 'home', action: 'policy'))
printHtmlPart(12)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(13)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(14)
expressionOut.print(createLink(controller: 'home', action: 'contributors'))
printHtmlPart(15)
expressionOut.print(createLink(controller: 'home', action: 'index', params: [cat: 'hot_item']))
printHtmlPart(16)
expressionOut.print(createLink(controller: 'home', action: 'index', params: [cat: 'careers']))
printHtmlPart(17)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(18)
expressionOut.print(createLink(controller: 'home', action: 'tos'))
printHtmlPart(19)
expressionOut.print(createLink(controller: 'home', action: 'agreement'))
printHtmlPart(20)
expressionOut.print(resource(dir: 'images/logo', file: 'facebook.png'))
printHtmlPart(21)
expressionOut.print(resource(dir: 'images/logo', file: 'twitter.png'))
printHtmlPart(22)
expressionOut.print(resource(dir: 'images/logo', file: 'instagram.png'))
printHtmlPart(23)
expressionOut.print(resource(dir: 'images/logo', file: 'logo.jpg'))
printHtmlPart(24)
})
invokeTag('captureBody','sitemesh',242,[:],1)
printHtmlPart(25)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1530551485629L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
