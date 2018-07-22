<%@ page import="com.picsell.config.TermOfService" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'termOfService.label', default: 'TermOfService')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Term Of Service</div>
        </div>

    </div>

    <div class="row">

        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:if test="${termOfServiceInstanceList == null}">
            <g:link class="create btn btn-outline btn-success" action="create">Set Term Of Service</g:link>
        </g:if>
        <table class="table">
            <tbody>
            <g:each in="${termOfServiceInstanceList}" status="i" var="termOfServiceInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td width="5%"><g:link class="edit btn btn-outline btn-warning" action="edit"
                                           id="${termOfServiceInstance.id}">Edit</g:link></td>
                    <td>
                       ${raw(termOfServiceInstance?.tos)}
                    </td>

                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${termOfServiceInstanceCount ?: 0}"/>
        </div>
    </div>

</div>

</body>
</html>
