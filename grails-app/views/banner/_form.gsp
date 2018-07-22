<%@ page import="com.picsell.data.Banner" %>



<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'type', 'error')} ">
    <label for="type">
        <g:message code="banner.type.label" default="Type"/>

    </label>
    <g:select name="type" from="${bannerInstance.constraints.type.inList}" value="${bannerInstance?.type}"
              valueMessagePrefix="banner.type" noSelection="['': '']" class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="banner.description.label" default="Description"/>

    </label>
    <g:textField name="description" value="${bannerInstance?.description}" class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'isActive', 'error')} ">
    <label for="isActive">
        <g:checkBox name="isActive" value="${bannerInstance?.isActive}"/> <g:message code="banner.isActive.label"
                                                                                     default="Is Active"/>
    </label>

</div>

<div class="form-group">
    <g:set var="video_resource" value="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(bannerInstance?.id, bannerInstance.class.simpleName)?.id)}"/>
    <div>
        <video width="320" height="240" controls style="background: grey">
            <source src="${video_resource}" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </div>
    <label>Video banner mp4 format</label>
    <input type="file" accept="video/mp4" name="file" id="imgInp" class="form-control"/>

</div>