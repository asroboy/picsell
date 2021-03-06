import com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layoutstheme_portfolio_gh_item_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/theme_portfolio_gh_item.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1, shrink-to-fit=no")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',12,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',12,[:],2)
printHtmlPart(4)
expressionOut.print(resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/css/bootstrap.min.css'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'portfolio-gh-pages', file: 'css/3-col-portfolio.css'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js'))
printHtmlPart(8)
expressionOut.print(resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js'))
printHtmlPart(9)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom.css'))
printHtmlPart(10)
invokeTag('set','g',33,['var':("categories"),'value':(com.picsell.data.Category.list())],-1)
printHtmlPart(2)
invokeTag('set','g',37,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(2)
invokeTag('set','g',39,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(2)
invokeTag('layoutHead','g',39,[:],-1)
printHtmlPart(11)
})
invokeTag('captureHead','sitemesh',39,[:],1)
printHtmlPart(12)
createTagBody(1, {->
printHtmlPart(13)
invokeTag('render','g',40,['template':("/layouts/navigation_s")],-1)
printHtmlPart(13)
invokeTag('layoutBody','g',40,[:],-1)
printHtmlPart(13)
invokeTag('render','g',40,['template':("/layouts/footer")],-1)
printHtmlPart(14)
expressionOut.print(resource(dir: 'portfolio-item-gh', file: 'vendor/jquery/jquery.min.js'))
printHtmlPart(15)
expressionOut.print(resource(dir: 'portfolio-item-gh', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js'))
printHtmlPart(16)
})
invokeTag('captureBody','sitemesh',56,[:],1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533862642695L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
