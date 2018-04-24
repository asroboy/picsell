<%@ page import="com.picsell.data.FileItem" %>



<div class="form-group fieldcontain ${hasErrors(bean: fileItemInstance, field: 'file', 'error')} required">
	<label for="file">
		<g:message code="fileItem.file.label" default="File" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="file" name="file" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: fileItemInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="fileItem.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${fileItemInstance?.fileName}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: fileItemInstance, field: 'formatExtention', 'error')} ">
	<label for="formatExtention">
		<g:message code="fileItem.formatExtention.label" default="Format Extention" />
		
	</label>
	<g:textField name="formatExtention" value="${fileItemInstance?.formatExtention}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: fileItemInstance, field: 'contentType', 'error')} ">
	<label for="contentType">
		<g:message code="fileItem.contentType.label" default="Content Type" />
		
	</label>
	<g:textField name="contentType" value="${fileItemInstance?.contentType}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: fileItemInstance, field: 'item', 'error')} required">
	<label for="item">
		<g:message code="fileItem.item.label" default="Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="item" name="item.id" from="${com.picsell.data.Item.list()}" optionKey="id" required="" value="${fileItemInstance?.item?.id}" class="many-to-one form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: fileItemInstance, field: 'fileSize', 'error')} required">
	<label for="fileSize">
		<g:message code="fileItem.fileSize.label" default="File Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fileSize" value="${fieldValue(bean: fileItemInstance, field: 'fileSize')}" required="" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: fileItemInstance, field: 'sizeX', 'error')} required">
	<label for="sizeX">
		<g:message code="fileItem.sizeX.label" default="Size X" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sizeX" value="${fieldValue(bean: fileItemInstance, field: 'sizeX')}" required="" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: fileItemInstance, field: 'sizeY', 'error')} required">
	<label for="sizeY">
		<g:message code="fileItem.sizeY.label" default="Size Y" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sizeY" value="${fieldValue(bean: fileItemInstance, field: 'sizeY')}" required="" class="form-control" />

</div>

