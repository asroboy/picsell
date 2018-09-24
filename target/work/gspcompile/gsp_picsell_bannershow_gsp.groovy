import com.picsell.data.Banner
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_bannershow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/banner/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'banner.label', default: 'Banner'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',10,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
if(true && (flash.message)) {
printHtmlPart(6)
expressionOut.print(flash.message)
printHtmlPart(7)
}
printHtmlPart(8)
if(true && (bannerInstance?.type)) {
printHtmlPart(9)
invokeTag('message','g',34,['code':("banner.type.label"),'default':("Type")],-1)
printHtmlPart(10)
invokeTag('fieldValue','g',39,['bean':(bannerInstance),'field':("type")],-1)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (bannerInstance?.description)) {
printHtmlPart(13)
invokeTag('message','g',50,['code':("banner.description.label"),'default':("Description")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',55,['bean':(bannerInstance),'field':("description")],-1)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (bannerInstance?.isActive)) {
printHtmlPart(15)
invokeTag('message','g',66,['code':("banner.isActive.label"),'default':("Is Active")],-1)
printHtmlPart(16)
invokeTag('formatBoolean','g',71,['boolean':(bannerInstance?.isActive)],-1)
printHtmlPart(17)
}
printHtmlPart(18)
invokeTag('set','g',83,['var':("video_resource"),'value':(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(bannerInstance?.id, bannerInstance.class.simpleName)?.id))],-1)
printHtmlPart(19)
expressionOut.print(video_resource)
printHtmlPart(20)
createTagBody(2, {->
printHtmlPart(21)
createTagBody(3, {->
invokeTag('message','g',97,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',97,['class':("btn btn-sm btn-danger"),'action':("edit"),'resource':(bannerInstance)],3)
printHtmlPart(22)
})
invokeTag('form','g',98,['url':([resource: bannerInstance, action: 'delete']),'method':("DELETE")],2)
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',99,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1532220403846L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
