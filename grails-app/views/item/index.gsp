<%@ page import="com.picsell.data.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Item</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>


    <div id="list-item" class="content scaffold-list" role="main">
        <p>
            <a type="button" class="btn btn-outline btn-default"
               href="${createLink(controller: 'item', action: 'create')}">Add</a>
        </p>
        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>

                <g:sortableColumn property="name" title="${message(code: 'item.name.label', default: 'Name')}"/>

                <g:sortableColumn property="description"
                                  title="${message(code: 'item.description.label', default: 'Description')}"/>

                <th><g:message code="item.userOwner.label" default="User Owner"/></th>

                <g:sortableColumn property="price" title="${message(code: 'item.price.label', default: 'Price')}"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${itemInstanceList}" status="i" var="itemInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="show"
                                id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "name")}</g:link></td>

                    <td>${fieldValue(bean: itemInstance, field: "description")}</td>

                    <td>${fieldValue(bean: itemInstance, field: "userOwner")}</td>

                    <td>${fieldValue(bean: itemInstance, field: "price")}</td>

                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${itemInstanceCount ?: 0}"/>
        </div>
    </div>

</div>

</body>
</html>
