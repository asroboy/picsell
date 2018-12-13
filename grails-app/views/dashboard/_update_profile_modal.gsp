%{--<g:set var="userObject"--}%
%{--value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>--}%

<div class="modal fade" id="update_profile_modal" tabindex="-1" role="dialog"
     aria-labelledby="update_profile_modalModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <g:formRemote name="updateProfile" url="[controller: 'home', action: 'udpateProfile', id: userObject?.id]"
                      update="info" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="update_profile_modalModalLabel">Update Profile</h5>
                    %{--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--}%
                    %{--<span aria-hidden="true">&times;</span>--}%
                    %{--</button>--}%
                </div>

                <div class="modal-body">
                    <table width="100%">
                        <thead style="width: 30%"></thead>
                        <thead style="width: 70%"></thead>
                        <tr>
                            <td>
                                <label for="firstName">
                                    First Name
                                </label>
                            </td>
                            <td>
                                <g:textField class="form-control" name="firstName"
                                             value="${userObject?.firstName}"/></td>
                        </tr>

                        <tr>
                            <td><label for="lastName">
                                Last Name
                            </label></td>
                            <td><g:textField class="form-control" name="lastName" value="${userObject?.lastName}"/></td>
                        </tr>
                        <tr>
                            <td><label for="alamat">Address
                            </label></td>
                            <td><g:textField class="form-control" name="alamat" value="${userObject?.alamat}"/></td>
                        </tr>
                        <tr>
                            <td><label for="kecamatan">
                                District
                            </label></td>
                            <td><g:textField class="form-control" name="kecamatan"
                                             value="${userObject?.kecamatan}"/></td>
                        </tr>
                        <tr>
                            <td><label for="kotaKabupaten">
                                City
                            </label></td>
                            <td><g:textField class="form-control" name="kotaKabupaten"
                                             value="${userObject?.kotaKabupaten}"/></td>
                        </tr>

                        <tr>
                            <td> <label for="provinsi">
                                State/Province
                            </label></td>
                            <td> <g:textField class="form-control" name="provinsi" value="${userObject?.provinsi}"/></td>
                        </tr>
                    </table>

                    %{--<div class="form-group">--}%
                    %{--<label for="jenisKartuIdentitas">--}%
                    %{--<g:message code="profileUser.jenisKartuIdentitas.label" default="Jenis Kartu Identitas"/>--}%

                    %{--</label>--}%
                    %{--<g:select name="jenisKartuIdentitas" from="${userObject.constraints.jenisKartuIdentitas.inList}"--}%
                    %{--value="${profileUserInstance?.jenisKartuIdentitas}"--}%
                    %{--valueMessagePrefix="profileUser.jenisKartuIdentitas" noSelection="['': '']"/>--}%

                    %{--</div>--}%

                    %{--<div class="form-group">--}%
                    %{--<label for="nomorIdIdentitas">--}%
                    %{--<g:message code="profileUser.nomorIdIdentitas.label" default="Nomor Id Identitas" />--}%

                    %{--</label>--}%
                    %{--<g:textField name="nomorIdIdentitas" value="${profileUserInstance?.nomorIdIdentitas}"/>--}%

                    %{--</div>--}%

                    %{--<div class="form-group">--}%
                    %{--<label for="noTelp">--}%
                    %{--<g:message code="profileUser.noTelp.label" default="No Telp" />--}%

                    %{--</label>--}%
                    %{--<g:textField name="noTelp" value="${userObject?.noTelp}"/>--}%

                    %{--</div>--}%

                    %{--<div class="form-group">--}%
                    %{--<label for="tempatLahir">--}%
                    %{--<g:message code="profileUser.tempatLahir.label" default="Tempat Lahir" />--}%

                    %{--</label>--}%
                    %{--<g:textField name="tempatLahir" value="${userObject?.tempatLahir}"/>--}%

                    %{--</div>--}%

                    %{--<div class="form-group">--}%
                    %{--<label for="tglLahir">--}%
                    %{--<g:message code="profileUser.tglLahir.label" default="Tgl Lahir" />--}%
                    %{--<span class="required-indicator">*</span>--}%
                    %{--</label>--}%
                    %{--<g:datePicker name="tglLahir" precision="day"  value="${userObject?.tglLahir}"  />--}%

                    %{--</div>--}%

                    %{--<div class="form-group">--}%
                    %{--<label for="fotoProfile">--}%
                    %{--<g:message code="profileUser.fotoProfile.label" default="Foto Profile" />--}%

                    %{--</label>--}%
                    %{--<input type="file" id="fotoProfile" name="fotoProfile" />--}%
                    %{--</div>--}%

                </div>

                <div class="modal-footer">
                    %{--<button class="btn btn-danger btn-sm" onclick="updatePassword()">Submit</button>--}%
                    <button id="submitProfile" type="submit"
                            class="myButton">Submit</button>%{--style="display: none"--}%
                    <button type="button" class="myButtonGrey" data-dismiss="modal">Cancel</button>
                    %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
                </div>

            </div>
        </g:formRemote>
    </div>

</div>