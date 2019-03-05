<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'currencyRates.label', default: 'CurrencyRates')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="row">
		<div class="col-lg-12">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<div class="row">
		<div class="col-lg-12">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${currencyRatesInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${currencyRatesInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			<g:form url="[resource:currencyRatesInstance, action:'save']" >
			<fieldset class="form">
				<g:render template="form"/>
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save btn btn-info" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>

</html>