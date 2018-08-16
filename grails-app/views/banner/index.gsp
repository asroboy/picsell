<%@ page import="com.picsell.data.Banner" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <g:set var="entityName" value="${message(code: 'banner.label', default: 'Banner')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<div class="container" style="margin-top: 80px; margin-bottom: 80px">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Banner Configuration</div>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-12">
            %{--<p>--}%
                %{--<g:link class="create btn btn-info" action="create"><i class="fa fa-plus"></i> <g:message--}%
                        %{--code="default.new.label" args="[entityName]"/></g:link>--}%
            %{--</p>--}%

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table">
                <thead>
                <tr>

                    <g:sortableColumn property="type" title="${message(code: 'banner.type.label', default: 'Type')}"/>

                    <g:sortableColumn property="description"
                                      title="${message(code: 'banner.description.label', default: 'Description')}"/>

                    <g:sortableColumn property="isActive"
                                      title="${message(code: 'banner.isActive.label', default: 'Is Active')}"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${bannerInstanceList}" status="i" var="bannerInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${bannerInstance.id}">${fieldValue(bean: bannerInstance, field: "type")}</g:link></td>

                        <td>${fieldValue(bean: bannerInstance, field: "description")}</td>

                        <td><g:formatBoolean boolean="${bannerInstance.isActive}"/></td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${bannerInstanceCount ?: 0}"/>
            </div>
        </div>
        <!-- /.col-lg-12 -->
    </div>
</div>
</body>
</html>
