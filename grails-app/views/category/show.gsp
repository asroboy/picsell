<%@ page import="com.picsell.data.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>

<div class="container" style="margin-top: 80px; margin-bottom: 80px">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Categoriy Detail</div>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-12">
            <p>
                <g:link class="create btn btn-danger" action="create"><i class="fa fa-plus"></i> <g:message
                        code="default.new.label" args="[entityName]"/></g:link>
                <g:link class="create btn btn-danger" action="index">List All Category</g:link>
            </p>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
        %{--<ol class="property-list category">--}%
            <table class="table" style="height: 0">

                <g:if test="${categoryInstance?.name}">
                %{--<li class="fieldcontain">--}%
                    <tr>
                        <td>
                            <span id="name-label" class="property-label"><g:message code="category.name.label"
                                                                                    default="Name"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="name-label"><g:fieldValue
                                    bean="${categoryInstance}" field="name"/></span>

                        </td>
                    </tr>
                %{--</li>--}%

                </g:if>

                <g:if test="${categoryInstance?.description}">
                %{--<li class="fieldcontain">--}%
                    <tr>
                        <td>
                            <span id="description-label" class="property-label"><g:message
                                    code="category.description.label"
                                    default="Description"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                                    bean="${categoryInstance}" field="description"/></span>

                        </td>
                    </tr>
                %{--</li>--}%

                </g:if>

            </table>
            %{--</ol>--}%

            <br/>
            <br/>
            <br/>
            <g:form url="[resource: categoryInstance, action: 'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn btn-danger" action="edit" resource="${categoryInstance}"><g:message
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
