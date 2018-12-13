import com.picsell.data.Category
import  com.picsell.security.Role
import  com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homemain_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/main.gsp" }
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
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',12,[:],2)
printHtmlPart(4)
expressionOut.print(resource(dir: 'unitegallery', file: 'dist/js/unitegallery.min.js'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'unitegallery', file: 'dist/css/unite-gallery.css'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'unitegallery', file: 'dist/themes/tilesgrid/ug-theme-tilesgrid.js'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'justified_gallery', file: 'dist/css/justifiedGallery.css'))
printHtmlPart(8)
expressionOut.print(resource(dir: 'justified_gallery', file: 'src/js/jquery.justifiedGallery.js'))
printHtmlPart(9)
createTagBody(2, {->
printHtmlPart(10)
invokeTag('set','g',24,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(10)
invokeTag('set','g',25,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(11)
expressionOut.print(createLink(controller: 'api', action: 'is_like', params: [user_id: userObject?.id]))
printHtmlPart(12)
expressionOut.print(userObject?.id)
printHtmlPart(13)
})
invokeTag('ifLoggedIn','sec',48,[:],2)
printHtmlPart(14)
})
invokeTag('captureHead','sitemesh',48,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(0)
if(true && (params.media)) {
printHtmlPart(2)
invokeTag('render','g',50,['template':("photos")],-1)
printHtmlPart(14)
}
else if(true && (params.cat)) {
printHtmlPart(2)
invokeTag('render','g',51,['template':("photos")],-1)
printHtmlPart(14)
}
else if(true && (params.key)) {
printHtmlPart(2)
invokeTag('render','g',54,['template':("photos")],-1)
printHtmlPart(14)
}
else if(true && (params.top)) {
printHtmlPart(2)
invokeTag('render','g',58,['template':("photos")],-1)
printHtmlPart(14)
}
else {
printHtmlPart(2)
invokeTag('render','g',62,['template':("video_banner")],-1)
printHtmlPart(15)
loop:{
int i = 0
for( item in (com.picsell.data.Item.findAllByStatus("approved")) ) {
printHtmlPart(16)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(17)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id))
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
loop:{
int i = 0
for( item in (items) ) {
printHtmlPart(20)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(17)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id))
printHtmlPart(21)
createTagBody(4, {->
printHtmlPart(22)
expressionOut.print(item?.id)
printHtmlPart(23)
expressionOut.print(item?.id)
printHtmlPart(24)
expressionOut.print(item?.id)
printHtmlPart(25)
expressionOut.print(item?.id)
printHtmlPart(26)
})
invokeTag('ifLoggedIn','sec',111,[:],4)
printHtmlPart(27)
expressionOut.print(createLink(controller: 'document', action: 'preview', id: item?.id))
printHtmlPart(28)
expressionOut.print(createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name]))
printHtmlPart(29)
i++
}
}
printHtmlPart(30)
}
printHtmlPart(31)
expressionOut.print(resource(dir: 'justified_gallery', file: 'test/webpack/dist/bundle.js'))
printHtmlPart(32)
})
invokeTag('captureBody','sitemesh',156,[:],1)
printHtmlPart(33)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537713649909L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
