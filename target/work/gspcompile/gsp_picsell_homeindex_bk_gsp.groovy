import com.picsell.data.Category
import  com.picsell.security.Role
import  com.picsell.security.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homeindex_bk_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/index_bk.gsp" }
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
printHtmlPart(3)
expressionOut.print(resource(dir: 'unitegallery', file: 'dist/js/unitegallery.min.js'))
printHtmlPart(4)
expressionOut.print(resource(dir: 'unitegallery', file: 'dist/css/unite-gallery.css'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'unitegallery', file: 'dist/themes/tilesgrid/ug-theme-tilesgrid.js'))
printHtmlPart(6)
invokeTag('set','g',20,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(2)
invokeTag('set','g',21,['var':("userRoles"),'value':(com.picsell.security.UserRole.findAllByUser(userObject))],-1)
printHtmlPart(7)
createTagBody(2, {->
printHtmlPart(8)
expressionOut.print(createLink(controller: 'api', action: 'check_contrib_has_subs_acc'))
printHtmlPart(9)
expressionOut.print(userObject?.id)
printHtmlPart(10)
expressionOut.print(createLink(controller: 'home', action: 'packages'))
printHtmlPart(11)
expressionOut.print(createLink(controller: 'api', action: 'cheeck_user_items'))
printHtmlPart(12)
expressionOut.print(userObject?.id)
printHtmlPart(13)
expressionOut.print(createLink(controller: 'userItem', action: 'addFirstItem'))
printHtmlPart(14)
expressionOut.print(createLink(controller: 'api', action: 'is_like', params: [user_id: userObject?.id]))
printHtmlPart(15)
expressionOut.print(userObject?.id)
printHtmlPart(16)
})
invokeTag('ifLoggedIn','sec',79,[:],2)
printHtmlPart(17)
})
invokeTag('captureHead','sitemesh',131,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(0)
if(true && (params.cat)) {
printHtmlPart(18)
loop:{
int i = 0
for( item in (com.picsell.data.Item.findAllByStatusAndCategory("approved", com.picsell.data.Category.findByName(params.cat))) ) {
printHtmlPart(19)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(20)
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
invokeTag('ifLoggedIn','sec',176,[:],4)
printHtmlPart(27)
expressionOut.print(createLink(cotroller: 'home', action: 'index', params: [cat: item?.category?.name]))
printHtmlPart(28)
i++
}
}
printHtmlPart(29)
}
else {
printHtmlPart(2)
if(true && (params.key)) {
printHtmlPart(30)
loop:{
int i = 0
for( item in (items) ) {
printHtmlPart(31)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(32)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id))
printHtmlPart(33)
createTagBody(5, {->
printHtmlPart(34)
expressionOut.print(item?.id)
printHtmlPart(35)
expressionOut.print(item?.id)
printHtmlPart(36)
expressionOut.print(item?.id)
printHtmlPart(37)
expressionOut.print(item?.id)
printHtmlPart(38)
})
invokeTag('ifLoggedIn','sec',252,[:],5)
printHtmlPart(39)
expressionOut.print(createLink(cotroller: 'home', action: 'index', params: [cat: item?.category?.name]))
printHtmlPart(40)
i++
}
}
printHtmlPart(41)
}
else {
printHtmlPart(42)
invokeTag('render','g',292,['template':("video_banner")],-1)
printHtmlPart(43)
loop:{
int i = 0
for( item in (com.picsell.data.Item.findAllByStatus("approved")) ) {
printHtmlPart(44)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(32)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id))
printHtmlPart(45)
i++
}
}
printHtmlPart(46)
loop:{
int i = 0
for( item in (com.picsell.data.Item.findAllByStatus("approved")) ) {
printHtmlPart(47)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(32)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id))
printHtmlPart(48)
createTagBody(5, {->
printHtmlPart(34)
expressionOut.print(item?.id)
printHtmlPart(49)
expressionOut.print(item?.id)
printHtmlPart(36)
expressionOut.print(item?.id)
printHtmlPart(50)
expressionOut.print(item?.id)
printHtmlPart(51)
})
invokeTag('ifLoggedIn','sec',349,[:],5)
printHtmlPart(52)
expressionOut.print(createLink(cotroller: 'home', action: 'download_page', params: [id: item?.id]))
printHtmlPart(53)
expressionOut.print(createLink(cotroller: 'home', action: 'index', params: [cat: item?.category?.name]))
printHtmlPart(54)
i++
}
}
printHtmlPart(55)
}
printHtmlPart(0)
}
printHtmlPart(56)
})
invokeTag('captureBody','sitemesh',387,[:],1)
printHtmlPart(57)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533737471834L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
