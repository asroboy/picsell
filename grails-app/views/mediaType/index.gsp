<%@ page import="com.picsell.data.MediaType" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'mediaType.label', default: 'MediaType')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Media Type</div>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-12">
            <p>
                <g:link class="create btn btn-danger" action="create">Add Type</g:link>
            </p>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table">
                <thead>
                <tr>

                    <g:sortableColumn property="name"
                                      title="${message(code: 'mediaType.name.label', default: 'Name')}"/>

                    <th><g:message code="mediaType.parent.label" default="Parent"/></th>

                </tr>
                </thead>
                <tbody>
                <g:each in="${mediaTypeInstanceList}" status="i" var="mediaTypeInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${mediaTypeInstance.id}">${fieldValue(bean: mediaTypeInstance, field: "name")}</g:link></td>

                        <td>${fieldValue(bean: mediaTypeInstance?.parent, field: "name")}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${mediaTypeInstanceCount ?: 0}"/>
            </div>
        </div>
        <!-- /.col-lg-12 -->
    </div>
</div>
</body>
</html>
