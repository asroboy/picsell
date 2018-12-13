<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'bankAccount.label', default: 'BankAccount')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
</head>

<body>

<!-- Page Content -->
<div class="container" style="margin-bottom: 50px">
    <div class="row">
        <div class="col-lg-3">
            <div class="my-4 label-red" style="width: 100%">Setup Bank Account</div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-3">

            <div style="width: 100%; margin-top: 15px">
                <button class="myButtonGrey" style="width: 100%;"
                        onclick="go_to_dashboard()">Dashboard</button>
            </div>

            <div style="width: 100%; margin-top: 15px">
                <button class="myButtonGrey" style="width: 100%;"
                        onclick="go_to_profile()">Profile</button>
            </div>

            <div style="width: 100%; margin-top: 15px">
                <button class="myButtonGrey" style="width: 100%;"
                        onclick="go_to_my_item()">My Items</button>
            </div>
            <div class="label-red" style="width: 100%; margin-top: 25px">
                Item Summary
            </div>

            <div class="card" style="margin-bottom: 15px">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Uploaded : ${com.picsell.data.Item.countByUserOwner(userObject)} images</li>
                    <li class="list-group-item">Approved : ${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "approved")} images</li>
                    <li class="list-group-item">Pending :  ${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "pending")} images</li>
                    <li class="list-group-item">Rejected :${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "rejected")} images</li>
                </ul>
            </div>
        </div>

        <div class="col-lg-9">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${bankAccountInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${bankAccountInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form url="[resource: bankAccountInstance, action: 'save']">
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="myButton"
                                    value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                </fieldset>
            </g:form>
        </div>
        <!-- /.col-lg-12 -->
    </div>

</div>

<script>


    function go_to_my_item() {
        window.location = '${createLink(controller: 'userItem', action: 'index')}';
    }
    function go_to_profile() {
        window.location = '${createLink(controller: 'profileUser', action: 'profile', id:com.picsell.data.ProfileUser.findByUser(userObject)?.id )}';
    }
    function go_to_dashboard() {
        window.location = '${createLink(controller: 'dashboard', action: 'contributor' )}';
    }
</script>
</body>
</html>
