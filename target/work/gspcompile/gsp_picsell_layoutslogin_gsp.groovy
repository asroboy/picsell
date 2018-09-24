import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layoutslogin_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/login.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',14,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1, shrink-to-fit=no")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'ico_picsell.ico'))
printHtmlPart(4)
createTagBody(2, {->
createClosureForHtmlPart(5, 3)
invokeTag('captureTitle','sitemesh',17,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',18,[:],2)
printHtmlPart(6)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js'))
printHtmlPart(8)
invokeTag('set','g',36,['var':("categories"),'value':(com.picsell.data.Category.list())],-1)
printHtmlPart(2)
invokeTag('set','g',38,['var':("mediaTypes"),'value':(com.picsell.data.MediaType.list())],-1)
printHtmlPart(9)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom.css'))
printHtmlPart(10)
invokeTag('layoutHead','g',41,[:],-1)
printHtmlPart(11)
invokeTag('layoutResources','r',42,[:],-1)
printHtmlPart(12)
})
invokeTag('captureHead','sitemesh',42,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(12)
invokeTag('render','g',43,['template':("/layouts/navigation")],-1)
printHtmlPart(0)
invokeTag('layoutBody','g',43,[:],-1)
printHtmlPart(13)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.js'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/js/sb-admin-2.js'))
printHtmlPart(15)
})
invokeTag('captureBody','sitemesh',58,[:],1)
printHtmlPart(16)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536261177462L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
