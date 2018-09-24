import com.picsell.data.ProfileUser
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_profileUser_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/profileUser/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'namaDepan', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("profileUser.namaDepan.label"),'default':("Nama Depan")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("namaDepan"),'value':(profileUserInstance?.namaDepan)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'namaBelakang', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("profileUser.namaBelakang.label"),'default':("Nama Belakang")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("namaBelakang"),'value':(profileUserInstance?.namaBelakang)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'alamat', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("profileUser.alamat.label"),'default':("Alamat")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("alamat"),'value':(profileUserInstance?.alamat)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'kecamatan', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("profileUser.kecamatan.label"),'default':("Kecamatan")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("kecamatan"),'value':(profileUserInstance?.kecamatan)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'kotaKabupaten', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("profileUser.kotaKabupaten.label"),'default':("Kota Kabupaten")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("kotaKabupaten"),'value':(profileUserInstance?.kotaKabupaten)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'provinsi', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("profileUser.provinsi.label"),'default':("Provinsi")],-1)
printHtmlPart(2)
invokeTag('textField','g',55,['name':("provinsi"),'value':(profileUserInstance?.provinsi)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'jenisKartuIdentitas', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("profileUser.jenisKartuIdentitas.label"),'default':("Jenis Kartu Identitas")],-1)
printHtmlPart(2)
invokeTag('select','g',64,['name':("jenisKartuIdentitas"),'from':(profileUserInstance.constraints.jenisKartuIdentitas.inList),'value':(profileUserInstance?.jenisKartuIdentitas),'valueMessagePrefix':("profileUser.jenisKartuIdentitas"),'noSelection':(['': ''])],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'nomorIdIdentitas', 'error'))
printHtmlPart(10)
invokeTag('message','g',70,['code':("profileUser.nomorIdIdentitas.label"),'default':("Nomor Id Identitas")],-1)
printHtmlPart(2)
invokeTag('textField','g',73,['name':("nomorIdIdentitas"),'value':(profileUserInstance?.nomorIdIdentitas)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'noTelp', 'error'))
printHtmlPart(11)
invokeTag('message','g',79,['code':("profileUser.noTelp.label"),'default':("No Telp")],-1)
printHtmlPart(2)
invokeTag('textField','g',82,['name':("noTelp"),'value':(profileUserInstance?.noTelp)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'tempatLahir', 'error'))
printHtmlPart(12)
invokeTag('message','g',88,['code':("profileUser.tempatLahir.label"),'default':("Tempat Lahir")],-1)
printHtmlPart(2)
invokeTag('textField','g',91,['name':("tempatLahir"),'value':(profileUserInstance?.tempatLahir)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'tglLahir', 'error'))
printHtmlPart(13)
invokeTag('message','g',97,['code':("profileUser.tglLahir.label"),'default':("Tgl Lahir")],-1)
printHtmlPart(14)
invokeTag('datePicker','g',100,['name':("tglLahir"),'precision':("day"),'value':(profileUserInstance?.tglLahir)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'fotoProfile', 'error'))
printHtmlPart(15)
invokeTag('message','g',106,['code':("profileUser.fotoProfile.label"),'default':("Foto Profile")],-1)
printHtmlPart(16)
expressionOut.print(hasErrors(bean: profileUserInstance, field: 'user', 'error'))
printHtmlPart(17)
invokeTag('message','g',115,['code':("profileUser.user.label"),'default':("User")],-1)
printHtmlPart(14)
invokeTag('select','g',118,['id':("user"),'name':("user.id"),'from':(com.picsell.security.User.list()),'optionKey':("id"),'required':(""),'value':(profileUserInstance?.user?.id),'class':("many-to-one")],-1)
printHtmlPart(18)
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
