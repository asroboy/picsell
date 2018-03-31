<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="Request Map"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">${entityName}</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">
    <div class="col-lg-12" style="margin-bottom: 15px">
        <g:link class="btn btn-default create" action="create"><g:message code="default.new.label"
                                                          args="[entityName]"/></g:link>
    </div>

    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                ${entityName}
            </div>

            <div class="panel-body">
                <div id="list-jawaban" class="content scaffold-list" role="main">
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <table class="table table-bordered">
                        <thead>
                        <tr>

                            <g:sortableColumn property="url" title="Url"/>
                            <g:sortableColumn property="url"
                                              title="Config Attribute"/>
                            <g:sortableColumn property="url" title="Http Method"/>

                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${results}" status="i" var="jawabanInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                <td><g:link action="edit"
                                            id="${jawabanInstance.id}">${fieldValue(bean: jawabanInstance, field: "url")}</g:link></td>

                                %{--<td><g:formatBoolean boolean="${jawabanInstance.jawabanBenar}" /></td>--}%

                                %{--<td>${fieldValue(bean: jawabanInstance, field: "jawaban")}</td>--}%

                                %{--<td>${fieldValue(bean: jawabanInstance, field: "url")}</td>--}%
                                <td>${fieldValue(bean: jawabanInstance, field: "configAttribute")}</td>
                                <td>${fieldValue(bean: jawabanInstance, field: "httpMethod")}</td>

                            </tr>
                        </g:each>
                        </tbody>
                    </table>

                    <div class="pagination">
                        <g:paginate class="paginateButtons" total="${totalCount ?: 0}"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
