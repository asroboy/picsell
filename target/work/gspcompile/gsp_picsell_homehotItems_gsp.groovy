import com.picsell.security.Role
import  com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homehotItems_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/hotItems.gsp" }
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
createTagBody(2, {->
invokeTag('captureTitle','sitemesh',11,[:],-1)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(2)
invokeTag('set','g',14,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(2)
invokeTag('set','g',15,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(2)
invokeTag('set','g',16,['var':("userAccounts"),'value':(com.picsell.data.UserAccount.findAllByUser(userObject))],-1)
printHtmlPart(3)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(4)
expressionOut.print(resource(dir: 'justified_gallery', file: 'dist/css/justifiedGallery.min.css'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'justified_gallery', file: 'dist/js/jquery.justifiedGallery.min.js'))
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',36,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(7)
for( category in (categories) ) {
printHtmlPart(8)
expressionOut.print(category?.name.toUpperCase())
printHtmlPart(9)
loop:{
int i = 0
for( item in (items) ) {
printHtmlPart(10)
if(true && (item.category == category)) {
printHtmlPart(11)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(12)
expressionOut.print(createLink(controller: 'document', action: 'download', id: item?.id))
printHtmlPart(13)
createTagBody(5, {->
printHtmlPart(14)
expressionOut.print(item?.id)
printHtmlPart(15)
expressionOut.print(item?.id)
printHtmlPart(16)
expressionOut.print(item?.id)
printHtmlPart(17)
expressionOut.print(item?.id)
printHtmlPart(18)
})
invokeTag('ifLoggedIn','sec',91,[:],5)
printHtmlPart(19)
expressionOut.print(createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name]))
printHtmlPart(20)
}
printHtmlPart(21)
i++
}
}
printHtmlPart(22)
}
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',107,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534471492310L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
