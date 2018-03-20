<%@ page import="com.picsell.data.FileItem" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'fileItem.label', default: 'FileItem')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">File Item</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">
    <div id="list-fileItem" class="content scaffold-list" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <p>
            <a type="button" class="btn btn-outline btn-default"
               href="${createLink(controller: 'fileItem', action: 'create')}">Add</a>
        </p>

        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>

                <g:sortableColumn property="file" title="${message(code: 'fileItem.file.label', default: 'File')}"/>

                <g:sortableColumn property="fileName"
                                  title="${message(code: 'fileItem.fileName.label', default: 'File Name')}"/>

                <g:sortableColumn property="formatExtention"
                                  title="${message(code: 'fileItem.formatExtention.label', default: 'Format Extention')}"/>

                <g:sortableColumn property="contentType"
                                  title="${message(code: 'fileItem.contentType.label', default: 'Content Type')}"/>

                <th><g:message code="fileItem.item.label" default="Item"/></th>

                <g:sortableColumn property="fileSize"
                                  title="${message(code: 'fileItem.fileSize.label', default: 'File Size')}"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${fileItemInstanceList}" status="i" var="fileItemInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="show"
                                id="${fileItemInstance.id}">${fieldValue(bean: fileItemInstance, field: "file")}</g:link></td>

                    <td>${fieldValue(bean: fileItemInstance, field: "fileName")}</td>

                    <td>${fieldValue(bean: fileItemInstance, field: "formatExtention")}</td>

                    <td>${fieldValue(bean: fileItemInstance, field: "contentType")}</td>

                    <td>${fieldValue(bean: fileItemInstance, field: "item")}</td>

                    <td>${fieldValue(bean: fileItemInstance, field: "fileSize")}</td>

                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${fileItemInstanceCount ?: 0}"/>
        </div>
    </div>
</div>

</body>
</html>
