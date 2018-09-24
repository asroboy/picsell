import com.picsell.data.Category
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_categoryshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/category/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'category.label', default: 'Category'))],-1)
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
createTagBody(2, {->
printHtmlPart(6)
invokeTag('message','g',26,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',26,['class':("create btn btn-danger"),'action':("create")],2)
printHtmlPart(7)
createClosureForHtmlPart(8, 2)
invokeTag('link','g',27,['class':("create btn btn-danger"),'action':("index")],2)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (categoryInstance?.name)) {
printHtmlPart(13)
invokeTag('message','g',40,['code':("category.name.label"),'default':("Name")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',45,['bean':(categoryInstance),'field':("name")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (categoryInstance?.description)) {
printHtmlPart(17)
invokeTag('message','g',58,['code':("category.description.label"),'default':("Description")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',63,['bean':(categoryInstance),'field':("description")],-1)
printHtmlPart(15)
}
printHtmlPart(19)
createTagBody(2, {->
printHtmlPart(20)
createTagBody(3, {->
invokeTag('message','g',80,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',80,['class':("edit btn btn-danger"),'action':("edit"),'resource':(categoryInstance)],3)
printHtmlPart(21)
invokeTag('actionSubmit','g',84,['class':("delete btn btn-danger"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(22)
})
invokeTag('form','g',84,['url':([resource: categoryInstance, action: 'delete']),'method':("DELETE")],2)
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',84,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1533747734340L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
