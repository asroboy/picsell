<div style="margin-bottom: 15px">Billing address</div>
<g:formRemote name="updateBillingInfo" url="[controller: 'billing', action: 'updateBillingPayment']"
              update="have-billing">
%{--<input class="form-control" type="text" name="item_id" value="${imageFile?.id}"--}%
%{--style="display: none"/>--}%
    <input class="form-control" type="text" name="user_id" value="${userObject?.id}"
           style="display: none"/>

    <table style="width: 100%; color: black; font-style: italic">
        <colgroup>
            <col style="width: 40%"/>
            <col style="width: 40%"/>
            <col style="width: 18%"/>
            <col style="width: 2%"/>
        </colgroup>

        <tr>
            <td>ID</td>
            <td colspan="2">
                <input disabled class="form-control" type="text" name="billing_id" value="1"/></td>
            <td style="color: red">*</td>
        </tr>
        <tr>
            <td>Country</td>
            <td colspan="2"><input class="form-control" type="text" name="country"/></td>
            <td style="color: red">*</td>
        </tr>
        <tr>
            <td>Address 1</td>
            <td colspan="2"><input class="form-control" type="text" name="address_1"/></td>
            <td></td>
        </tr>
        <tr>
            <td>Address 2</td>
            <td colspan="2"><input class="form-control" type="text" name="address_2"/></td>
            <td style="color: red">*</td>
        </tr>
        <tr>
            <td>City</td>
            <td colspan="2"><input class="form-control" type="text" name="city"/></td>
            <td></td>
        </tr>
        <tr>
            <td>State/Province</td>
            <td><input class="form-control" type="text" name="state"/></td>
            <td><input class="form-control" type="text" name="postal_code"/></td>
            <td></td>
        </tr>

    </table>

    <div style="margin-bottom: 15px;margin-top: 15px">Payment Method</div>


    <table style="width: 100%; color: black; font-style: italic">
        <colgroup>
            <col style="width: 40%"/>
            <col style="width: 40%"/>
            <col style="width: 18%"/>
            <col style="width: 2%"/>
        </colgroup>

        <tr>
            <td>ID</td>
            <td colspan="2"> <input disabled class="form-control" type="text" name="id_payment" value="1"/></td>
            <td style="color: red">*</td>
        </tr>
        <tr>
            <td>First Name</td>
            <td colspan="2"><input class="form-control" type="text" name="firt_name"/></td>
            <td style="color: red">*</td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td colspan="2"><input class="form-control" type="text" name="last_name"/></td>
            <td style="color: red">*</td>
        </tr>
        <tr>
            <td>Creadit Card Number</td>
            <td colspan="2"><input class="form-control" type="text" name="cc_number"/></td>
            <td style="color: red">*</td>
        </tr>
        <tr>
            <td>Security Code</td>
            <td colspan="2"><input class="form-control" type="number" name="mvcs"/></td>
            <td style="color: red">*</td>
        </tr>
        <tr>
            <td>Expire Date</td>
            <td><input class="form-control" type="text" name="month"/></td>
            <td><input class="form-control" type="text" name="year"/></td>
            <td style="color: red">*</td>
        </tr>

    </table>


    <div style="color: #c90000; font-style: italic; margin-top: 15px; margin-bottom: 15px">") required field</div>

    <div style="color: black;font-style: italic;  margin-top: 15px; margin-bottom: 15px">I agree with term and condition  <input
            id="agree" type="checkbox" name="agree"> <a target="_blank"
                                                        href="${createLink(controller: 'home', action: 'tos')}"><b>read here</b>
    </a></div>

    <div>

        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            Submit your billing informastion including payment method before completing checkout
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="text-right">
            <input type="submit" id="submit_info" name="submit" class="btn btn-sm btn-danger" style="display: none"
                   title="Submit"/>

            %{--<g:submitButton name="submit" class="btn btn-sm btn-danger" title="Submit"/>--}%
            %{--</g:submitButton>--}%
        </div>

    </div>
</g:formRemote>
<div class="text-right">
    <button name="check_submit" onclick="checkAgrrement()" class="btn btn-sm btn-danger">Submit</button>
</div>