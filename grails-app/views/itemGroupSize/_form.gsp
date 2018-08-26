<%@ page import="com.picsell.data.ItemGroupSize" %>



<div class="form-group fieldcontain ${hasErrors(bean: itemGroupSizeInstance, field: 'groupLabel', 'error')} ">
	<label for="groupLabel">
		<g:message code="itemGroupSize.groupLabel.label" default="Group Label" />
		
	</label>
	<g:select name="groupLabel" from="${itemGroupSizeInstance.constraints.groupLabel.inList}" value="${itemGroupSizeInstance?.groupLabel}" valueMessagePrefix="itemGroupSize.groupLabel" noSelection="['': '']" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemGroupSizeInstance, field: 'maxSize', 'error')} required">
	<label for="maxSize">
		<g:message code="itemGroupSize.maxSize.label" default="Max Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxSize" type="number" value="${itemGroupSizeInstance.maxSize}" required="" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemGroupSizeInstance, field: 'minSize', 'error')} required">
	<label for="minSize">
		<g:message code="itemGroupSize.minSize.label" default="Min Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minSize" type="number" value="${itemGroupSizeInstance.minSize}" required="" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemGroupSizeInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="itemGroupSize.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${itemGroupSizeInstance.price}" required="" class="form-control" />

</div>

