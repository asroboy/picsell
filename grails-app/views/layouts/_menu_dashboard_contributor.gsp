<div class="card" style="margin-bottom: 15px">
    <div style="margin: 5px"><a href="${createLink(controller: 'dashboard', action: 'user')}"
                                class="myButton"
                                style="text-align: left;width: 100%">Profile</a></div>

    <div style="margin: 5px"><a href="${createLink(controller: 'dashboard', action: 'user_plans')}"
                                class="myButtonGrey"
                                style="text-align: left;width: 100%">Plans</a></div>

    <div style="margin: 5px">
        <a href="${createLink(controller: 'dashboard', action: 'billing_info')}"
           class="myButtonGrey"
           style="text-align: left;width: 100%">Billing</a></div>


    <div style="margin: 5px"><a
            href="${createLink(controller: 'purchaseHistory', action: 'index', id: userObject?.id)}"
            class="myButtonGrey"
            style="text-align: left;width: 100%">Purchase History</a></div>

    <div style="margin: 5px">
        <a href="${createLink(controller: 'dashboard', action: 'preferences')}"
           class="myButtonGrey"
           style="text-align: left;width: 100%">Preferences</a></div>

    <div style="margin: 5px">
        <button class="myButtonGrey" style="text-align: left;width: 100%"
                onclick="go_to_my_item()">My Items</button>
    </div>
</div>

<div class="label-red" style="width: 100%">
    Summary
</div>

<div class="card" style="margin-bottom: 15px">
    <ul class="list-group list-group-flush">
        <li class="list-group-item">Uploaded : ${com.picsell.data.Item.countByUserOwner(userObject)} images</li>
        <li class="list-group-item">Approved : ${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "approved")} images</li>
        <li class="list-group-item">Pending :  ${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "pending")} images</li>
        <li class="list-group-item">Rejected :${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "rejected")} images</li>
    </ul>
</div>

<div class="label-red" style="width: 100%">
    Bank Account
</div>

<div class="card" style="margin-bottom: 15px; ">
    <ul class="list-group list-group-flush">
        <g:set var="bankAccount"
               value="${com.picsell.data.BankAccount.findByUser(userObject)}"/>
        <g:if test="${bankAccount}">
            <li class="list-group-item">Account No ${bankAccount?.accountNo}</li>
            <li class="list-group-item">Name ${bankAccount?.accountName}</li>
            <li class="list-group-item">Bank Name ${bankAccount?.bankName}</li>
            <li class="list-group-item">Bank Code ${bankAccount?.bankCode}</li>
            <li class="list-group-item"><a
                    href="${createLink(controller: 'bankAccount', action: 'show', id: bankAccount?.id)}"
                    class="card-link">Change Bank Account</a></li>

        </g:if>
        <g:else>
            <li class="list-group-item">You don't have bank account related to your account</li>
            <li class="list-group-item"><a
                    href="${createLink(controller: 'bankAccount', action: 'create')}"
                    class="card-link">Add Bank</a></li>

        </g:else>
    </ul>
</div>
