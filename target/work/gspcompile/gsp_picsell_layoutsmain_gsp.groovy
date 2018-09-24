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
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',14,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',16,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',16,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'ico_picsell.ico'))
printHtmlPart(4)
createTagBody(2, {->
createTagBody(3, {->
expressionOut.print(title ?: 'picsell')
})
invokeTag('captureTitle','sitemesh',19,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',20,[:],2)
printHtmlPart(5)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/bootstrap/css/bootstrap.min.css'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.css'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/css/sb-admin-2.css'))
printHtmlPart(8)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/morrisjs/morris.css'))
printHtmlPart(9)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css'))
printHtmlPart(10)
invokeTag('set','g',47,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(2)
invokeTag('set','g',48,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(11)
invokeTag('layoutHead','g',48,[:],-1)
printHtmlPart(2)
invokeTag('layoutResources','r',48,[:],-1)
printHtmlPart(12)
})
invokeTag('captureHead','sitemesh',48,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(13)
invokeTag('render','g',54,['template':("/layouts/menu")],-1)
printHtmlPart(14)
invokeTag('layoutBody','g',59,[:],-1)
printHtmlPart(15)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/jquery/jquery.min.js'))
printHtmlPart(16)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/bootstrap/js/bootstrap.min.js'))
printHtmlPart(17)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.js'))
printHtmlPart(18)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/raphael/raphael.min.js'))
printHtmlPart(19)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/morrisjs/morris.min.js'))
printHtmlPart(19)
expressionOut.print(resource(dir: 'sbadmin', file: '/data/morris-data.js'))
printHtmlPart(20)
expressionOut.print(resource(dir: 'sbadmin', file: '/dist/js/sb-admin-2.js'))
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',85,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537232608836L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
