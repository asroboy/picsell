import com.picsell.data.MediaType
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
expressionOut.print(createLink(controller: 'home', action: 'main'))
printHtmlPart(1)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_no_text.png'))
printHtmlPart(2)
expressionOut.print(createLink(controller: 'home', action: 'main'))
printHtmlPart(3)
expressionOut.print(params.key)
printHtmlPart(4)
expressionOut.print(params.media ?: "Media Types")
printHtmlPart(5)
for( _it1812393228 in (mediaTypes) ) {
changeItVariable(_it1812393228)
printHtmlPart(6)
if(true && (it.parent == null)) {
printHtmlPart(7)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: it.name, cat: params.cat]))
printHtmlPart(8)
expressionOut.print(it.name)
printHtmlPart(9)

ArrayList<String> childMt = new ArrayList<>()
                                for (int i = 0; i < it.child.size(); i++){
                                    childMt.add(it.child[i].name)
                                }
                                Collections.sort(childMt)

printHtmlPart(10)
loop:{
int i = 0
for( child in (childMt) ) {
printHtmlPart(11)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: child, cat: params.cat]))
printHtmlPart(8)
expressionOut.print(child)
printHtmlPart(12)
i++
}
}
printHtmlPart(13)
}
printHtmlPart(14)
}
printHtmlPart(15)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: "All Media", cat: params.cat]))
printHtmlPart(16)
expressionOut.print(params.cat ?: "Category")
printHtmlPart(17)
for( _it984933948 in (categories) ) {
changeItVariable(_it984933948)
printHtmlPart(18)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: params.media, cat: it.name]))
printHtmlPart(8)
expressionOut.print(it.name)
printHtmlPart(19)
}
printHtmlPart(20)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [media: params.media, cat: "All Categories"]))
printHtmlPart(21)
createTagBody(1, {->
printHtmlPart(22)
expressionOut.print(createLink(controller: 'Home', action: 'mychart'))
printHtmlPart(23)
invokeTag('set','g',99,['var':("chart_count"),'value':(com.picsell.data.ItemChart.countByUserAndStatusNotEqual(userObject, "paid"))],-1)
printHtmlPart(6)
if(true && (chart_count > 0)) {
printHtmlPart(24)
expressionOut.print(chart_count)
printHtmlPart(25)
}
printHtmlPart(26)
})
invokeTag('ifLoggedIn','sec',103,[:],1)
printHtmlPart(27)
createTagBody(1, {->
printHtmlPart(28)
expressionOut.print(createLink(controller: 'login', action: 'auth'))
printHtmlPart(29)
expressionOut.print(createLink(controller: 'register', action: 'register'))
printHtmlPart(30)
})
invokeTag('ifNotLoggedIn','sec',114,[:],1)
printHtmlPart(31)
createTagBody(1, {->
printHtmlPart(32)
expressionOut.print(userObject?.username)
printHtmlPart(33)
invokeTag('set','g',125,['var':("profilePicture_"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId("User", userObject?.id))],-1)
printHtmlPart(34)
if(true && (profilePicture_)) {
printHtmlPart(35)
expressionOut.print(createLink(controller: 'image', action: 'download', id: profilePicture_?.id))
printHtmlPart(36)
}
else {
printHtmlPart(37)
expressionOut.print(resource(dir: 'images', file: 'avatar-default.jpg'))
printHtmlPart(38)
}
printHtmlPart(39)
for( userRole in (userRoles) ) {
printHtmlPart(40)
if(true && (userRole?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(41)
expressionOut.print(createLink(controller: 'dashboard', action: 'contributor'))
printHtmlPart(42)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id: userObject?.id))
printHtmlPart(43)
}
printHtmlPart(40)
if(true && (userRole?.role?.authority.equals("ROLE_ADMIN"))) {
printHtmlPart(41)
expressionOut.print(createLink(controller: 'dashboard', action: 'admin'))
printHtmlPart(44)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', params: [id: userObject?.id]))
printHtmlPart(45)
}
printHtmlPart(40)
if(true && (userRole?.role?.authority.equals("ROLE_USER"))) {
printHtmlPart(46)
expressionOut.print(createLink(controller: 'dashboard', action: 'user'))
printHtmlPart(47)
}
printHtmlPart(6)
}
printHtmlPart(48)
for( userRole in (userRoles) ) {
printHtmlPart(40)
if(true && (userRole?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(49)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(50)
}
printHtmlPart(40)
if(true && (userRole?.role?.authority.equals("ROLE_ADMIN"))) {
printHtmlPart(49)
expressionOut.print(createLink(controller: 'userItem', action: 'contributorItems'))
printHtmlPart(51)
expressionOut.print(createLink(controller: 'home', action: 'setting'))
printHtmlPart(52)
}
printHtmlPart(6)
}
printHtmlPart(53)
expressionOut.print(createLink(controller: 'home', action: 'helpCenter'))
printHtmlPart(54)
expressionOut.print(createLink(controller: 'Tos', action: 'index'))
printHtmlPart(55)
expressionOut.print(createLink(controller: 'logout', action: 'index'))
printHtmlPart(56)
})
invokeTag('ifLoggedIn','sec',215,[:],1)
printHtmlPart(57)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [top: 1]))
printHtmlPart(58)
expressionOut.print(createLink(controller: 'home', action: 'packages'))
printHtmlPart(59)
expressionOut.print(createLink(controller: 'home', action: 'hotItems'))
printHtmlPart(60)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542541628855L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
