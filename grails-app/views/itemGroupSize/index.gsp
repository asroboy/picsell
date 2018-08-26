
<%@ page import="com.picsell.data.ItemGroupSize" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'itemGroupSize.label', default: 'ItemGroupSize')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<div class="row">
		<div class="col-lg-12">
			<p>
				<g:link class="create btn btn-info" action="create"><i class="fa fa-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
			</p>

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
				<thead>
				<tr>
					
					<g:sortableColumn property="groupLabel" title="${message(code: 'itemGroupSize.groupLabel.label', default: 'Group Label')}" />
					
					<g:sortableColumn property="maxSize" title="${message(code: 'itemGroupSize.maxSize.label', default: 'Max Size')}" />
					
					<g:sortableColumn property="minSize" title="${message(code: 'itemGroupSize.minSize.label', default: 'Min Size')}" />
					
					<g:sortableColumn property="price" title="${message(code: 'itemGroupSize.price.label', default: 'Price')}" />
					
				</tr>
				</thead>
				<tbody>
				<g:each in="${itemGroupSizeInstanceList}" status="i" var="itemGroupSizeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${itemGroupSizeInstance.id}">${fieldValue(bean: itemGroupSizeInstance, field: "groupLabel")}</g:link></td>
						
						<td>${fieldValue(bean: itemGroupSizeInstance, field: "maxSize")}</td>
						
						<td>${fieldValue(bean: itemGroupSizeInstance, field: "minSize")}</td>
						
						<td>${fieldValue(bean: itemGroupSizeInstance, field: "price")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemGroupSizeInstanceCount ?: 0}" />
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	</body>
</html>
