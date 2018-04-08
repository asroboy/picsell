
<%@ page import="com.picsell.data.ProfileUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profileUser.label', default: 'ProfileUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profileUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profileUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="namaDepan" title="${message(code: 'profileUser.namaDepan.label', default: 'Nama Depan')}" />
					
						<g:sortableColumn property="namaBelakang" title="${message(code: 'profileUser.namaBelakang.label', default: 'Nama Belakang')}" />
					
						<g:sortableColumn property="alamat" title="${message(code: 'profileUser.alamat.label', default: 'Alamat')}" />
					
						<g:sortableColumn property="kecamatan" title="${message(code: 'profileUser.kecamatan.label', default: 'Kecamatan')}" />
					
						<g:sortableColumn property="kotaKabupaten" title="${message(code: 'profileUser.kotaKabupaten.label', default: 'Kota Kabupaten')}" />
					
						<g:sortableColumn property="provinsi" title="${message(code: 'profileUser.provinsi.label', default: 'Provinsi')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profileUserInstanceList}" status="i" var="profileUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profileUserInstance.id}">${fieldValue(bean: profileUserInstance, field: "namaDepan")}</g:link></td>
					
						<td>${fieldValue(bean: profileUserInstance, field: "namaBelakang")}</td>
					
						<td>${fieldValue(bean: profileUserInstance, field: "alamat")}</td>
					
						<td>${fieldValue(bean: profileUserInstance, field: "kecamatan")}</td>
					
						<td>${fieldValue(bean: profileUserInstance, field: "kotaKabupaten")}</td>
					
						<td>${fieldValue(bean: profileUserInstance, field: "provinsi")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profileUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
