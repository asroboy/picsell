<div style="margin-bottom: 15px">Billing address</div>

<table style="width: 100%; color: black; font-style: italic">
    <tr>
        <td width="50%">Country</td>
        <td>${billingInfo?.country}</td>
    </tr>
    <tr>
        <td>Address 1</td>
        <td>${billingInfo?.address1}</td>
    </tr>
    <tr>
        <td>Address 2</td>
        <td>${billingInfo?.address2}</td>

    </tr>
    <tr>
        <td>City</td>
        <td>${billingInfo?.city}</td>

    </tr>
    <tr>
        <td>State/Province</td>
        <td>${billingInfo?.stateProvince} Postal Code ${billingInfo?.postalCode}</td>

    </tr>

</table>

<div style="margin-bottom: 15px;margin-top: 15px">Payment Method</div>

<table style="width: 100%; color: black; font-style: italic">
    <tr>
        <td width="50%">First Name</td>
        <td>${paymentMethod?.firstName}</td>

    </tr>
    <tr>
        <td>Last Name</td>
        <td>${paymentMethod?.lastName}</td>

    </tr>
    <tr>
        %{--CC NUMBER--}%
        <td>Creadit Card Number</td>
        <td>${paymentMethod?.creaditCardNumber}</td>

    </tr>
    <tr>
        %{--VCC--}%
        <td>Security Code</td>
        <td>${paymentMethod?.securityCode}</td>

    </tr>
    <tr>
        <td>Expire Date</td>
        <td>${paymentMethod?.expiredDate}</td>

    </tr>

</table>

<div style=" margin-top: 30px">

    <div class="text-right">
        <button class="btn btn-sm btn-danger" onclick="changeInfo()">Change Info</button>
        %{--</g:submitButton>--}%
    </div>

</div>