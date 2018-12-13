<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/8/2018
  Time: 10:57 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>
    <style type="text/css">
    img.profile-pic {
        height: 150px;
        width: 150px;
    }

    .button-change {
        margin-top: 10px;
        margin-bottom: 50px;
        width: 150px;

    }
    </style>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">

    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userInstance)}"/>
</head>

<body>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Your Account</div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h4>This is your account page. Set your preferences and option here</h4>
            <hr/>
        </div>
    </div>
    <!-- Portfolio Item Row -->
    <div class="row">

        <div class="col-md-3">
            <g:each in="${userRoles}" var="role" status="i">
                <g:if test="${role?.role?.authority.equals("ROLE_CONTRIBUTOR")}">
                    <div class="label-red" style="width: 100%">
                        Summary
                    </div>

                    <div class="card" style="margin-bottom: 15px">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Uploaded : ${com.picsell.data.Item.countByUserOwner(profileUserInstance?.user)} images</li>
                            <li class="list-group-item">Approved : ${com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "approved")} images</li>
                            <li class="list-group-item">Pending :  ${com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "pending")} images</li>
                            <li class="list-group-item">Rejected :${com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "rejected")} images</li>
                        </ul>
                    </div>

                    <div class="label-red" style="width: 100%">
                        Bank Account
                    </div>

                    <div class="card" style="margin-bottom: 15px; ">
                        <ul class="list-group list-group-flush">
                            <g:set var="bankAccount"
                                   value="${com.picsell.data.BankAccount.findByUser(profileUserInstance?.user)}"/>
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

                    <div style="width: 100%; margin-top: 15px">
                        <button class="btn btn-sm btn-outline-danger" style="width: 100%;"
                                onclick="go_to_my_item()">My Items</button>
                    </div>
                </g:if>
                <g:if test="${role?.role?.authority.equals("ROLE_USER")}">
                    <div class="card">
                    <div style="margin: 5px">
                        <a href="${createLink(controller: 'dashboard', action: 'user')}" class="myButtonGrey"
                                                style="text-align: left;width: 100%">Profile</a></div>

                    <div style="margin: 5px">
                        <a href="${createLink(controller: 'dashboard', action: 'user_plans')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Plans</a></div>

                    <div style="margin: 5px">
                        <a href="${createLink(controller: 'dashboard', action: 'billing_info')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Billing</a></div>

                    <div style="margin: 5px"><a
                            href="${createLink(controller: 'purchaseHistory', action: 'index', id: userInstance?.id)}"
                            class="myButton"
                            style="text-align: left;width: 100%">Purchase History</a></div>


                    <div style="margin: 5px">
                        <a href="${createLink(controller: 'dashboard', action: 'preferences')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Preferences</a></div>

                    <div style="margin: 5px">

                        <a href="${createLink(controller: 'dashboard', action: 'upgrade_to_cotributor')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Become Contributor</a>
                    </div>
                    </ul>
                    </div>
                </g:if>
            </g:each>

        </div>

        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <div class="sub-part1" style="margin-bottom: 20px">Purchase History</div>
                    <div class="row" style="margin: 20px;">
                        <div class="col-md-12">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <td width="25%">Billing ID</td>
                                    <td>Invoiced At</td>
                                    <td>Total Amount</td>
                                    <td>Billing Status</td>
                                    %{--<td>Paid At</td>--}%
                                    <td>Link Status</td>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${userPuchaseItems}" var="purchasedItem">
                                    <tr>
                                        %{--<td>${purchasedItem?.imageFile?.tableId}.${purchasedItem?.imageFile?.id}</td>--}%
                                        <td>${purchasedItem?.invoice?.invoiceNumber}</td>
                                        <td>${purchasedItem?.invoice?.invoicedAt}</td>
                                        <td>${purchasedItem?.invoice?.amount}</td>
                                        <td>${purchasedItem?.invoice?.status}</td>
                                        %{--<td>${purchasedItem?.invoice?.paidAt}</td>--}%
                                        %{--<td><g:formatDate format="yyyy-MM-dd" date="${purchasedItem?.purchaseDate}"/></td>--}%
                                        %{--<td><g:formatDate format="yyyy-MM-dd" date="${purchasedItem?.tokenExpired}"/></td>--}%
                                        %{--<td>${purchasedItem?.totalAmount} IDR</td>--}%
                                        <td>
                                            <g:if test="${purchasedItem?.linkClicked > 0}"><font
                                                    color="#808080"><b>Downloaded</b></font></g:if>
                                            <g:elseif
                                                    test="${purchasedItem?.tokenExpired?.before(new Date())}"><font
                                                    color="red"><b>Link expired</b></font></g:elseif>
                                            <g:else><font color="green"><b>Link Active</b></font></g:else>
                                        </td>
                                    </tr>
                                </g:each>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                %{--<div class="label-red">--}%
                    %{--Purchase History--}%
                %{--</div>--}%


            </div>

        </div>

    </div>

    <br/>

</div>


<script>

    function go_to_my_item() {
        window.location = '${createLink(controller: 'userItem', action: 'index')}';
    }
    function changeProfile() {
        var editInfo = document.getElementById('edit_info');
        var info = document.getElementById('info');
        info.style.display = "none";
        editInfo.style.display = "block";
        console.log("halo");
    }

</script>
</body>
</html>