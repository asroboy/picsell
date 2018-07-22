<%@ page import="com.picsell.data.Banner" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <g:set var="entityName" value="${message(code: 'banner.label', default: 'Banner')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Banner Configuration</div>
        </div>

    </div>

    <div class="row" style="margin-bottom: 15px">
        <div class="col-lg-12">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
        %{--<ol class="property-list banner">--}%
            <table class="table">

                <g:if test="${bannerInstance?.type}">
                    <tr>
                        <td>
                            <span id="type-label" class="property-label"><g:message code="banner.type.label"
                                                                                    default="Type"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="type-label"><g:fieldValue
                                    bean="${bannerInstance}" field="type"/></span>

                        </td>
                    </tr>

                </g:if>

                <g:if test="${bannerInstance?.description}">
                    <tr>
                        <td>
                            <span id="description-label" class="property-label"><g:message
                                    code="banner.description.label" default="Description"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                                    bean="${bannerInstance}" field="description"/></span>

                        </td>
                    </tr>

                </g:if>

                <g:if test="${bannerInstance?.isActive}">
                    <tr>
                        <td>
                            <span id="isActive-label" class="property-label"><g:message code="banner.isActive.label"
                                                                                        default="Is Active"/></span>
                        </td>
                        <td>

                            <span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean
                                    boolean="${bannerInstance?.isActive}"/></span>

                        </td>
                    </tr>
                </g:if>

                <tr>
                    <td>
                        Banner Video
                    </td>
                    <td>
                        <g:set var="video_resource"
                               value="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(bannerInstance?.id, bannerInstance.class.simpleName)?.id)}"/>
                        <div>
                            <video width="320" height="240" controls style="background: grey">
                                <source src="${video_resource}" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                        </div>
                    </td>
                </tr>

            </table>
            <g:form url="[resource: bannerInstance, action: 'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-sm btn-danger" action="edit" resource="${bannerInstance}"><g:message
                            code="default.button.edit.label" default="Edit"/></g:link>
                    %{--<g:actionSubmit class="delete btn btn-info" action="delete"--}%
                    %{--value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
                    %{--onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>--}%
                </fieldset>
            </g:form>
        </div>
    </div>

</div>
</body>
</html>
