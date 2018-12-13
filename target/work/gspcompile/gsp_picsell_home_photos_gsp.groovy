import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_home_photos_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/_photos.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
loop:{
int i = 0
for( item in (items) ) {
printHtmlPart(1)
invokeTag('set','g',4,['var':("image"),'value':(com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName))],-1)
printHtmlPart(2)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(3)
expressionOut.print(createLink(controller: 'document', action: 'download', id: image?.id))
printHtmlPart(4)
createTagBody(2, {->
printHtmlPart(5)
expressionOut.print(item?.id)
printHtmlPart(6)
expressionOut.print(item?.id)
printHtmlPart(7)
expressionOut.print(item?.id)
printHtmlPart(8)
expressionOut.print(item?.id)
printHtmlPart(9)
})
invokeTag('ifLoggedIn','sec',21,[:],2)
printHtmlPart(10)
expressionOut.print(createLink(controller: 'document', action: 'preview', id: image?.id))
printHtmlPart(11)
expressionOut.print(createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name]))
printHtmlPart(12)
i++
}
}
printHtmlPart(13)
if(true && (itemInstanceCount > params.max)) {
printHtmlPart(1)

def mod = itemInstanceCount % params.max

printHtmlPart(1)

Integer page = itemInstanceCount / params.max

printHtmlPart(1)

def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0

printHtmlPart(14)
if(true && (offsetNow > 0)) {
printHtmlPart(15)
expressionOut.print(createLink(action: 'main', params: [media: params.media, cat: params.cat, key: params.key, offset: (offsetNow - params.max), max: params.max]))
printHtmlPart(16)
}
printHtmlPart(17)
for( i in ((1..page).toList()) ) {
printHtmlPart(15)
expressionOut.print(createLink(action: 'main', params: [media: params.media, cat: params.cat, key: params.key, offset: ((i - 1) * params.max), max: params.max]))
printHtmlPart(18)
expressionOut.print(i)
printHtmlPart(19)
}
printHtmlPart(1)
if(true && (mod > 0)) {
printHtmlPart(15)
expressionOut.print(createLink(action: 'main', params: [media: params.media, cat: params.cat, key: params.key, offset: page * params.max, max: params.max]))
printHtmlPart(18)
expressionOut.print(page + 1)
printHtmlPart(19)
}
printHtmlPart(14)
if(true && (offsetNow < page * params.max)) {
printHtmlPart(15)
expressionOut.print(createLink(action: 'main', params: [media: params.media, cat: params.cat, key: params.key, offset: offsetNow + params.max, max: params.max]))
printHtmlPart(20)
}
printHtmlPart(21)
}
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537713667447L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
