<%@ page import="com.picsell.config.TermOfService" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'termOfService.label', default: 'TermOfService')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
    <!-- include libraries(jQuery, bootstrap) -->
    %{--<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">--}%
    %{--<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>--}%
    %{--<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>--}%

    <!-- include summernote css/js -->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>


    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">



</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Edit Term Of Service content</div>
        </div>

    </div>
    <div class="row">
        <div class="col-md-12">
            <div id="edit-termOfService" class="content scaffold-edit" role="main" style="margin-bottom: 50px">
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

        </div>

    </div>

</div>

<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            height: 400
        });
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