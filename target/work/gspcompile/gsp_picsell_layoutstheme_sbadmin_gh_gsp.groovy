import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layoutstheme_sbadmin_gh_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/theme_sbadmin_gh.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1, shrink-to-fit=no")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
expressionOut.print(title ?: 'picsell')
})
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',10,[:],2)
printHtmlPart(2)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/bootstrap/css/bootstrap.min.css'))
printHtmlPart(3)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/font-awesome/css/font-awesome.min.css'))
printHtmlPart(4)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/datatables/dataTables.bootstrap4.css'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'css/sb-admin.css'))
printHtmlPart(6)
invokeTag('layoutHead','g',20,[:],-1)
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',21,[:],1)
printHtmlPart(8)
createTagBody(1, {->
printHtmlPart(9)
invokeTag('render','g',30,['template':("/layouts/menu_admingh")],-1)
printHtmlPart(10)
invokeTag('layoutBody','g',34,[:],-1)
printHtmlPart(11)
invokeTag('render','g',38,['template':("/layouts/adminpage_footer")],-1)
printHtmlPart(12)
expressionOut.print(createLink(controller: 'logout'))
printHtmlPart(13)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/jquery/jquery.min.js'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js'))
printHtmlPart(15)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/jquery-easing/jquery.easing.min.js'))
printHtmlPart(16)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/chart.js/Chart.min.js'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/datatables/jquery.dataTables.js'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'vendor/datatables/dataTables.bootstrap4.js'))
printHtmlPart(17)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'js/sb-admin.min.js'))
printHtmlPart(18)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'js/sb-admin-datatables.min.js'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'sb-admin-gh-pages', file: 'js/sb-admin-charts.min.js'))
printHtmlPart(19)
})
invokeTag('captureBody','sitemesh',77,['class':("fixed-nav sticky-footer bg-dark"),'id':("page-top")],1)
printHtmlPart(20)
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
