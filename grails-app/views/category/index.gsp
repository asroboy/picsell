<%@ page import="com.picsell.data.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Category</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">
    <div class="col-lg-12">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <p>
            <a type="button" class="btn btn-outline btn-default"
               href="${createLink(controller: 'category', action: 'create')}">Add</a>
        </p>
        <table class="table table-striped table-bordered table-hover">
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

</body>
</html>
