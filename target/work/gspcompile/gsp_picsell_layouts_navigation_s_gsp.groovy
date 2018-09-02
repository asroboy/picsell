import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layouts_navigation_s_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/_navigation_s.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(createLink(controller: 'home', action: 'main'))
printHtmlPart(1)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_no_text.png'))
printHtmlPart(2)
expressionOut.print(createLink(controller: 'home', action: 'main'))
printHtmlPart(3)
expressionOut.print(params.key)
printHtmlPart(4)
expressionOut.print(params.media ?: "Media Type")
printHtmlPart(5)
for( _it1393085717 in (mediaTypes) ) {
changeItVariable(_it1393085717)
printHtmlPart(6)
if(true && (it.parent == null)) {
printHtmlPart(7)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: it.name, cat: params.cat]))
printHtmlPart(8)
expressionOut.print(it.name)
printHtmlPart(9)
for( _it1724926025 in (it.child) ) {
changeItVariable(_it1724926025)
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
for( _it1949951322 in (categories) ) {
changeItVariable(_it1949951322)
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
invokeTag('set','g',105,['var':("chart_count"),'value':(com.picsell.data.ItemChart.countByUserAndStatusNotEqual(userObject, "paid"))],-1)
printHtmlPart(6)
if(true && (chart_count > 0)) {
printHtmlPart(23)
expressionOut.print(chart_count)
printHtmlPart(24)
}
printHtmlPart(25)
})
invokeTag('ifLoggedIn','sec',109,[:],1)
printHtmlPart(26)
createTagBody(1, {->
printHtmlPart(27)
expressionOut.print(createLink(controller: 'login', action: 'auth'))
printHtmlPart(28)
expressionOut.print(createLink(controller: 'register', action: 'register'))
printHtmlPart(29)
})
invokeTag('ifNotLoggedIn','sec',120,[:],1)
printHtmlPart(30)
createTagBody(1, {->
printHtmlPart(31)
expressionOut.print(userObject?.username)
printHtmlPart(32)
invokeTag('set','g',132,['var':("profilePicture_"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId("ProfileUser", profileUser?.id))],-1)
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
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(39)
if(true && (profileUser)) {
printHtmlPart(7)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id: profileUser?.id))
printHtmlPart(40)
}
else {
printHtmlPart(7)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id]))
printHtmlPart(40)
}
printHtmlPart(41)
for( userRole in (userRoles) ) {
printHtmlPart(42)
if(true && (userRole?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(43)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(44)
}
printHtmlPart(42)
if(true && (userRole?.role?.authority.equals("ROLE_ADMIN"))) {
printHtmlPart(43)
expressionOut.print(createLink(controller: 'userItem', action: 'contributorItems'))
printHtmlPart(45)
expressionOut.print(createLink(controller: 'home', action: 'setting'))
printHtmlPart(46)
}
printHtmlPart(6)
}
printHtmlPart(47)
expressionOut.print(createLink(controller: 'home', action: 'helpCenter'))
printHtmlPart(48)
expressionOut.print(createLink(controller: 'Tos', action: 'index'))
printHtmlPart(49)
expressionOut.print(createLink(controller: 'logout', action: 'index'))
printHtmlPart(50)
})
invokeTag('ifLoggedIn','sec',199,[:],1)
printHtmlPart(51)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533825273808L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
