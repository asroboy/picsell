import com.picsell.data.ProfileUser
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_profileUsershow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/profileUser/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'profileUser.label', default: 'ProfileUser'))],-1)
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
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (profileUserInstance?.namaDepan)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("profileUser.namaDepan.label"),'default':("Nama Depan")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(profileUserInstance),'field':("namaDepan")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.namaBelakang)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("profileUser.namaBelakang.label"),'default':("Nama Belakang")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(profileUserInstance),'field':("namaBelakang")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.alamat)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("profileUser.alamat.label"),'default':("Alamat")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(profileUserInstance),'field':("alamat")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.kecamatan)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("profileUser.kecamatan.label"),'default':("Kecamatan")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(profileUserInstance),'field':("kecamatan")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.kotaKabupaten)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("profileUser.kotaKabupaten.label"),'default':("Kota Kabupaten")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(profileUserInstance),'field':("kotaKabupaten")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.provinsi)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("profileUser.provinsi.label"),'default':("Provinsi")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(profileUserInstance),'field':("provinsi")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.jenisKartuIdentitas)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("profileUser.jenisKartuIdentitas.label"),'default':("Jenis Kartu Identitas")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(profileUserInstance),'field':("jenisKartuIdentitas")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.nomorIdIdentitas)) {
printHtmlPart(30)
invokeTag('message','g',91,['code':("profileUser.nomorIdIdentitas.label"),'default':("Nomor Id Identitas")],-1)
printHtmlPart(31)
invokeTag('fieldValue','g',93,['bean':(profileUserInstance),'field':("nomorIdIdentitas")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.noTelp)) {
printHtmlPart(32)
invokeTag('message','g',100,['code':("profileUser.noTelp.label"),'default':("No Telp")],-1)
printHtmlPart(33)
invokeTag('fieldValue','g',102,['bean':(profileUserInstance),'field':("noTelp")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.tempatLahir)) {
printHtmlPart(34)
invokeTag('message','g',109,['code':("profileUser.tempatLahir.label"),'default':("Tempat Lahir")],-1)
printHtmlPart(35)
invokeTag('fieldValue','g',111,['bean':(profileUserInstance),'field':("tempatLahir")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.tglLahir)) {
printHtmlPart(36)
invokeTag('message','g',118,['code':("profileUser.tglLahir.label"),'default':("Tgl Lahir")],-1)
printHtmlPart(37)
invokeTag('formatDate','g',120,['date':(profileUserInstance?.tglLahir)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.fotoProfile)) {
printHtmlPart(38)
invokeTag('message','g',127,['code':("profileUser.fotoProfile.label"),'default':("Foto Profile")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (profileUserInstance?.user)) {
printHtmlPart(39)
invokeTag('message','g',134,['code':("profileUser.user.label"),'default':("User")],-1)
printHtmlPart(40)
createTagBody(3, {->
expressionOut.print(profileUserInstance?.user?.encodeAsHTML())
})
invokeTag('link','g',136,['controller':("user"),'action':("show"),'id':(profileUserInstance?.user?.id)],3)
printHtmlPart(16)
}
printHtmlPart(41)
createTagBody(2, {->
printHtmlPart(42)
createTagBody(3, {->
invokeTag('message','g',144,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',144,['class':("edit"),'action':("edit"),'resource':(profileUserInstance)],3)
printHtmlPart(43)
invokeTag('actionSubmit','g',145,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(44)
})
invokeTag('form','g',147,['url':([resource:profileUserInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(45)
})
invokeTag('captureBody','sitemesh',149,[:],1)
printHtmlPart(46)
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
