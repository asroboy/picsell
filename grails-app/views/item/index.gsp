
<%@ page import="com.picsell.data.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
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
					
					<g:sortableColumn property="name" title="${message(code: 'item.name.label', default: 'Name')}" />
					
					<g:sortableColumn property="description" title="${message(code: 'item.description.label', default: 'Description')}" />
					
					<th><g:message code="item.userOwner.label" default="User Owner" /></th>
					
					<g:sortableColumn property="currency" title="${message(code: 'item.currency.label', default: 'Currency')}" />
					
					<g:sortableColumn property="price" title="${message(code: 'item.price.label', default: 'Price')}" />
					
				</tr>
				</thead>
				<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "name")}</g:link></td>
						
						<td>${fieldValue(bean: itemInstance, field: "description")}</td>
						
						<td>${fieldValue(bean: itemInstance, field: "userOwner")}</td>
						
						<td>${fieldValue(bean: itemInstance, field: "currency")}</td>
						
						<td>${fieldValue(bean: itemInstance, field: "price")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemInstanceCount ?: 0}" />
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	</body>
</html>
