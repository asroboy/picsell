<%@ page import="com.picsell.config.TermOfService" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'termOfService.label', default: 'TermOfService')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div id="list-termOfService" class="content scaffold-list" role="main">
    <h1>Term Of Service</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:if test="${termOfServiceInstanceList == null}">
        <g:link class="create btn btn-outline btn-success" action="create">Set Term Of Service</g:link>
    </g:if>
    <table class="table">
        %{--<thead>--}%
        %{--<tr>--}%
        %{--<g:sortableColumn property="tos" title="${message(code: 'termOfService.tos.label', default: 'Tos')}"/>--}%
        %{--</tr>--}%
        %{--</thead>--}%


        <tbody>
        <g:each in="${termOfServiceInstanceList}" status="i" var="termOfServiceInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td width="5%"><g:link class="edit btn btn-outline btn-warning" action="edit" id="${termOfServiceInstance.id}">Edit</g:link></td>
                <td><pre style="white-space: pre-line ">${raw(fieldValue(bean: termOfServiceInstance, field: "tos"))}</pre></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${termOfServiceInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
