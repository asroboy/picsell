
<%@ page import="com.picsell.data.BankAccount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'bankAccount.label', default: 'BankAccount')}" />
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
					
					<g:sortableColumn property="accountNo" title="${message(code: 'bankAccount.accountNo.label', default: 'Account No')}" />
					
					<g:sortableColumn property="accountName" title="${message(code: 'bankAccount.accountName.label', default: 'Account Name')}" />
					
					<g:sortableColumn property="bankName" title="${message(code: 'bankAccount.bankName.label', default: 'Bank Name')}" />
					
					<g:sortableColumn property="branchCode" title="${message(code: 'bankAccount.branchCode.label', default: 'Branch Code')}" />
					
					<g:sortableColumn property="bankCode" title="${message(code: 'bankAccount.bankCode.label', default: 'Bank Code')}" />
					
					<th><g:message code="bankAccount.user.label" default="User" /></th>
					
				</tr>
				</thead>
				<tbody>
				<g:each in="${bankAccountInstanceList}" status="i" var="bankAccountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${bankAccountInstance.id}">${fieldValue(bean: bankAccountInstance, field: "accountNo")}</g:link></td>
						
						<td>${fieldValue(bean: bankAccountInstance, field: "accountName")}</td>
						
						<td>${fieldValue(bean: bankAccountInstance, field: "bankName")}</td>
						
						<td>${fieldValue(bean: bankAccountInstance, field: "branchCode")}</td>
						
						<td>${fieldValue(bean: bankAccountInstance, field: "bankCode")}</td>
						
						<td>${fieldValue(bean: bankAccountInstance, field: "user")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bankAccountInstanceCount ?: 0}" />
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	</body>
</html>
