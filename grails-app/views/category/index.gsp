<%@ page import="com.picsell.data.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>

<div class="container" style="margin-top: 80px; margin-bottom: 80px">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Category</div>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-12">
            <p>
                <g:link class="create btn btn-danger" action="create"><i class="fa fa-plus"></i> <g:message
                        code="default.new.label" args="[entityName]"/></g:link>
            </p>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <table class="table">
                <thead>
                <tr>

                    <g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}"/>

                    <g:sortableColumn property="description"
                                      title="${message(code: 'category.description.label', default: 'Description')}"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "name")}</g:link></td>

                        <td>${fieldValue(bean: categoryInstance, field: "description")}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${categoryInstanceCount ?: 0}"/>
            </div>
        </div>
        <!-- /.col-lg-12 -->
    </div>
</div>

</body>
</html>
