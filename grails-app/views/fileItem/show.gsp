
<%@ page import="com.picsell.data.FileItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fileItem.label', default: 'FileItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fileItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fileItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fileItem">
			
				<g:if test="${fileItemInstance?.file}">
				<li class="fieldcontain">
					<span id="file-label" class="property-label"><g:message code="fileItem.file.label" default="File" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fileItemInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="fileItem.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${fileItemInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fileItemInstance?.formatExtention}">
				<li class="fieldcontain">
					<span id="formatExtention-label" class="property-label"><g:message code="fileItem.formatExtention.label" default="Format Extention" /></span>
					
						<span class="property-value" aria-labelledby="formatExtention-label"><g:fieldValue bean="${fileItemInstance}" field="formatExtention"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fileItemInstance?.contentType}">
				<li class="fieldcontain">
					<span id="contentType-label" class="property-label"><g:message code="fileItem.contentType.label" default="Content Type" /></span>
					
						<span class="property-value" aria-labelledby="contentType-label"><g:fieldValue bean="${fileItemInstance}" field="contentType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fileItemInstance?.item}">
				<li class="fieldcontain">
					<span id="item-label" class="property-label"><g:message code="fileItem.item.label" default="Item" /></span>
					
						<span class="property-value" aria-labelledby="item-label"><g:link controller="item" action="show" id="${fileItemInstance?.item?.id}">${fileItemInstance?.item?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fileItemInstance?.fileSize}">
				<li class="fieldcontain">
					<span id="fileSize-label" class="property-label"><g:message code="fileItem.fileSize.label" default="File Size" /></span>
					
						<span class="property-value" aria-labelledby="fileSize-label"><g:fieldValue bean="${fileItemInstance}" field="fileSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fileItemInstance?.sizeX}">
				<li class="fieldcontain">
					<span id="sizeX-label" class="property-label"><g:message code="fileItem.sizeX.label" default="Size X" /></span>
					
						<span class="property-value" aria-labelledby="sizeX-label"><g:fieldValue bean="${fileItemInstance}" field="sizeX"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fileItemInstance?.sizeY}">
				<li class="fieldcontain">
					<span id="sizeY-label" class="property-label"><g:message code="fileItem.sizeY.label" default="Size Y" /></span>
					
						<span class="property-value" aria-labelledby="sizeY-label"><g:fieldValue bean="${fileItemInstance}" field="sizeY"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:fileItemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${fileItemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
