<%@ page import="com.picsell.config.Account" %>
<!DOCTYPE html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}"/>
    %{--<r:require modules="bootstrap"/>--}%
    <meta name="layout" content="theme_portfolio_gh"/>

    <title></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
    <style>
    .pagination li {
        /*color: #dc3545;*/
        background-color: transparent;
        background-image: none;
        /*border-color: #dc3545;*/
        display: inline-block;
        font-weight: 400;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        border: 0.67px solid #00000054;
        padding: .375rem .75rem;
        font-size: 1rem;
        line-height: 1.5;
        border-radius: .20rem;
        margin: -.7px;
        transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
    }
    </style>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Account List</div>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-12">
            <p>
                <g:link class="create btn btn-danger btn-sm" action="create"><i class="fa fa-plus"></i> <g:message
                        code="default.new.label" args="[entityName]"/></g:link>
            </p>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table table-striped">
                <thead>
                <tr>

                    <g:sortableColumn property="name" title="${message(code: 'account.name.label', default: 'Name')}"/>

                    <g:sortableColumn property="type" title="${message(code: 'account.type.label', default: 'Type')}"/>

                    <g:sortableColumn property="lisence"
                                      title="${message(code: 'account.lisence.label', default: 'Lisence')}"/>

                    <g:sortableColumn property="inCurrency"
                                      title="${message(code: 'account.inCurrency.label', default: 'In Currency')}"/>

                    <g:sortableColumn property="info" title="${message(code: 'account.info.label', default: 'Info')}"/>

                    <g:sortableColumn property="allowMoreUser"
                                      title="${message(code: 'account.allowMoreUser.label', default: 'Allow More User')}"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${accountInstanceList}" status="i" var="accountInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "name")}</g:link></td>

                        <td>${fieldValue(bean: accountInstance, field: "type")}</td>

                        <td>${fieldValue(bean: accountInstance, field: "lisence")}</td>

                        <td>${fieldValue(bean: accountInstance, field: "inCurrency")}</td>

                        <td>${fieldValue(bean: accountInstance, field: "info")}</td>

                        <td><g:formatBoolean boolean="${accountInstance.allowMoreUser}"/></td>

                    </tr>
                </g:each>
                </tbody>
            </table>
            %{--<div class="pagination">--}%
            <g:paginate total="${accountInstanceCount ?: 0}"/>
            %{--</div>--}%
        </div>
        <!-- /.col-lg-12 -->
    </div>

</div>

<script>

</script>

</body>
</html>
