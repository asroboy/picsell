
<%@ page import="com.picsell.data.ProfileUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profileUser.label', default: 'ProfileUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profileUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profileUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profileUser">
			
				<g:if test="${profileUserInstance?.namaDepan}">
				<li class="fieldcontain">
					<span id="namaDepan-label" class="property-label"><g:message code="profileUser.namaDepan.label" default="Nama Depan" /></span>
					
						<span class="property-value" aria-labelledby="namaDepan-label"><g:fieldValue bean="${profileUserInstance}" field="namaDepan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.namaBelakang}">
				<li class="fieldcontain">
					<span id="namaBelakang-label" class="property-label"><g:message code="profileUser.namaBelakang.label" default="Nama Belakang" /></span>
					
						<span class="property-value" aria-labelledby="namaBelakang-label"><g:fieldValue bean="${profileUserInstance}" field="namaBelakang"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.alamat}">
				<li class="fieldcontain">
					<span id="alamat-label" class="property-label"><g:message code="profileUser.alamat.label" default="Alamat" /></span>
					
						<span class="property-value" aria-labelledby="alamat-label"><g:fieldValue bean="${profileUserInstance}" field="alamat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.kecamatan}">
				<li class="fieldcontain">
					<span id="kecamatan-label" class="property-label"><g:message code="profileUser.kecamatan.label" default="Kecamatan" /></span>
					
						<span class="property-value" aria-labelledby="kecamatan-label"><g:fieldValue bean="${profileUserInstance}" field="kecamatan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.kotaKabupaten}">
				<li class="fieldcontain">
					<span id="kotaKabupaten-label" class="property-label"><g:message code="profileUser.kotaKabupaten.label" default="Kota Kabupaten" /></span>
					
						<span class="property-value" aria-labelledby="kotaKabupaten-label"><g:fieldValue bean="${profileUserInstance}" field="kotaKabupaten"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.provinsi}">
				<li class="fieldcontain">
					<span id="provinsi-label" class="property-label"><g:message code="profileUser.provinsi.label" default="Provinsi" /></span>
					
						<span class="property-value" aria-labelledby="provinsi-label"><g:fieldValue bean="${profileUserInstance}" field="provinsi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.jenisKartuIdentitas}">
				<li class="fieldcontain">
					<span id="jenisKartuIdentitas-label" class="property-label"><g:message code="profileUser.jenisKartuIdentitas.label" default="Jenis Kartu Identitas" /></span>
					
						<span class="property-value" aria-labelledby="jenisKartuIdentitas-label"><g:fieldValue bean="${profileUserInstance}" field="jenisKartuIdentitas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.nomorIdIdentitas}">
				<li class="fieldcontain">
					<span id="nomorIdIdentitas-label" class="property-label"><g:message code="profileUser.nomorIdIdentitas.label" default="Nomor Id Identitas" /></span>
					
						<span class="property-value" aria-labelledby="nomorIdIdentitas-label"><g:fieldValue bean="${profileUserInstance}" field="nomorIdIdentitas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.noTelp}">
				<li class="fieldcontain">
					<span id="noTelp-label" class="property-label"><g:message code="profileUser.noTelp.label" default="No Telp" /></span>
					
						<span class="property-value" aria-labelledby="noTelp-label"><g:fieldValue bean="${profileUserInstance}" field="noTelp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.tempatLahir}">
				<li class="fieldcontain">
					<span id="tempatLahir-label" class="property-label"><g:message code="profileUser.tempatLahir.label" default="Tempat Lahir" /></span>
					
						<span class="property-value" aria-labelledby="tempatLahir-label"><g:fieldValue bean="${profileUserInstance}" field="tempatLahir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.tglLahir}">
				<li class="fieldcontain">
					<span id="tglLahir-label" class="property-label"><g:message code="profileUser.tglLahir.label" default="Tgl Lahir" /></span>
					
						<span class="property-value" aria-labelledby="tglLahir-label"><g:formatDate date="${profileUserInstance?.tglLahir}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.fotoProfile}">
				<li class="fieldcontain">
					<span id="fotoProfile-label" class="property-label"><g:message code="profileUser.fotoProfile.label" default="Foto Profile" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileUserInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="profileUser.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${profileUserInstance?.user?.id}">${profileUserInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:profileUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${profileUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
