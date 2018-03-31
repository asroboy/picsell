<%@ page import="com.picsell.data.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} form-group">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${categoryInstance?.name}"  class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'description', 'error')} form-group">
	<label for="description">
		<g:message code="category.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${categoryInstance?.description}"  class="form-control"/>

</div>

