<%@ page import="com.picsell.data.MediaType" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'mediaType.label', default: 'MediaType')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Media Type Detail</div>
        </div>

    </div>


    <div class="row" style="margin-bottom: 20px">
        <div class="col-lg-12">
            <p>
                <g:link class="create btn btn-danger" action="create">Add Type</g:link>
                <g:link class="create btn btn-danger" action="index">List All Type</g:link>
            </p>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
        %{--<ol class="property-list mediaType">--}%
            <table class="table">

                <g:if test="${mediaTypeInstance?.name}">
                %{--<li class="fieldcontain">--}%
                    <tr>
                        <td>
                            <span id="name-label" class="property-label"><g:message code="mediaType.name.label"
                                                                                    default="Name"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue
                                    bean="${mediaTypeInstance}" field="name"/></span>

                        </td>
                    </tr>
                %{--</li>--}%

                </g:if>

                <g:if test="${mediaTypeInstance?.parent}">
                %{--<li class="fieldcontain">--}%
                    <tr>
                        <td>
                            <span id="parent-label" class="property-label"><g:message code="mediaType.parent.label"
                                                                                      default="Parent"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="parent-label">
                                <g:link controller="mediaType"
                                        action="show"
                                        id="${mediaTypeInstance?.parent?.id}">${mediaTypeInstance?.parent?.name}</g:link></span>

                        </td>
                    </tr>
                %{--</li>--}%

                </g:if>

                <g:if test="${mediaTypeInstance?.child}">
                %{--<li class="fieldcontain">--}%
                    <tr>
                        <td>
                            <span id="child-label" class="property-label"><g:message code="mediaType.child.label"
                                                                                     default="Child"/></span>
                        </td>
                        <td>

                            <g:each in="${mediaTypeInstance.child}" var="c">
                                <span class="property-value" aria-labelledby="child-label"><g:link
                                        controller="mediaType" action="show"
                                        id="${c.id}">${c?.name}</g:link> -</span>
                            </g:each>

                        </td>
                    </tr>
                %{--</li>--}%

                </g:if>

            </table>
            %{--</ol>--}%
            <br/>
            <g:form url="[resource: mediaTypeInstance, action: 'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn btn-danger" action="edit" resource="${mediaTypeInstance}"><g:message
                            code="default.button.edit.label" default="Edit"/></g:link>
                    <g:actionSubmit class="delete btn btn-danger" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
        <!-- /.col-lg-12 -->
    </div>
</div>

</body>
</html>
