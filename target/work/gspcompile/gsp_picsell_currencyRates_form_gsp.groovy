import com.picsell.data.CurrencyRates
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_currencyRates_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/currencyRates/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: currencyRatesInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("currencyRates.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'value':(currencyRatesInstance?.name),'class':("form-control")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: currencyRatesInstance, field: 'rateToUSD', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("currencyRates.rateToUSD.label"),'default':("Rate To USD")],-1)
printHtmlPart(5)
invokeTag('field','g',19,['name':("rateToUSD"),'value':(fieldValue(bean: currencyRatesInstance, field: 'rateToUSD')),'required':(""),'class':("form-control")],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1542796391381L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
