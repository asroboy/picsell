import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_picsell_homeitemDetail_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/itemDetail.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("theme_portfolio_gh")],-1)
printHtmlPart(2)
invokeTag('set','g',11,['var':("entityName"),'value':(message(code: 'item.label', default: 'Item'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',13,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',13,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',13,[:],2)
printHtmlPart(3)
expressionOut.print(resource(dir: 'css', file: 'picsell_custom_red.css'))
printHtmlPart(4)
invokeTag('set','g',62,['var':("userObject"),'value':(com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username')))],-1)
printHtmlPart(5)
expressionOut.print(createLink(controller: 'api', action: 'view_count'))
printHtmlPart(6)
expressionOut.print(itemInstance?.id)
printHtmlPart(7)
expressionOut.print(createLink(controller: 'api', action: 'is_like', params: [user_id: userObject?.id]))
printHtmlPart(8)
expressionOut.print(userObject?.id)
printHtmlPart(9)
expressionOut.print(resource(dir: 'justified_gallery', file: 'dist/css/justifiedGallery.min.css'))
printHtmlPart(10)
expressionOut.print(resource(dir: 'justified_gallery', file: 'dist/js/jquery.justifiedGallery.min.js'))
printHtmlPart(11)
})
invokeTag('captureHead','sitemesh',104,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(12)

int indx = 0;

printHtmlPart(13)
loop:{
int i = 0
for( image in (itemImages) ) {
printHtmlPart(14)
if(true && (!image?.groupSize?.groupLabel.equals("Others"))) {
printHtmlPart(15)
if(true && (indx == 0)) {
printHtmlPart(16)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(17)
expressionOut.print(createLink(controller: 'document', action: 'photoWithWatermaarkPreview', id: image?.id))
printHtmlPart(18)
createTagBody(5, {->
printHtmlPart(19)
expressionOut.print(itemInstance?.id)
printHtmlPart(20)
expressionOut.print(itemInstance?.id)
printHtmlPart(21)
expressionOut.print(itemInstance?.id)
printHtmlPart(22)
expressionOut.print(itemInstance?.id)
printHtmlPart(23)
})
invokeTag('ifLoggedIn','sec',134,[:],5)
printHtmlPart(24)
expressionOut.print(createLink(controller: 'document', action: 'preview', id: itemInstance?.id))
printHtmlPart(25)
expressionOut.print(createLink(cotroller: 'home', action: 'main', params: [cat: itemInstance?.category?.name]))
printHtmlPart(26)
}
else {
printHtmlPart(16)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(27)
expressionOut.print(createLink(controller: 'document', action: 'photoWithWatermaarkPreview', id: image?.id))
printHtmlPart(18)
createTagBody(5, {->
printHtmlPart(19)
expressionOut.print(itemInstance?.id)
printHtmlPart(20)
expressionOut.print(itemInstance?.id)
printHtmlPart(21)
expressionOut.print(itemInstance?.id)
printHtmlPart(22)
expressionOut.print(itemInstance?.id)
printHtmlPart(23)
})
invokeTag('ifLoggedIn','sec',164,[:],5)
printHtmlPart(24)
expressionOut.print(createLink(controller: 'document', action: 'preview', id: itemInstance?.id))
printHtmlPart(25)
expressionOut.print(createLink(cotroller: 'home', action: 'main', params: [cat: itemInstance?.category?.name]))
printHtmlPart(26)
}
printHtmlPart(15)

indx++;

printHtmlPart(14)
}
printHtmlPart(28)
i++
}
}
printHtmlPart(29)
expressionOut.print(itemInstance?.name)
printHtmlPart(30)
expressionOut.print(com.picsell.data.ItemViewed.countByItem(itemInstance))
printHtmlPart(31)
expressionOut.print(com.picsell.data.UserLikeItem.countByItem(itemInstance))
printHtmlPart(32)
expressionOut.print(itemInstance?.id)
printHtmlPart(33)
expressionOut.print(itemInstance?.description)
printHtmlPart(34)
expressionOut.print(itemInstance?.tags)
printHtmlPart(35)

int z = 0

printHtmlPart(15)
loop:{
int i = 0
for( image in (itemImages) ) {
printHtmlPart(36)
if(true && (!image?.groupSize?.groupLabel.equals("Others"))) {
printHtmlPart(37)
if(true && (z == 0)) {
printHtmlPart(38)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(39)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(40)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(41)
}
else {
printHtmlPart(38)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(42)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(40)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(41)
}
printHtmlPart(37)

z++

printHtmlPart(36)
}
printHtmlPart(15)
i++
}
}
printHtmlPart(43)

int ii = 0

printHtmlPart(14)
loop:{
int i = 0
for( image in (itemImages) ) {
printHtmlPart(15)
if(true && (!image?.groupSize?.groupLabel.equals("Others"))) {
printHtmlPart(36)

def sizeLabel = ""
                        if (image?.groupSize?.groupLabel.equals("L")) {
                            sizeLabel = "Large"
                        } else if (image?.groupSize?.groupLabel.equals("M")) {
                            sizeLabel = "Medium"
                        } else if (image?.groupSize?.groupLabel.equals("S")) {
                            sizeLabel = "Small"
                        }

printHtmlPart(36)

if (ii == 0) {

printHtmlPart(44)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(45)

} else {

printHtmlPart(44)
expressionOut.print(image?.groupSize?.groupLabel)
printHtmlPart(46)

}

printHtmlPart(47)
expressionOut.print(sizeLabel)
printHtmlPart(48)
expressionOut.print(image?.width)
printHtmlPart(49)
expressionOut.print(image?.height)
printHtmlPart(50)
expressionOut.print(image?.tipeFile)
printHtmlPart(51)
expressionOut.print(itemInstance?.id)
printHtmlPart(52)

ii++

printHtmlPart(15)
}
printHtmlPart(14)
i++
}
}
printHtmlPart(53)
expressionOut.print(createLink(controller: 'home', action: 'packages'))
printHtmlPart(54)
for( item in (com.picsell.data.Item.findAllByCategoryAndStatus(itemInstance?.category, "approved")) ) {
printHtmlPart(15)
if(true && (item != itemInstance)) {
printHtmlPart(55)
expressionOut.print(createLink(controller: 'home', action: 'itemDetail', id: item.id))
printHtmlPart(56)
expressionOut.print(createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id))
printHtmlPart(57)
createTagBody(4, {->
printHtmlPart(19)
expressionOut.print(item?.id)
printHtmlPart(20)
expressionOut.print(item?.id)
printHtmlPart(21)
expressionOut.print(item?.id)
printHtmlPart(22)
expressionOut.print(item?.id)
printHtmlPart(23)
})
invokeTag('ifLoggedIn','sec',361,[:],4)
printHtmlPart(58)
expressionOut.print(createLink(controller: 'document', action: 'preview', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id))
printHtmlPart(25)
expressionOut.print(createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name]))
printHtmlPart(59)
}
printHtmlPart(14)
}
printHtmlPart(60)
expressionOut.print(createLink(controller: 'home', action: 'main', params: [cat: itemInstance?.category?.name]))
printHtmlPart(61)
expressionOut.print(groupSizes)
printHtmlPart(62)
expressionOut.print(itemImagesJson)
printHtmlPart(63)
expressionOut.print(createLink(controller: 'home', action: 'purchase_summary'))
printHtmlPart(64)
})
invokeTag('captureBody','sitemesh',484,[:],1)
printHtmlPart(65)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1537521063446L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
