<%@ page import="com.picsell.config.TermOfService" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'termOfService.label', default: 'TermOfService')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="row">
    <div id="show-termOfService" class="content scaffold-show" role="main">
        <h1 style="margin-left: 30px">Term Of Service</h1>
        <br/>
        %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
        %{--</g:if>--}%
        <ol class="property-list termOfService">

            <g:if test="${termOfServiceInstance?.tos}">

                <span class="property-value" aria-labelledby="tos-label">
                    %{--<g:fieldValue bean="${termOfServiceInstance}" field="tos"/>--}%

                    <pre style="white-space: pre-line ">${raw(termOfServiceInstance?.tos)}</pre>
                </span>

            </g:if>

        </ol>

    </div>
</div>

</body>
</html>
