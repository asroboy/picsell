<%@ page import="com.picsell.data.MediaType" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'mediaType.label', default: 'MediaType')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<div class="container" style="margin-top: 80px; margin-bottom: 80px">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Media Type Detail</div>
        </div>

    </div>


    <div class="row" style="margin-bottom: 20px">
        <div class="col-lg-12">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${mediaTypeInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${mediaTypeInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form url="[resource: propertyName, action: 'update']"
                    method="PUT">
                <g:hiddenField name="version" value="${mediaTypeInstance?.version}"/>
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:actionSubmit class="save btn btn-danger" action="update"
                                    value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                </fieldset>
            </g:form>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    %{--<a href="#edit-mediaType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
    %{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
    %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
    %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
    %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
    %{--</ul>--}%
    %{--</div>--}%
    %{--<div id="edit-mediaType" class="content scaffold-edit" role="main">--}%
    %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
    %{--<g:if test="${flash.message}">--}%
    %{--<div class="message" role="status">${flash.message}</div>--}%
    %{--</g:if>--}%
    %{--<g:hasErrors bean="${mediaTypeInstance}">--}%
    %{--<ul class="errors" role="alert">--}%
    %{--<g:eachError bean="${mediaTypeInstance}" var="error">--}%
    %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
    %{--</g:eachError>--}%
    %{--</ul>--}%
    %{--</g:hasErrors>--}%
    %{--<g:form url="[resource:mediaTypeInstance, action:'update']" method="PUT" >--}%
    %{--<g:hiddenField name="version" value="${mediaTypeInstance?.version}" />--}%
    %{--<fieldset class="form">--}%
    %{--<g:render template="form"/>--}%
    %{--</fieldset>--}%
    %{--<fieldset class="buttons">--}%
    %{--<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
    %{--</fieldset>--}%
    %{--</g:form>--}%
    %{--</div>--}%
</div>
</body>
</html>
