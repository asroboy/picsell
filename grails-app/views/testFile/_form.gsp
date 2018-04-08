<%@ page import="com.picsell.test.TestFile" %>



<div class="fieldcontain ${hasErrors(bean: testFileInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="testFile.foto.label" default="Foto" />
		
	</label>
	<input type="file" id="foto" name="foto" />

</div>

<div class="fieldcontain ${hasErrors(bean: testFileInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="testFile.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${testFileInstance?.nama}"/>

</div>

