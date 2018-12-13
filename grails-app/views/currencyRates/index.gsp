
<%@ page import="com.picsell.data.CurrencyRates" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'currencyRates.label', default: 'CurrencyRates')}" />
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
					
					<g:sortableColumn property="name" title="${message(code: 'currencyRates.name.label', default: 'Name')}" />
					
					<g:sortableColumn property="rateToUSD" title="${message(code: 'currencyRates.rateToUSD.label', default: 'Rate To USD')}" />
					
				</tr>
				</thead>
				<tbody>
				<g:each in="${currencyRatesInstanceList}" status="i" var="currencyRatesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${currencyRatesInstance.id}">${fieldValue(bean: currencyRatesInstance, field: "name")}</g:link></td>
						
						<td>${fieldValue(bean: currencyRatesInstance, field: "rateToUSD")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${currencyRatesInstanceCount ?: 0}" />
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	</body>
</html>
