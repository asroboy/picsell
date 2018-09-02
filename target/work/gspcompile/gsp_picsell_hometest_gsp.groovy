import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_hometest_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/test.gsp" }
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
})
invokeTag('captureHead','sitemesh',12,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(4)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'images/logo', file: 'logo_small.jpg'))
printHtmlPart(6)
expressionOut.print(params.key)
printHtmlPart(7)
for( _it721286742 in (categories) ) {
changeItVariable(_it721286742)
printHtmlPart(8)
expressionOut.print(createLink(controller: 'home', action: 'index', params: [cat: it.name]))
printHtmlPart(9)
expressionOut.print(it.name)
printHtmlPart(10)
}
printHtmlPart(11)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(12)
invokeTag('render','g',64,['template':("/layouts/category")],-1)
printHtmlPart(13)
createTagBody(2, {->
printHtmlPart(14)
invokeTag('set','g',73,['var':("profilePicture_"),'value':(com.picsell.data.ImageFile.findByTableNameAndTableId(profileUser?.class?.simpleName, profileUser?.id))],-1)
printHtmlPart(15)
if(true && (profilePicture_)) {
printHtmlPart(16)
expressionOut.print(createLink(controller: 'image', action: 'download', id: profilePicture_?.id))
printHtmlPart(17)
}
else {
printHtmlPart(18)
expressionOut.print(resource(dir: 'images', file: 'avatar-default.jpg'))
printHtmlPart(19)
}
printHtmlPart(20)
expressionOut.print(resource(dir: 'images', file: 'icon_menu_dots.png'))
printHtmlPart(21)
if(true && (profileUser)) {
printHtmlPart(22)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', id: profileUser?.id))
printHtmlPart(23)
}
else {
printHtmlPart(22)
expressionOut.print(createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id]))
printHtmlPart(23)
}
printHtmlPart(24)
for( userRole in (userRoles) ) {
printHtmlPart(25)
if(true && (userRole?.role?.authority.equals("ROLE_CONTRIBUTOR"))) {
printHtmlPart(26)
expressionOut.print(createLink(controller: 'userItem', action: 'index'))
printHtmlPart(27)
}
printHtmlPart(25)
if(true && (userRole?.role?.authority.equals("ROLE_ADMIN"))) {
printHtmlPart(26)
expressionOut.print(createLink(controller: 'userItem', action: 'contributorItems'))
printHtmlPart(28)
}
printHtmlPart(29)
}
printHtmlPart(30)
expressionOut.print(createLink(controller: 'home', action: 'helpCenter'))
printHtmlPart(31)
expressionOut.print(createLink(controller: 'Tos', action: 'index'))
printHtmlPart(32)
expressionOut.print(createLink(controller: 'home', action: 'setting'))
printHtmlPart(33)
expressionOut.print(createLink(controller: 'logout', action: 'index'))
printHtmlPart(34)
})
invokeTag('ifLoggedIn','sec',139,[:],2)
printHtmlPart(35)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(36)
expressionOut.print(createLink(controller: 'home', action: 'packages'))
printHtmlPart(37)
expressionOut.print(createLink(controller: 'home', action: 'hotItems'))
printHtmlPart(38)
expressionOut.print(params.cat)
printHtmlPart(39)
})
invokeTag('captureBody','sitemesh',264,[:],1)
printHtmlPart(40)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1530633259326L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
