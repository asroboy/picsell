
<%@ page import="com.picsell.data.FileItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'fileItem.label', default: 'FileItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>


	<div class="row">
		<div class="col-lg-12">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<div class="row">
		<div class="col-lg-12">
			<p>
				<g:link class="create btn btn-info" action="create"><i class="fa fa-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
			</p>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			%{--<ol class="property-list fileItem">--}%
				<table class="table">
				
				<g:if test="${fileItemInstance?.file}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="file-label" class="property-label"><g:message code="fileItem.file.label" default="File" /></span>
                            </td>
                            <td>
                        
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${fileItemInstance?.fileName}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="fileName-label" class="property-label"><g:message code="fileItem.fileName.label" default="File Name" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${fileItemInstance}" field="fileName"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${fileItemInstance?.formatExtention}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="formatExtention-label" class="property-label"><g:message code="fileItem.formatExtention.label" default="Format Extention" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="formatExtention-label"><g:fieldValue bean="${fileItemInstance}" field="formatExtention"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${fileItemInstance?.contentType}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="contentType-label" class="property-label"><g:message code="fileItem.contentType.label" default="Content Type" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="contentType-label"><g:fieldValue bean="${fileItemInstance}" field="contentType"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${fileItemInstance?.item}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="item-label" class="property-label"><g:message code="fileItem.item.label" default="Item" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="item-label"><g:link controller="item" action="show" id="${fileItemInstance?.item?.id}">${fileItemInstance?.item?.encodeAsHTML()}</g:link></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${fileItemInstance?.fileSize}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="fileSize-label" class="property-label"><g:message code="fileItem.fileSize.label" default="File Size" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="fileSize-label"><g:fieldValue bean="${fileItemInstance}" field="fileSize"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${fileItemInstance?.sizeX}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="sizeX-label" class="property-label"><g:message code="fileItem.sizeX.label" default="Size X" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="sizeX-label"><g:fieldValue bean="${fileItemInstance}" field="sizeX"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${fileItemInstance?.sizeY}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="sizeY-label" class="property-label"><g:message code="fileItem.sizeY.label" default="Size Y" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="sizeY-label"><g:fieldValue bean="${fileItemInstance}" field="sizeY"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
                </table>
			%{--</ol>--}%

            <br/>
            <br/>
            <br/>
			<g:form url="[resource:fileItemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-info" action="edit" resource="${fileItemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	</body>
</html>
