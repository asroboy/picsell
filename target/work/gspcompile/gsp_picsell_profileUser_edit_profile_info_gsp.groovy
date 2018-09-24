import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_profileUser_edit_profile_info_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/profileUser/_edit_profile_info.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
createTagBody(1, {->
printHtmlPart(0)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'user', 'error'))
printHtmlPart(1)
invokeTag('message','g',5,['code':("profileUser.user.label"),'default':("User")],-1)
printHtmlPart(2)
invokeTag('textField','g',9,['name':("user"),'value':(profileUserInstance?.user?.id),'class':("form-control"),'hidden':("true")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'namaDepan', 'error'))
printHtmlPart(4)
invokeTag('textField','g',18,['name':("namaDepan"),'value':(profileUserInstance?.namaDepan),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'namaBelakang', 'error'))
printHtmlPart(6)
invokeTag('textField','g',27,['name':("namaBelakang"),'value':(profileUserInstance?.namaBelakang),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'alamat', 'error'))
printHtmlPart(7)
invokeTag('textField','g',36,['name':("alamat"),'value':(profileUserInstance?.alamat),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'kecamatan', 'error'))
printHtmlPart(8)
invokeTag('textField','g',45,['name':("kecamatan"),'value':(profileUserInstance?.kecamatan),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'kotaKabupaten', 'error'))
printHtmlPart(9)
invokeTag('textField','g',54,['name':("kotaKabupaten"),'value':(profileUserInstance?.kotaKabupaten),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'provinsi', 'error'))
printHtmlPart(10)
invokeTag('textField','g',63,['name':("provinsi"),'value':(profileUserInstance?.provinsi),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'jenisKartuIdentitas', 'error'))
printHtmlPart(11)
invokeTag('select','g',77,['name':("jenisKartuIdentitas"),'from':(profileUserInstance.constraints.jenisKartuIdentitas.inList),'value':(profileUserInstance?.jenisKartuIdentitas),'valueMessagePrefix':("profileUser.jenisKartuIdentitas"),'noSelection':(['': '']),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'nomorIdIdentitas', 'error'))
printHtmlPart(12)
invokeTag('textField','g',83,['name':("nomorIdIdentitas"),'value':(profileUserInstance?.nomorIdIdentitas),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'noTelp', 'error'))
printHtmlPart(13)
invokeTag('textField','g',92,['name':("noTelp"),'value':(profileUserInstance?.noTelp),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'tempatLahir', 'error'))
printHtmlPart(14)
invokeTag('textField','g',101,['name':("tempatLahir"),'value':(profileUserInstance?.tempatLahir),'class':("form-control")],-1)
printHtmlPart(5)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'tglLahir', 'error'))
printHtmlPart(15)
invokeTag('datePicker','g',111,['name':("tglLahir"),'precision':("day"),'value':(profileUserInstance?.tglLahir)],-1)
printHtmlPart(16)
invokeTag('submitButton','g',115,['name':("create"),'class':("btn btn-sm btn-block btn-outline-success"),'value':(message(code: 'default.button.update.label', default: 'Update'))],-1)
printHtmlPart(17)
})
invokeTag('form','g',115,['url':([resource: profileUserInstance, action: 'saveProfile']),'enctype':("multipart/form-data")],1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1534588324320L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
