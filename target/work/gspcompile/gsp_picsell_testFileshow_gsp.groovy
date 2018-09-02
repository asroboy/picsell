import com.picsell.test.TestFile
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_testFileshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/testFile/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_sbadmin_gh")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'testFile.label', default: 'TestFile'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',15,['code':("default.create.label"),'args':([entityName])],-1)
printHtmlPart(5)
createTagBody(2, {->
invokeTag('message','g',23,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',23,['class':("create btn btn-info"),'action':("create")],2)
printHtmlPart(6)
if(true && (flash.message)) {
printHtmlPart(7)
expressionOut.print(flash.message)
printHtmlPart(8)
}
printHtmlPart(9)
if(true && (testFileInstance?.foto)) {
printHtmlPart(10)
invokeTag('message','g',32,['code':("testFile.foto.label"),'default':("Foto")],-1)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (testFileInstance?.nama)) {
printHtmlPart(13)
invokeTag('message','g',39,['code':("testFile.nama.label"),'default':("Nama")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',41,['bean':(testFileInstance),'field':("nama")],-1)
printHtmlPart(11)
}
printHtmlPart(15)
createTagBody(2, {->
printHtmlPart(16)
createTagBody(3, {->
invokeTag('message','g',49,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',49,['class':("edit btn btn-info"),'action':("edit"),'resource':(testFileInstance)],3)
printHtmlPart(17)
invokeTag('actionSubmit','g',50,['class':("delete btn btn-info"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(18)
})
invokeTag('form','g',52,['url':([resource:testFileInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(19)
})
invokeTag('captureBody','sitemesh',58,[:],1)
printHtmlPart(20)
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
