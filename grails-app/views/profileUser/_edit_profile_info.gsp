<g:form url="[resource: profileUserInstance, action: 'saveProfile']" enctype="multipart/form-data">
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
                First Name

            </label>
            <g:textField name="namaDepan" value="${profileUserInstance?.namaDepan}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'namaBelakang', 'error')} form-group">
            <label for="namaBelakang">
               Last Name

            </label>
            <g:textField name="namaBelakang" value="${profileUserInstance?.namaBelakang}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'alamat', 'error')} form-group">
            <label for="alamat">
              Address

            </label>
            <g:textField name="alamat" value="${profileUserInstance?.alamat}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'kecamatan', 'error')} form-group">
            <label for="kecamatan">
                District

            </label>
            <g:textField name="kecamatan" value="${profileUserInstance?.kecamatan}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'kotaKabupaten', 'error')} form-group">
            <label for="kotaKabupaten">
               City

            </label>
            <g:textField name="kotaKabupaten" value="${profileUserInstance?.kotaKabupaten}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'provinsi', 'error')} form-group">
            <label for="provinsi">
               Province

            </label>
            <g:textField name="provinsi" value="${profileUserInstance?.provinsi}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'jenisKartuIdentitas', 'error')} form-group">
            <label for="jenisKartuIdentitas">
                ID Card Type

            </label>
            <g:select name="jenisKartuIdentitas" from="${profileUserInstance.constraints.jenisKartuIdentitas.inList}"
                      value="${profileUserInstance?.jenisKartuIdentitas}"
                      valueMessagePrefix="profileUser.jenisKartuIdentitas" noSelection="['': '']" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'nomorIdIdentitas', 'error')} form-group">
            <label for="nomorIdIdentitas">
                ID Card Number

            </label>
            <g:textField name="nomorIdIdentitas" value="${profileUserInstance?.nomorIdIdentitas}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'noTelp', 'error')} form-group">
            <label for="noTelp">
                Phone

            </label>
            <g:textField name="noTelp" value="${profileUserInstance?.noTelp}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'tempatLahir', 'error')} form-group">
            <label for="tempatLahir">
                Birth Place

            </label>
            <g:textField name="tempatLahir" value="${profileUserInstance?.tempatLahir}" class="form-control"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: profileUserInstance, field: 'tglLahir', 'error')} required form-group">
            <label for="tglLahir">
                Birth Date
                <span class="required-indicator">*</span>
            </label>
            <g:datePicker name="tglLahir" precision="day" value="${profileUserInstance?.tglLahir}"/>

        </div>

    </table>


    <g:submitButton name="create" class="btn btn-sm btn-block btn-outline-success"
                    value="${message(code: 'default.button.update.label', default: 'Update')}"/>
</g:form>
