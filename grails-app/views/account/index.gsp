
<%@ page import="com.picsell.config.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
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
					
					<g:sortableColumn property="name" title="${message(code: 'account.name.label', default: 'Name')}" />
					
					<g:sortableColumn property="type" title="${message(code: 'account.type.label', default: 'Type')}" />
					
					<g:sortableColumn property="lisence" title="${message(code: 'account.lisence.label', default: 'Lisence')}" />
					
					<g:sortableColumn property="inCurrency" title="${message(code: 'account.inCurrency.label', default: 'In Currency')}" />
					
					<g:sortableColumn property="info" title="${message(code: 'account.info.label', default: 'Info')}" />
					
					<g:sortableColumn property="allowMoreUser" title="${message(code: 'account.allowMoreUser.label', default: 'Allow More User')}" />
					
				</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "name")}</g:link></td>
						
						<td>${fieldValue(bean: accountInstance, field: "type")}</td>
						
						<td>${fieldValue(bean: accountInstance, field: "lisence")}</td>
						
						<td>${fieldValue(bean: accountInstance, field: "inCurrency")}</td>
						
						<td>${fieldValue(bean: accountInstance, field: "info")}</td>
						
						<td><g:formatBoolean boolean="${accountInstance.allowMoreUser}" /></td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceCount ?: 0}" />
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	</body>
</html>
