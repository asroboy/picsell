<%@ page import="com.picsell.data.CurrencyRates" %>



<div class="form-group fieldcontain ${hasErrors(bean: currencyRatesInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="currencyRates.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${currencyRatesInstance?.name}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: currencyRatesInstance, field: 'rateToUSD', 'error')} required">
	<label for="rateToUSD">
		<g:message code="currencyRates.rateToUSD.label" default="Rate To USD" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rateToUSD" value="${fieldValue(bean: currencyRatesInstance, field: 'rateToUSD')}" required="" class="form-control" />

</div>

