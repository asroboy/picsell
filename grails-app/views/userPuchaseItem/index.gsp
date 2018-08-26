
<%@ page import="com.picsell.data.UserPuchaseItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'userPuchaseItem.label', default: 'UserPuchaseItem')}" />
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
					
					<th><g:message code="userPuchaseItem.user.label" default="User" /></th>
					
					<th><g:message code="userPuchaseItem.imageFile.label" default="Image File" /></th>
					
					<g:sortableColumn property="purchaseDate" title="${message(code: 'userPuchaseItem.purchaseDate.label', default: 'Purchase Date')}" />
					
					<th><g:message code="userPuchaseItem.paymentMethod.label" default="Payment Method" /></th>
					
					<g:sortableColumn property="purchasePrice" title="${message(code: 'userPuchaseItem.purchasePrice.label', default: 'Purchase Price')}" />
					
				</tr>
				</thead>
				<tbody>
				<g:each in="${userPuchaseItemInstanceList}" status="i" var="userPuchaseItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${userPuchaseItemInstance.id}">${fieldValue(bean: userPuchaseItemInstance, field: "user")}</g:link></td>
						
						<td>${fieldValue(bean: userPuchaseItemInstance, field: "imageFile")}</td>
						
						<td><g:formatDate date="${userPuchaseItemInstance.purchaseDate}" /></td>
						
						<td>${fieldValue(bean: userPuchaseItemInstance, field: "paymentMethod")}</td>
						
						<td>${fieldValue(bean: userPuchaseItemInstance, field: "purchasePrice")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userPuchaseItemInstanceCount ?: 0}" />
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	</body>
</html>
