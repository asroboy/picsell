import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layoutsregister_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/register.gsp" }
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
printHtmlPart(4)
expressionOut.print(resource(dir: 'images', file: 'ico_picsell.ico'))
printHtmlPart(5)
createTagBody(2, {->
createClosureForHtmlPart(6, 3)
invokeTag('captureTitle','sitemesh',19,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',20,[:],2)
printHtmlPart(7)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/bootstrap/css/bootstrap.min.css'))
printHtmlPart(8)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.css'))
printHtmlPart(9)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/css/sb-admin-2.css'))
printHtmlPart(10)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css'))
printHtmlPart(11)
expressionOut.print(resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js'))
printHtmlPart(12)
expressionOut.print(resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js'))
printHtmlPart(13)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom.css'))
printHtmlPart(14)
invokeTag('layoutHead','g',43,[:],-1)
printHtmlPart(3)
invokeTag('layoutResources','r',43,[:],-1)
printHtmlPart(15)
})
invokeTag('captureHead','sitemesh',43,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(15)
invokeTag('render','g',47,['template':("/layouts/navigation_s")],-1)
printHtmlPart(15)
invokeTag('layoutBody','g',47,[:],-1)
printHtmlPart(16)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/jquery/jquery.min.js'))
printHtmlPart(17)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/bootstrap/js/bootstrap.min.js'))
printHtmlPart(18)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.js'))
printHtmlPart(19)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/js/sb-admin-2.js'))
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',64,[:],1)
printHtmlPart(21)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536258994821L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
