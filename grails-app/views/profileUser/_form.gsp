<%@ page import="com.picsell.data.ProfileUser" %>



<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'namaDepan', 'error')} ">
	<label for="namaDepan">
		<g:message code="profileUser.namaDepan.label" default="Nama Depan" />
		
	</label>
	<g:textField name="namaDepan" value="${profileUserInstance?.namaDepan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'namaBelakang', 'error')} ">
	<label for="namaBelakang">
		<g:message code="profileUser.namaBelakang.label" default="Nama Belakang" />
		
	</label>
	<g:textField name="namaBelakang" value="${profileUserInstance?.namaBelakang}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'alamat', 'error')} ">
	<label for="alamat">
		<g:message code="profileUser.alamat.label" default="Alamat" />
		
	</label>
	<g:textField name="alamat" value="${profileUserInstance?.alamat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'kecamatan', 'error')} ">
	<label for="kecamatan">
		<g:message code="profileUser.kecamatan.label" default="Kecamatan" />
		
	</label>
	<g:textField name="kecamatan" value="${profileUserInstance?.kecamatan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'kotaKabupaten', 'error')} ">
	<label for="kotaKabupaten">
		<g:message code="profileUser.kotaKabupaten.label" default="Kota Kabupaten" />
		
	</label>
	<g:textField name="kotaKabupaten" value="${profileUserInstance?.kotaKabupaten}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'provinsi', 'error')} ">
	<label for="provinsi">
		<g:message code="profileUser.provinsi.label" default="Provinsi" />
		
	</label>
	<g:textField name="provinsi" value="${profileUserInstance?.provinsi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'jenisKartuIdentitas', 'error')} ">
	<label for="jenisKartuIdentitas">
		<g:message code="profileUser.jenisKartuIdentitas.label" default="Jenis Kartu Identitas" />
		
	</label>
	<g:select name="jenisKartuIdentitas" from="${profileUserInstance.constraints.jenisKartuIdentitas.inList}" value="${profileUserInstance?.jenisKartuIdentitas}" valueMessagePrefix="profileUser.jenisKartuIdentitas" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'nomorIdIdentitas', 'error')} ">
	<label for="nomorIdIdentitas">
		<g:message code="profileUser.nomorIdIdentitas.label" default="Nomor Id Identitas" />
		
	</label>
	<g:textField name="nomorIdIdentitas" value="${profileUserInstance?.nomorIdIdentitas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'noTelp', 'error')} ">
	<label for="noTelp">
		<g:message code="profileUser.noTelp.label" default="No Telp" />
		
	</label>
	<g:textField name="noTelp" value="${profileUserInstance?.noTelp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'tempatLahir', 'error')} ">
	<label for="tempatLahir">
		<g:message code="profileUser.tempatLahir.label" default="Tempat Lahir" />
		
	</label>
	<g:textField name="tempatLahir" value="${profileUserInstance?.tempatLahir}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'tglLahir', 'error')} required">
	<label for="tglLahir">
		<g:message code="profileUser.tglLahir.label" default="Tgl Lahir" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tglLahir" precision="day"  value="${profileUserInstance?.tglLahir}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="profileUser.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.picsell.security.User.list()}" optionKey="id" required="" value="${profileUserInstance?.user?.id}" class="many-to-one"/>

</div>

