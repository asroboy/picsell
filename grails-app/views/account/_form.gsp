<%@ page import="com.picsell.config.Account" %>



<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${accountInstance?.name}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="account.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${accountInstance.constraints.type.inList}" value="${accountInstance?.type}" valueMessagePrefix="account.type" noSelection="['': '']" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'lisence', 'error')} ">
	<label for="lisence">
		<g:message code="account.lisence.label" default="Lisence" />
		
	</label>
	<g:select name="lisence" from="${accountInstance.constraints.lisence.inList}" value="${accountInstance?.lisence}" valueMessagePrefix="account.lisence" noSelection="['': '']" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'inCurrency', 'error')} ">
	<label for="inCurrency">
		<g:message code="account.inCurrency.label" default="In Currency" />
		
	</label>
	<g:select name="inCurrency" from="${accountInstance.constraints.inCurrency.inList}" value="${accountInstance?.inCurrency}" valueMessagePrefix="account.inCurrency" noSelection="['': '']" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'info', 'error')} ">
	<label for="info">
		<g:message code="account.info.label" default="Info" />
		
	</label>
	<g:textField name="info" value="${accountInstance?.info}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'allowMoreUser', 'error')} ">
	<label for="allowMoreUser">
		<g:message code="account.allowMoreUser.label" default="Allow More User" />
		
	</label>
	<g:checkBox name="allowMoreUser" value="${accountInstance?.allowMoreUser}"  class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'maxImages', 'error')} required">
	<label for="maxImages">
		<g:message code="account.maxImages.label" default="Max Images" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxImages" type="number" value="${accountInstance.maxImages}" required="" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'maxTeamUser', 'error')} required">
	<label for="maxTeamUser">
		<g:message code="account.maxTeamUser.label" default="Max Team User" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxTeamUser" type="number" value="${accountInstance.maxTeamUser}" required="" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="account.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${accountInstance.price}" required="" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'unlimitedImages', 'error')} ">
	<label for="unlimitedImages">
		<g:message code="account.unlimitedImages.label" default="Unlimited Images" />
		
	</label>
	<g:checkBox name="unlimitedImages" value="${accountInstance?.unlimitedImages}"  class="form-control"/>

</div>

