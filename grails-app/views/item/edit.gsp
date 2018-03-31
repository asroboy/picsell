<%@ page import="com.picsell.data.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>

<div id="edit-item" class="content scaffold-edit" role="main">
    <h1><g:message code="default.edit.label" args="[entityName]"/></h1>

    <p>

        <g:link class="list btn btn-outline btn-default" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link>
        <g:link class="create btn btn-outline btn-default" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
    </p>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${itemInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${itemInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource: itemInstance, action: 'update']" method="PUT">
        <g:hiddenField name="version" value="${itemInstance?.version}"/>
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <br/>

            <g:actionSubmit class="save btn btn-outline btn-success" action="update"
                            value="${message(code: 'default.button.update.label', default: 'Update')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
