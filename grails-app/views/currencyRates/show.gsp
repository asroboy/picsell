
<%@ page import="com.picsell.data.CurrencyRates" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'currencyRates.label', default: 'CurrencyRates')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
			%{--<ol class="property-list currencyRates">--}%
				<table class="table">
				
				<g:if test="${currencyRatesInstance?.name}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="name-label" class="property-label"><g:message code="currencyRates.name.label" default="Name" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${currencyRatesInstance}" field="name"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${currencyRatesInstance?.rateToUSD}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="rateToUSD-label" class="property-label"><g:message code="currencyRates.rateToUSD.label" default="Rate To USD" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="rateToUSD-label"><g:fieldValue bean="${currencyRatesInstance}" field="rateToUSD"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
                </table>
			%{--</ol>--}%

            <br/>
            <br/>
            <br/>
			<g:form url="[resource:currencyRatesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-info" action="edit" resource="${currencyRatesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	</body>
</html>
