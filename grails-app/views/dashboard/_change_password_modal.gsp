<div class="modal fade" id="change_password_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <g:formRemote name="updatePassword" url="[controller: 'home', action: 'changePassword', id: userObject?.id]"
                      update="info" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
                    %{--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--}%
                    %{--<span aria-hidden="true">&times;</span>--}%
                    %{--</button>--}%
                </div>

                <div class="modal-body">

                    <div class="form-group">
                        <label for="pwd-existing">Existing password</label>
                        <input type="password" class="form-control" id="pwd-existing" name="password-existing"
                               required/>
                    </div>

                    <div class="form-group">
                        <label for="pwd-new">New password</label>
                        <input type="password" class="form-control" id="pwd-new" name="password-new" required/>
                    </div>

                    <div class="form-group">
                        <label for="pwd-new-retype">Re-type password</label>
                        <input type="password" class="form-control" id="pwd-new-retype" name="password-new-retype"
                               required/>
                    </div>

                </div>

                <div class="modal-footer">
                    %{--<button class="btn btn-danger btn-sm" onclick="updatePassword()">Submit</button>--}%
                    <button id="submitPassword" type="submit" class="myButton">Submit</button>%{--style="display: none"--}%
                    <button type="button" class="myButtonGrey" data-dismiss="modal">Cancel</button>
                    %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
                </div>

            </div>
        </g:formRemote>
    </div>

</div>