<%@ page import="com.picsell.support.CustomerMessage" %>



<div class="form-group fieldcontain ${hasErrors(bean: customerMessageInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="customerMessage.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${customerMessageInstance?.fullName}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: customerMessageInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="customerMessage.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${customerMessageInstance?.email}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: customerMessageInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="customerMessage.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="message" cols="40" rows="5" maxlength="1000" required="" value="${customerMessageInstance?.message}" class="form-control" />

</div>

