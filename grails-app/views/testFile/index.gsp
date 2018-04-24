
<%@ page import="com.picsell.test.TestFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'testFile.label', default: 'TestFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
			<table class="table table-bordered">
				<thead>
				<tr>
					
					<g:sortableColumn property="foto" title="${message(code: 'testFile.foto.label', default: 'Foto')}" />
					
					<g:sortableColumn property="nama" title="${message(code: 'testFile.nama.label', default: 'Nama')}" />
					
				</tr>
				</thead>
				<tbody>
				<g:each in="${testFileInstanceList}" status="i" var="testFileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${testFileInstance.id}">${fieldValue(bean: testFileInstance, field: "foto")}</g:link></td>
						
						<td>${fieldValue(bean: testFileInstance, field: "nama")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${testFileInstanceCount ?: 0}" />
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	</body>
</html>
