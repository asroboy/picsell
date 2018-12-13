<!-- The Modal -->
<div class="modal fade" id="update_approval">
    <div class="modal-dialog">
        <div class="modal-content">
            %{--<g:formRemote name="updateProfilePicture" update="info" method="post"--}%
            %{--url="[controller: 'home', action: 'saveProfileImage', id: userObject?.id]"--}%
            %{--enctype="multipart/form-data">--}%
            %{--<g:formRemote id="update_approval_form" update="" name="update_approval" method="post"--}%
            %{--url="[controller: 'api', action: 'updateItemStatus', id: userObject?.id]"--}%
            %{--enctype="multipart/form-data">--}%
            <!-- Modal Header -->

                <div class="modal-header">
                    <h4 class="modal-title">Update Approval</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <input type="text" id="item_id" name="item_id" hidden/>
                    <input type="text" id="status_in" name="status" hidden/>

                    <div class="form-group">
                        <label for="message_in">Message</label>
                        <textarea class="form-control" rows="5" name="message_in" id="message_in"></textarea>
                    </div>

                    <fieldset class="buttons">
                        <br/>

                    </fieldset>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button id="submit_update_approval" onclick="updateApproval()" class="myButton">Submit</button>
                    <button type="button" class="myButtonGrey" data-dismiss="modal">Cancel</button>
                </div>
            %{--</g:formRemote>--}%
        </div>
    </div>
</div>

</div>