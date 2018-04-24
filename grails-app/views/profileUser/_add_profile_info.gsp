<g:form url="[resource: profileUserInstance, action: 'saveProfileImage']" enctype="multipart/form-data">
    <table class="table">
        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'user', 'error')} required form-group">
            <label for="user" hidden="true">
                <g:message code="profileUser.user.label" default="User"/>
                <span class="required-indicator">*</span>
            </label>

            <g:textField name="user" value="${profileUserInstance?.user?.id}" class="form-control" hidden="true"/>
            %{--<g:select id="user" name="user.id" from="${com.picsell.security.User.list()}" optionKey="id"--}%
                      %{--required=""--}%
                      %{--value="${profileUserInstance?.user?.id}" class="many-to-one form-control" disabled="true"/>--}%

        </tr>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'namaDepan', 'error')} form-group">
            <label for="namaDepan">
                <g:message code="profileUser.namaDepan.label" default="Nama Depan"/>

            </label>
            <g:textField name="namaDepan" value="${profileUserInstance?.namaDepan}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'namaBelakang', 'error')} form-group">
            <label for="namaBelakang">
                <g:message code="profileUser.namaBelakang.label" default="Nama Belakang"/>

            </label>
            <g:textField name="namaBelakang" value="${profileUserInstance?.namaBelakang}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'alamat', 'error')} form-group">
            <label for="alamat">
                <g:message code="profileUser.alamat.label" default="Alamat"/>

            </label>
            <g:textField name="alamat" value="${profileUserInstance?.alamat}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'kecamatan', 'error')} form-group">
            <label for="kecamatan">
                <g:message code="profileUser.kecamatan.label" default="Kecamatan"/>

            </label>
            <g:textField name="kecamatan" value="${profileUserInstance?.kecamatan}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'kotaKabupaten', 'error')} form-group">
            <label for="kotaKabupaten">
                <g:message code="profileUser.kotaKabupaten.label" default="Kota Kabupaten"/>

            </label>
            <g:textField name="kotaKabupaten" value="${profileUserInstance?.kotaKabupaten}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'provinsi', 'error')} form-group">
            <label for="provinsi">
                <g:message code="profileUser.provinsi.label" default="Provinsi"/>

            </label>
            <g:textField name="provinsi" value="${profileUserInstance?.provinsi}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'jenisKartuIdentitas', 'error')} form-group">
            <label for="jenisKartuIdentitas">
                <g:message code="profileUser.jenisKartuIdentitas.label" default="Jenis Kartu Identitas"/>

            </label>
            <g:select name="jenisKartuIdentitas" from="${profileUserInstance.constraints.jenisKartuIdentitas.inList}"
                      value="${profileUserInstance?.jenisKartuIdentitas}"
                      valueMessagePrefix="profileUser.jenisKartuIdentitas" noSelection="['': '']" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'nomorIdIdentitas', 'error')} form-group">
            <label for="nomorIdIdentitas">
                <g:message code="profileUser.nomorIdIdentitas.label" default="Nomor Id Identitas"/>

            </label>
            <g:textField name="nomorIdIdentitas" value="${profileUserInstance?.nomorIdIdentitas}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'noTelp', 'error')} form-group">
            <label for="noTelp">
                <g:message code="profileUser.noTelp.label" default="No Telp"/>

            </label>
            <g:textField name="noTelp" value="${profileUserInstance?.noTelp}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'tempatLahir', 'error')} form-group">
            <label for="tempatLahir">
                <g:message code="profileUser.tempatLahir.label" default="Tempat Lahir"/>

            </label>
            <g:textField name="tempatLahir" value="${profileUserInstance?.tempatLahir}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'tglLahir', 'error')} required form-group">
            <label for="tglLahir">
                <g:message code="profileUser.tglLahir.label" default="Tgl Lahir"/>
                <span class="required-indicator">*</span>
            </label>
            <g:datePicker name="tglLahir" precision="day" value="${profileUserInstance?.tglLahir}"/>

        </div>

    </table>


    <g:submitButton name="create" class="save btn btn-sm btn-block btn-outline-success"
                    value="${message(code: 'default.button.save.label', default: 'Save')}"/>
</g:form>
