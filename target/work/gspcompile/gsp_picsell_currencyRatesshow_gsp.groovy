import com.picsell.data.CurrencyRates
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_currencyRatesshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/currencyRates/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'currencyRates.label', default: 'CurrencyRates'))],-1)
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
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
invokeTag('message','g',23,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',23,['class':("create btn btn-info"),'action':("create")],2)
printHtmlPart(7)
if(true && (flash.message)) {
printHtmlPart(8)
expressionOut.print(flash.message)
printHtmlPart(9)
}
printHtmlPart(10)
if(true && (currencyRatesInstance?.name)) {
printHtmlPart(11)
invokeTag('message','g',35,['code':("currencyRates.name.label"),'default':("Name")],-1)
printHtmlPart(12)
invokeTag('fieldValue','g',39,['bean':(currencyRatesInstance),'field':("name")],-1)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (currencyRatesInstance?.rateToUSD)) {
printHtmlPart(15)
invokeTag('message','g',51,['code':("currencyRates.rateToUSD.label"),'default':("Rate To USD")],-1)
printHtmlPart(16)
invokeTag('fieldValue','g',55,['bean':(currencyRatesInstance),'field':("rateToUSD")],-1)
printHtmlPart(13)
}
printHtmlPart(17)
createTagBody(2, {->
printHtmlPart(18)
createTagBody(3, {->
invokeTag('message','g',70,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',71,['class':("edit btn btn-info"),'action':("edit"),'resource':(currencyRatesInstance)],3)
printHtmlPart(19)
invokeTag('actionSubmit','g',72,['class':("delete btn btn-info"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(20)
})
invokeTag('form','g',72,['url':([resource:currencyRatesInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',72,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542796391100L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
