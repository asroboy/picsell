<%@ page import="com.picsell.data.ProfileUser" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'profileUser.label', default: 'ProfileUser')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<div class="row">

    <div id="edit-profileUser" class="content scaffold-edit" role="main">
        <h1>My Profile Update</h1>
        <br/>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${profileUserInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${profileUserInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource: profileUserInstance, action: 'update']" method="PUT">
            <g:hiddenField name="version" value="${profileUserInstance?.version}"/>
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:actionSubmit class="save btn btn-outline btn-success" action="update"
                                value="${message(code: 'default.button.update.label', default: 'Update')}"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
