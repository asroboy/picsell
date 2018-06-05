<%=packageName%>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin_gh">
    <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">
    <div class="col-lg-12">
        <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">
    <div class="col-lg-12">
        <g:if test="\${flash.message}">
            <div class="message" role="status">\${flash.message}</div>
        </g:if>
        <g:hasErrors bean="\${${propertyName}}">
            <ul class="errors" role="alert">
                <g:eachError bean="\${${propertyName}}" var="error">
                    <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message
                            error="\${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource: propertyName, action: 'update']"
                method="PUT" <%=multiPart ? ' enctype="multipart/form-data"' : '' %>>
        <g:hiddenField name="version" value="\${${propertyName}?.version}"/>
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:actionSubmit class="save btn btn-info" action="update"
                            value="\${message(code: 'default.button.update.label', default: 'Update')}"/>
        </fieldset>
        </g:form>
    </div>
    <!-- /.col-lg-12 -->
</div>
%{--<a href="#edit-${domainClass.propertyName}" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--</ul>--}%
%{--</div>--}%
%{--<div id="edit-${domainClass.propertyName}" class="content scaffold-edit" role="main">--}%
%{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
%{--<g:if test="\${flash.message}">--}%
%{--<div class="message" role="status">\${flash.message}</div>--}%
%{--</g:if>--}%
%{--<g:hasErrors bean="\${${propertyName}}">--}%
%{--<ul class="errors" role="alert">--}%
%{--<g:eachError bean="\${${propertyName}}" var="error">--}%
%{--<li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>--}%
%{--</g:eachError>--}%
%{--</ul>--}%
%{--</g:hasErrors>--}%
%{--<g:form url="[resource:${propertyName}, action:'update']" method="PUT" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>--}%
%{--<g:hiddenField name="version" value="\${${propertyName}?.version}" />--}%
%{--<fieldset class="form">--}%
%{--<g:render template="form"/>--}%
%{--</fieldset>--}%
%{--<fieldset class="buttons">--}%
%{--<g:actionSubmit class="save" action="update" value="\${message(code: 'default.button.update.label', default: 'Update')}" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
%{--</div>--}%
</body>
</html>