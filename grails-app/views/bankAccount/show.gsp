<%@ page import="com.picsell.data.BankAccount" %>
<!DOCTYPE html>
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
</head>

<body>
<div class="container" style="margin-bottom: 80px">
    <div class="row">
        <div class="col-lg-3">
            <div class="my-4 label-red" style="width: 100%">User Bank Account</div>
        </div>
    </div>

    <div class="row">

        <div class="col-md-3">
            <div class="label-red" style="width: 100%">
                Summary
            </div>

            <div class="card" style="margin-bottom: 15px">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Uploaded : ${com.picsell.data.Item.countByUserOwner(bankAccountInstance?.user)} images</li>
                    <li class="list-group-item">Approved : ${com.picsell.data.Item.countByUserOwnerAndStatus(bankAccountInstance?.user, "approved")} images</li>
                    <li class="list-group-item">Pending :  ${com.picsell.data.Item.countByUserOwnerAndStatus(bankAccountInstance?.user, "pending")} images</li>
                    <li class="list-group-item">Rejected :${com.picsell.data.Item.countByUserOwnerAndStatus(bankAccountInstance?.user, "rejected")} images</li>
                </ul>
            </div>

            <div style="width: 100%; margin-top: 15px">
                <button class="btn btn-sm btn-outline-danger" style="width: 100%;"
                        onclick="go_to_dashboard()">Dashboard</button>
            </div>

            <div style="width: 100%; margin-top: 15px">
                <button class="btn btn-sm btn-outline-danger" style="width: 100%;"
                        onclick="go_to_profile()">Profile</button>
            </div>

            <div style="width: 100%; margin-top: 15px">
                <button class="btn btn-sm btn-outline-danger" style="width: 100%;"
                        onclick="go_to_my_item()">My Items</button>
            </div>

        </div>

        <div class="col-lg-9">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <table class="table table-striped">

                <g:if test="${bankAccountInstance?.accountNo}">
                    <tr>
                        <td>
                            <span id="accountNo-label" class="property-label"><g:message
                                    code="bankAccount.accountNo.label" default="Account No"/></span>
                        </td>
                        <td>
                            <span class="property-value" aria-labelledby="accountNo-label"><g:fieldValue
                                    bean="${bankAccountInstance}" field="accountNo"/></span>
                        </td>
                    </tr>

                </g:if>

                <g:if test="${bankAccountInstance?.accountName}">
                    <tr>
                        <td>
                            <span id="accountName-label" class="property-label"><g:message
                                    code="bankAccount.accountName.label" default="Account Name"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="accountName-label"><g:fieldValue
                                    bean="${bankAccountInstance}" field="accountName"/></span>

                        </td>
                    </tr>
                </g:if>

                <g:if test="${bankAccountInstance?.bankName}">
                    <tr>
                        <td>
                            <span id="bankName-label" class="property-label"><g:message
                                    code="bankAccount.bankName.label" default="Bank Name"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="bankName-label"><g:fieldValue
                                    bean="${bankAccountInstance}" field="bankName"/></span>

                        </td>
                    </tr>
                </g:if>

                <g:if test="${bankAccountInstance?.branchCode}">
                %{--<li class="fieldcontain">--}%
                    <tr>
                        <td>
                            <span id="branchCode-label" class="property-label"><g:message
                                    code="bankAccount.branchCode.label" default="Branch Code"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="branchCode-label"><g:fieldValue
                                    bean="${bankAccountInstance}" field="branchCode"/></span>

                        </td>
                    </tr>
                %{--</li>--}%

                </g:if>

                <g:if test="${bankAccountInstance?.bankCode}">
                %{--<li class="fieldcontain">--}%
                    <tr>
                        <td>
                            <span id="bankCode-label" class="property-label"><g:message
                                    code="bankAccount.bankCode.label" default="Bank Code"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="bankCode-label"><g:fieldValue
                                    bean="${bankAccountInstance}" field="bankCode"/></span>

                        </td>
                    </tr>
                %{--</li>--}%

                </g:if>

            </table>

            <g:form url="[resource: bankAccountInstance, action: 'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn btn-sm btn-danger" action="edit"
                            resource="${bankAccountInstance}">Change Bank Account</g:link>
                </fieldset>
            </g:form>
        </div>
    </div>
</div>

<script>


    function go_to_my_item() {
        window.location = '${createLink(controller: 'userItem', action: 'index')}';
    }
    function go_to_profile() {
        window.location = '${createLink(controller: 'profileUser', action: 'profile', id:bankAccountInstance?.user?.id )}';
    }
    function go_to_dashboard() {
        window.location = '${createLink(controller: 'dashboard', action: 'contributor' )}';
    }
</script>

</body>
</html>
