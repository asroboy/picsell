import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layouts_footer_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/_footer.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(createLink(controller: 'home', action: 'main'))
printHtmlPart(1)
expressionOut.print(createLink(controller: 'home', action: 'aboutUs'))
printHtmlPart(2)
expressionOut.print(createLink(controller: 'home', action: 'main'))
printHtmlPart(3)
expressionOut.print(createLink(controller: 'home', action: 'policy'))
printHtmlPart(4)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(5)
expressionOut.print(createLink(controller: 'home', action: 'contributors'))
printHtmlPart(6)
expressionOut.print(createLink(controller: 'home', action: 'index', params: [cat: 'hot_item']))
printHtmlPart(7)
expressionOut.print(createLink(controller: 'home', action: 'index', params: [cat: 'careers']))
printHtmlPart(8)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(9)
expressionOut.print(createLink(controller: 'home', action: 'tos'))
printHtmlPart(10)
expressionOut.print(createLink(controller: 'home', action: 'agreement'))
printHtmlPart(11)
expressionOut.print(resource(dir: 'images/logo', file: 'facebook.png'))
printHtmlPart(12)
expressionOut.print(resource(dir: 'images/logo', file: 'twitter.png'))
printHtmlPart(13)
expressionOut.print(resource(dir: 'images/logo', file: 'instagram.png'))
printHtmlPart(14)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534498141373L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
