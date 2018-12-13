import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_dashboard_update_profile_modal_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/_update_profile_modal.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('textField','g',25,['class':("form-control"),'name':("firstName"),'value':(userObject?.firstName)],-1)
printHtmlPart(2)
invokeTag('textField','g',33,['class':("form-control"),'name':("lastName"),'value':(userObject?.lastName)],-1)
printHtmlPart(3)
invokeTag('textField','g',37,['class':("form-control"),'name':("alamat"),'value':(userObject?.alamat)],-1)
printHtmlPart(4)
invokeTag('textField','g',45,['class':("form-control"),'name':("kecamatan"),'value':(userObject?.kecamatan)],-1)
printHtmlPart(5)
invokeTag('textField','g',52,['class':("form-control"),'name':("kotaKabupaten"),'value':(userObject?.kotaKabupaten)],-1)
printHtmlPart(6)
invokeTag('textField','g',59,['class':("form-control"),'name':("provinsi"),'value':(userObject?.provinsi)],-1)
printHtmlPart(7)
})
invokeTag('formRemote','g',83,['name':("updateProfile"),'url':([controller: 'home', action: 'udpateProfile', id: userObject?.id]),'update':("info"),'method':("post")],1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542529855564L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
