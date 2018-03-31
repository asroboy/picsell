<%@ page import="com.picsell.data.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<div id="show-item" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>

    <p>
        <g:link class="list btn btn-default" action="index"><g:message code="default.list.label"
                                                                       args="[entityName]"/></g:link>
        <g:link class="create  btn btn-default" action="create"><g:message code="default.new.label"
                                                                           args="[entityName]"/></g:link>
    </p>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-bordered table-hover" style="margin-bottom: 70px">
        <ol class="property-list item">
            <tbody>

            <g:if test="${itemInstance?.name}">
                <tr>
                    <td><li class="fieldcontain"></li></td>
                    <td><span id="name-label" class="property-label"><g:message code="item.name.label"
                                                                                default="Name"/></span></td>
                    <td><span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${itemInstance}"
                                                                                                field="name"/></span>
                    </td>

                </tr>
            </g:if>

            <g:if test="${itemInstance?.description}">
                <tr>
                    <td><li class="fieldcontain"></li></td>
                    <td><span id="description-label" class="property-label"><g:message code="item.description.label"
                                                                                       default="Description"/></span>
                    </td>
                    <td><span class="property-value" aria-labelledby="description-label"><g:fieldValue
                            bean="${itemInstance}" field="description"/></span></td>
                </tr>

            </g:if>

            <g:if test="${itemInstance?.userOwner}">
                <tr>
                    <td><li class="fieldcontain"></li></td>
                    <td><span id="userOwner-label" class="property-label"><g:message code="item.userOwner.label"
                                                                                     default="User Owner"/></span></td>
                    <td><span class="property-value" aria-labelledby="userOwner-label"><g:link controller="user"
                                                                                               action="show"
                                                                                               id="${itemInstance?.userOwner?.id}">${itemInstance?.userOwner?.encodeAsHTML()}</g:link></span>
                    </td>
                </tr>

            </g:if>

            <g:if test="${itemInstance?.price}">
                <tr>
                    <td><li class="fieldcontain"></li></td>
                    <td><span id="price-label" class="property-label"><g:message code="item.price.label"
                                                                                 default="Price"/></span></td>
                    <td><span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${itemInstance}"
                                                                                                 field="price"/></span>
                    </td>
                </tr>

            </g:if>

            </tbody>

        </ol>
    </table>
    <g:form url="[resource: itemInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit btn btn-outline btn-warning" action="edit" resource="${itemInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete btn btn-outline btn-danger" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
