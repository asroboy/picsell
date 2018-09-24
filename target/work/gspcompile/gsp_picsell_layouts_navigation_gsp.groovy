import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layouts_navigation_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/_navigation.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(1)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_no_text.png'))
printHtmlPart(2)
expressionOut.print(createLink(controller: 'home', action: 'main'))
printHtmlPart(3)
expressionOut.print(params.key)
printHtmlPart(4)
expressionOut.print(params.media ?: "Media Types")
printHtmlPart(5)
for( _it693615246 in (mediaTypes) ) {
changeItVariable(_it693615246)
printHtmlPart(6)
if(true && (it.parent == null)) {
printHtmlPart(7)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: it.name, cat: params.cat]))
printHtmlPart(8)
expressionOut.print(it.name)
printHtmlPart(9)
for( _it1050203606 in (it.child) ) {
changeItVariable(_it1050203606)
printHtmlPart(10)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: it.name, cat: params.cat]))
printHtmlPart(8)
expressionOut.print(it.name)
printHtmlPart(11)
}
printHtmlPart(12)
}
printHtmlPart(13)
}
printHtmlPart(14)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: "All media", cat: params.cat]))
printHtmlPart(15)
expressionOut.print(params.cat ?: "Category")
printHtmlPart(16)
for( _it603911349 in (categories) ) {
changeItVariable(_it603911349)
printHtmlPart(17)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: params.media, cat: it.name]))
printHtmlPart(8)
expressionOut.print(it.name)
printHtmlPart(18)
}
printHtmlPart(19)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: params.media, cat: "All category"]))
printHtmlPart(20)
createTagBody(1, {->
printHtmlPart(21)
expressionOut.print(createLink(controller: 'Home', action: 'mychart'))
printHtmlPart(22)
invokeTag('set','g',93,['var':("chart_count"),'value':(com.picsell.data.ItemChart.countByUserAndStatusNotEqual(userObject, "paid"))],-1)
printHtmlPart(6)
if(true && (chart_count > 0)) {
printHtmlPart(23)
expressionOut.print(chart_count)
printHtmlPart(24)
}
printHtmlPart(25)
})
invokeTag('ifLoggedIn','sec',97,[:],1)
printHtmlPart(26)
createTagBody(1, {->
printHtmlPart(27)
expressionOut.print(createLink(controller: 'login', action: 'auth'))
printHtmlPart(28)
expressionOut.print(createLink(controller: 'register', action: 'register'))
printHtmlPart(29)
})
invokeTag('ifNotLoggedIn','sec',108,[:],1)
printHtmlPart(30)
createTagBody(1, {->
printHtmlPart(31)
expressionOut.print(userObject?.username)
printHtmlPart(32)
invokeTag('set','g',120,['var':("profilePicture_"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId("ProfileUser", profileUser?.id))],-1)
printHtmlPart(33)
if(true && (profilePicture_)) {
printHtmlPart(34)
expressionOut.print(createLink(controller: 'image', action: 'download', id: profilePicture_?.id))
printHtmlPart(35)
}
else {
printHtmlPart(36)
expressionOut.print(resource(dir: 'images', file: 'avatar-default.jpg'))
printHtmlPart(37)
}
printHtmlPart(38)
for( userRole in (userRoles) ) {
printHtmlPart(39)
if(true && (userRole?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(40)
expressionOut.print(createLink(controller: 'dashboard', action: 'contributor'))
printHtmlPart(41)
}
printHtmlPart(39)
if(true && (userRole?.role?.authority.equals("ROLE_ADMIN"))) {
printHtmlPart(40)
expressionOut.print(createLink(controller: 'dashboard', action: 'admin'))
printHtmlPart(41)
}
printHtmlPart(39)
if(true && (userRole?.role?.authority.equals("ROLE_USER"))) {
printHtmlPart(42)
expressionOut.print(createLink(controller: 'dashboard', action: 'user'))
printHtmlPart(43)
}
printHtmlPart(6)
}
printHtmlPart(44)
if(true && (profileUser)) {
printHtmlPart(7)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id: profileUser?.id))
printHtmlPart(45)
}
else {
printHtmlPart(7)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id]))
printHtmlPart(45)
}
printHtmlPart(46)
for( userRole in (userRoles) ) {
printHtmlPart(39)
if(true && (userRole?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(47)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(48)
}
printHtmlPart(39)
if(true && (userRole?.role?.authority.equals("ROLE_ADMIN"))) {
printHtmlPart(47)
expressionOut.print(createLink(controller: 'userItem', action: 'contributorItems'))
printHtmlPart(49)
expressionOut.print(createLink(controller: 'home', action: 'setting'))
printHtmlPart(50)
}
printHtmlPart(6)
}
printHtmlPart(51)
expressionOut.print(createLink(controller: 'home', action: 'helpCenter'))
printHtmlPart(52)
expressionOut.print(createLink(controller: 'Tos', action: 'index'))
printHtmlPart(53)
expressionOut.print(createLink(controller: 'logout', action: 'index'))
printHtmlPart(54)
})
invokeTag('ifLoggedIn','sec',203,[:],1)
printHtmlPart(55)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [top: 1]))
printHtmlPart(56)
expressionOut.print(createLink(controller: 'home', action: 'packages'))
printHtmlPart(57)
expressionOut.print(createLink(controller: 'home', action: 'hotItems'))
printHtmlPart(58)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537232953158L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
