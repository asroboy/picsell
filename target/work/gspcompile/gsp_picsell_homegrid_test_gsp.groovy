import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homegrid_test_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/grid_test.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(3)
expressionOut.print(resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js'))
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
})
invokeTag('captureHead','sitemesh',54,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(10)
loop:{
int i = 0
for( item in (com.picsell.data.Item.findAllByStatus("approved")) ) {
printHtmlPart(11)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id))
printHtmlPart(12)
createTagBody(3, {->
printHtmlPart(13)
expressionOut.print(item?.id)
printHtmlPart(14)
expressionOut.print(item?.id)
printHtmlPart(15)
expressionOut.print(item?.id)
printHtmlPart(16)
expressionOut.print(item?.id)
printHtmlPart(17)
})
invokeTag('ifLoggedIn','sec',79,[:],3)
printHtmlPart(18)
expressionOut.print(createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name]))
printHtmlPart(19)
i++
}
}
printHtmlPart(20)
expressionOut.print(resource(dir: 'justified_gallery', file: 'test/webpack/dist/bundle.js'))
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',87,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534470290554L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
