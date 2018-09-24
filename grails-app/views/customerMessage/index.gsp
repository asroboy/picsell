
<%@ page import="com.picsell.support.CustomerMessage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'customerMessage.label', default: 'CustomerMessage')}" />
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
					
					<g:sortableColumn property="fullName" title="${message(code: 'customerMessage.fullName.label', default: 'Full Name')}" />
					
					<g:sortableColumn property="email" title="${message(code: 'customerMessage.email.label', default: 'Email')}" />
					
					<g:sortableColumn property="message" title="${message(code: 'customerMessage.message.label', default: 'Message')}" />
					
				</tr>
				</thead>
				<tbody>
				<g:each in="${customerMessageInstanceList}" status="i" var="customerMessageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${customerMessageInstance.id}">${fieldValue(bean: customerMessageInstance, field: "fullName")}</g:link></td>
						
						<td>${fieldValue(bean: customerMessageInstance, field: "email")}</td>
						
						<td>${fieldValue(bean: customerMessageInstance, field: "message")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerMessageInstanceCount ?: 0}" />
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	</body>
</html>
