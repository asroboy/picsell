<%@ page import="com.picsell.config.TermOfService" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'termOfService.label', default: 'TermOfService')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
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

        <div class="col-md-12">
            <g:if test="${termOfServiceInstance?.tos}">
                <span class="property-value" aria-labelledby="tos-label">
                    %{--<g:fieldValue bean="${termOfServiceInstance}" field="tos"/>--}%
                    ${raw(termOfServiceInstance?.tos)}
                </span>
            </g:if>
        </div>


    </div>
</div>
</body>
</html>
