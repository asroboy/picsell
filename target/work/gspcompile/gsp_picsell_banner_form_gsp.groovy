import com.picsell.data.Banner
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_banner_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/banner/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: bannerInstance, field: 'type', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("banner.type.label"),'default':("Type")],-1)
printHtmlPart(2)
invokeTag('select','g',11,['name':("type"),'from':(bannerInstance.constraints.type.inList),'value':(bannerInstance?.type),'valueMessagePrefix':("banner.type"),'noSelection':(['': '']),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bannerInstance, field: 'description', 'error'))
printHtmlPart(4)
invokeTag('message','g',17,['code':("banner.description.label"),'default':("Description")],-1)
printHtmlPart(2)
invokeTag('textField','g',20,['name':("description"),'value':(bannerInstance?.description),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bannerInstance, field: 'isActive', 'error'))
printHtmlPart(5)
invokeTag('checkBox','g',26,['name':("isActive"),'value':(bannerInstance?.isActive)],-1)
printHtmlPart(6)
invokeTag('message','g',27,['code':("banner.isActive.label"),'default':("Is Active")],-1)
printHtmlPart(7)
invokeTag('set','g',33,['var':("video_resource"),'value':(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(bannerInstance?.id, bannerInstance.class.simpleName)?.id))],-1)
printHtmlPart(8)
expressionOut.print(video_resource)
printHtmlPart(9)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1532220300471L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
