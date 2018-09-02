import com.picsell.test.TestFile
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_testFile_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/testFile/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: testFileInstance, field: 'foto', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("testFile.foto.label"),'default':("Foto")],-1)
printHtmlPart(2)
expressionOut.print(hasErrors(bean: testFileInstance, field: 'nama', 'error'))
printHtmlPart(3)
invokeTag('message','g',16,['code':("testFile.nama.label"),'default':("Nama")],-1)
printHtmlPart(4)
invokeTag('textField','g',19,['name':("nama"),'value':(testFileInstance?.nama),'class':("form-control")],-1)
printHtmlPart(5)
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
