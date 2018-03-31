<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div class="row">

    <div id="create-category" class="content scaffold-create" role="main">
        <h1>Add Category</h1>

        <p>

            <g:link class="list btn btn-default" action="index"><g:message code="default.list.label"
                                                                           args="[entityName]"/></g:link>
        </p>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${categoryInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${categoryInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource: categoryInstance, action: 'save']">
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save btn btn-outline btn-success"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
