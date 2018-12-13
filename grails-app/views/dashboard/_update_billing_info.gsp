
<div class="modal fade" id="update_billing_info" tabindex="-1" role="dialog"
     aria-labelledby="update_billing_infoModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <g:formRemote name="updateProfile" url="[controller: 'api', action: 'updateBillingInfo', id: userObject?.id]"
                      update="info" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="update_billing_infoModalLabel">Update Billing Info</h5>
                </div>

                <div class="modal-body">
                    <table width="100%">
                        <thead style="width: 30%"></thead>
                        <thead style="width: 70%"></thead>
                        <tr>
                            <td>
                                <label for="address_1">
                                    Address 1
                                </label>
                            </td>
                            <td>
                                <g:textField class="form-control" name="address_1"
                                             value="${billing_address?.address1}"/></td>
                        </tr>

                        <tr>
                            <td><label for="address_2">
                                Address 2
                            </label></td>
                            <td><g:textField class="form-control" name="address_2" value="${billing_address?.address2}"/></td>
                        </tr>
                        <tr>
                            <td><label for="city">City
                            </label></td>
                            <td><g:textField class="form-control" name="city" value="${billing_address?.city}"/></td>
                        </tr>
                        <tr>
                            <td><label for="country">
                                Country
                            </label></td>
                            <td><g:textField class="form-control" name="country"
                                             value="${billing_address?.country}"/></td>
                        </tr>
                        <tr>
                            <td><label for="postal_code">
                                Postal Code
                            </label></td>
                            <td><g:textField class="form-control" name="postal_code"
                                             value="${billing_address?.postalCode}"/></td>
                        </tr>

                        <tr>
                            <td> <label for="province">
                                State/Province
                            </label></td>
                            <td> <g:textField class="form-control" name="province" value="${billing_address?.stateProvince}"/></td>
                        </tr>
                    </table>

                </div>

                <div class="modal-footer">
                    %{--<button class="btn btn-danger btn-sm" onclick="updatePassword()">Submit</button>--}%
                    <button id="submitBillingInfo" type="submit" class="myButton">Submit</button>%{--style= "display: none"--}%
                    <button type="button" class="myButtonGrey" data-dismiss="modal">Cancel</button>
                    %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
                </div>

            </div>
        </g:formRemote>
    </div>

</div>