<!-- The Modal -->
<div class="modal fade" id="change_profile_picture_modal">
    <div class="modal-dialog">
        <div class="modal-content">
        %{--<g:formRemote name="updateProfilePicture" update="info" method="post"--}%
        %{--url="[controller: 'home', action: 'saveProfileImage', id: userObject?.id]"--}%
        %{--enctype="multipart/form-data">--}%
            <g:form name="updateProfilePicture" method="post"
                    url="[controller: 'home', action: 'saveProfileImage', id: userObject?.id]"
                    enctype="multipart/form-data">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Profile Picture</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">

                    <div class="fieldcontain ${hasErrors(bean: userObject, field: 'lampiran', 'error')} form-group">
                        <label for="file">
                            <g:message code="testFile.foto.label" default="Pick a picture"/>

                        </label>
                        <input type="file" id="file" name="file" class="form-control"/>

                    </div>

                    <fieldset class="buttons">
                        <br/>

                    </fieldset>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button id="submitProfilePicture" type="submit" class="myButton">Save</button>
                    <button type="button" class="myButtonGrey" data-dismiss="modal">Cancel</button>
                </div>
            </g:form>
        </div>
    </div>
</div>

</div>
<!-- /.row -->