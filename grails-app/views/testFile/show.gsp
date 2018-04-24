
<%@ page import="com.picsell.test.TestFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'testFile.label', default: 'TestFile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>


	<div class="row">
		<div class="col-lg-12">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<div class="row">
		<div class="col-lg-12">
			<p>
				<g:link class="create btn btn-info" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			</p>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list testFile">
				
				<g:if test="${testFileInstance?.foto}">
					<li class="fieldcontain">
						<span id="foto-label" class="property-label"><g:message code="testFile.foto.label" default="Foto" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${testFileInstance?.nama}">
					<li class="fieldcontain">
						<span id="nama-label" class="property-label"><g:message code="testFile.nama.label" default="Nama" /></span>
						
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${testFileInstance}" field="nama"/></span>
						
					</li>
				</g:if>
				
			</ol>
			<g:form url="[resource:testFileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-info" action="edit" resource="${testFileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	</body>
</html>
