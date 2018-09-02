import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_layouts_menu_admingh_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/_menu_admingh.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(createLink(controller: 'home', action: 'index'))
printHtmlPart(1)
expressionOut.print(createLink(controller: 'account', action: 'index'))
printHtmlPart(2)
expressionOut.print(createLink(controller: 'termOfService', action: 'index'))
printHtmlPart(3)
expressionOut.print(createLink(controller: 'category', action: 'index'))
printHtmlPart(4)
expressionOut.print(createLink(controller: 'item', action: 'index'))
printHtmlPart(5)
expressionOut.print(createLink(controller: 'fileItem', action: 'index'))
printHtmlPart(6)
expressionOut.print(createLink(controller: 'user', action: 'index'))
printHtmlPart(7)
expressionOut.print(createLink(controller: 'role', action: 'index'))
printHtmlPart(8)
expressionOut.print(createLink(controller: 'requestmap', action: 'index'))
printHtmlPart(9)
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
