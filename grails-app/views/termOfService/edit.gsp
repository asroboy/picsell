<%@ page import="com.picsell.config.TermOfService" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'termOfService.label', default: 'TermOfService')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>


</head>

<body>

<div id="edit-termOfService" class="content scaffold-edit" role="main">
    <h1>Edit Term Of Service</h1>
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
    <g:form url="[resource: termOfServiceInstance, action: 'update']" method="PUT">
        <g:hiddenField name="version" value="${termOfServiceInstance?.version}"/>
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <br/>
            <g:actionSubmit class="save btn btn-outline btn-success" action="update"
                            value="Save"/>
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


%{--<!DOCTYPE html>--}%
%{--<html lang="en">--}%
%{--<head>--}%
%{--<meta charset="UTF-8">--}%
%{--<meta name="layout" content="theme_sbadmin">--}%
%{--<title></title>--}%

%{--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>--}%
%{--<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">--}%
%{--<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>--}%
%{--</head>--}%
%{--<body>--}%
%{--<div id="edit-termOfService" class="content scaffold-edit" role="main">--}%
%{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
%{--<g:if test="${flash.message}">--}%
%{--<div class="message" role="status">${flash.message}</div>--}%
%{--</g:if>--}%
%{--<g:hasErrors bean="${termOfServiceInstance}">--}%
%{--<ul class="errors" role="alert">--}%
%{--<g:eachError bean="${termOfServiceInstance}" var="error">--}%
%{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
%{--</g:eachError>--}%
%{--</ul>--}%
%{--</g:hasErrors>--}%
%{--<g:form url="[resource:termOfServiceInstance, action:'update']" method="PUT" >--}%
%{--<g:hiddenField name="version" value="${termOfServiceInstance?.version}" />--}%
%{--<fieldset class="form">--}%
%{--<g:render template="form"/>--}%
%{--</fieldset>--}%
%{--<fieldset class="buttons">--}%
%{--<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%

%{--</div>--}%

%{--</body>--}%
%{--</html>--}%