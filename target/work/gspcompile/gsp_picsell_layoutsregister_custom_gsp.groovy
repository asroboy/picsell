import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layoutsregister_custom_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/register_custom.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',16,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',17,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',17,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(4, 3)
invokeTag('captureTitle','sitemesh',18,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',20,[:],2)
printHtmlPart(5)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/bootstrap/css/bootstrap.min.css'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.css'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/css/sb-admin-2.css'))
printHtmlPart(8)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css'))
printHtmlPart(9)
invokeTag('layoutHead','g',38,[:],-1)
printHtmlPart(3)
invokeTag('layoutResources','r',38,[:],-1)
printHtmlPart(10)
})
invokeTag('captureHead','sitemesh',38,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(11)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(12)
invokeTag('layoutBody','g',53,[:],-1)
printHtmlPart(13)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/jquery/jquery.min.js'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/bootstrap/js/bootstrap.min.js'))
printHtmlPart(15)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.js'))
printHtmlPart(16)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/js/sb-admin-2.js'))
printHtmlPart(17)
})
invokeTag('captureBody','sitemesh',72,['style':("background-image: url(${resource(dir: 'images', file: 'background.jpeg')}); background-size: auto; background-repeat: no-repeat")],1)
printHtmlPart(18)
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
