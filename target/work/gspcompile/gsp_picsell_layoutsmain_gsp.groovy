import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layoutsmain_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/main.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
expressionOut.print(resource(dir: 'images', file: 'favicon.ico'))
printHtmlPart(2)
expressionOut.print(title ?: 'picsell')
printHtmlPart(3)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/bootstrap/css/bootstrap.min.css'))
printHtmlPart(4)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.css'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/css/sb-admin-2.css'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/morrisjs/morris.css'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css'))
printHtmlPart(8)
invokeTag('set','g',21,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field:'username')))],-1)
printHtmlPart(9)
invokeTag('set','g',22,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(10)
invokeTag('layoutHead','g',22,[:],-1)
printHtmlPart(9)
invokeTag('layoutResources','r',22,[:],-1)
printHtmlPart(11)
createTagBody(1, {->
printHtmlPart(12)
invokeTag('render','g',24,['template':("/layouts/menu")],-1)
printHtmlPart(13)
invokeTag('layoutBody','g',25,[:],-1)
printHtmlPart(14)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/jquery/jquery.min.js'))
printHtmlPart(15)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/bootstrap/js/bootstrap.min.js'))
printHtmlPart(16)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.js'))
printHtmlPart(17)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/raphael/raphael.min.js'))
printHtmlPart(18)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/morrisjs/morris.min.js'))
printHtmlPart(18)
expressionOut.print(resource(dir: 'sbadmin', file: '/data/morris-data.js'))
printHtmlPart(19)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/js/sb-admin-2.js'))
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',55,[:],1)
printHtmlPart(21)
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
