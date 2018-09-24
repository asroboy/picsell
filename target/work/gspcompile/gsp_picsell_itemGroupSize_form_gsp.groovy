import com.picsell.data.ItemGroupSize
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_itemGroupSize_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/itemGroupSize/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: itemGroupSizeInstance, field: 'groupLabel', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("itemGroupSize.groupLabel.label"),'default':("Group Label")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['name':("groupLabel"),'from':(itemGroupSizeInstance.constraints.groupLabel.inList),'value':(itemGroupSizeInstance?.groupLabel),'valueMessagePrefix':("itemGroupSize.groupLabel"),'noSelection':(['': '']),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemGroupSizeInstance, field: 'maxSize', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("itemGroupSize.maxSize.label"),'default':("Max Size")],-1)
printHtmlPart(5)
invokeTag('field','g',19,['name':("maxSize"),'type':("number"),'value':(itemGroupSizeInstance.maxSize),'required':(""),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemGroupSizeInstance, field: 'minSize', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("itemGroupSize.minSize.label"),'default':("Min Size")],-1)
printHtmlPart(5)
invokeTag('field','g',28,['name':("minSize"),'type':("number"),'value':(itemGroupSizeInstance.minSize),'required':(""),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: itemGroupSizeInstance, field: 'price', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("itemGroupSize.price.label"),'default':("Price")],-1)
printHtmlPart(5)
invokeTag('field','g',37,['name':("price"),'type':("number"),'value':(itemGroupSizeInstance.price),'required':(""),'class':("form-control")],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534929851226L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
