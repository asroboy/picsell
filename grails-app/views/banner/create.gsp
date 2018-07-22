<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <g:set var="entityName" value="${message(code: 'banner.label', default: 'Banner')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Banner Configuration</div>
        </div>

    </div>

    <div class="row" style="margin-bottom: 15px">
        <div class="col-lg-12">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${bannerInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${bannerInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form url="[resource: bannerInstance, action: 'save']">
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save btn btn-info"
                                    value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                </fieldset>
            </g:form>
        </div>
        <!-- /.col-lg-12 -->
    </div>
</div>
</body>
</html>
