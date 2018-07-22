<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'termOfService.label', default: 'TermOfService')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
</head>

<body>

<div id="create-termOfService" class="content scaffold-create" role="main">
    <h1>Setup Term Of Service</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${termOfServiceInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${termOfServiceInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource: termOfServiceInstance, action: 'save']">
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <br/>
            <g:submitButton name="create" class="save btn btn-outline btn-success"
                            value="${message(code: 'default.button.create.label', default: 'Save')}"/>
        </fieldset>
    </g:form>
</div>

<script>
    var data = "";
    $('#summernote').summernote({
        placeholder: data,
        tabsize: 2,
        height: 400
    });
</script>
</body>

</html>
