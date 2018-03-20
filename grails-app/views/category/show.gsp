<%@ page import="com.picsell.data.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">
    <div id="show-category" class="content scaffold-show" role="main">

        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <p>
            <g:link class="list btn btn-outline btn-default" action="index"><g:message code="default.list.label"
                                                                                       args="[entityName]"/></g:link>
            <g:link class="create btn btn-outline btn-default" action="create"><g:message code="default.new.label"
                                                                                          args="[entityName]"/></g:link>

        </p>


        <table class="table table-bordered table-hover" style="margin-bottom: 70px">
            <tbody>

            <tr>
                <ol class="property-list category">
                    <g:if test="${categoryInstance?.name}">

                        %{--<td><li class="fieldcontain"></li></td>--}%
                        <td><span id="name-label" class="property-label"><g:message code="category.name.label"
                                                                                    default="Name"/></span></td>
                        <td><span class="property-value" aria-labelledby="name-label"><g:fieldValue
                                bean="${categoryInstance}"
                                field="name"/></span></td>
                    </g:if>
            </tr>

            <tr>
                <g:if test="${categoryInstance?.description}">
                    %{--<td><li class="fieldcontain"></li></td>--}%
                    <td><span id="description-label" class="property-label"><g:message code="category.description.label"
                                                                                       default="Description"/></span>
                    </td>
                    <td><span class="property-value" aria-labelledby="description-label"><g:fieldValue
                            bean="${categoryInstance}" field="description"/></span></td>
                </g:if>
            </ol>
            </tr>


            </tbody>
        </table>






        <g:form url="[resource: categoryInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit btn btn-outline btn-warning" action="edit" resource="${categoryInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class="delete btn btn-outline btn-danger" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </div>
</div>

</body>
</html>
