<%@ page import="com.picsell.data.UserPuchaseItem" %>



<div class="form-group fieldcontain ${hasErrors(bean: userPuchaseItemInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="userPuchaseItem.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.picsell.security.User.list()}" optionKey="id" required="" value="${userPuchaseItemInstance?.user?.id}" class="many-to-one form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: userPuchaseItemInstance, field: 'imageFile', 'error')} required">
	<label for="imageFile">
		<g:message code="userPuchaseItem.imageFile.label" default="Image File" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="imageFile" name="imageFile.id" from="${com.picsell.data.ImageFile.list()}" optionKey="id" required="" value="${userPuchaseItemInstance?.imageFile?.id}" class="many-to-one form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: userPuchaseItemInstance, field: 'purchaseDate', 'error')} ">
	<label for="purchaseDate">
		<g:message code="userPuchaseItem.purchaseDate.label" default="Purchase Date" />
		
	</label>
	<g:datePicker name="purchaseDate" precision="day"  value="${userPuchaseItemInstance?.purchaseDate}" default="none" noSelection="['': '']"  />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: userPuchaseItemInstance, field: 'paymentMethod', 'error')} required">
	<label for="paymentMethod">
		<g:message code="userPuchaseItem.paymentMethod.label" default="Payment Method" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paymentMethod" name="paymentMethod.id" from="${com.picsell.data.PaymentMethod.list()}" optionKey="id" required="" value="${userPuchaseItemInstance?.paymentMethod?.id}" class="many-to-one form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: userPuchaseItemInstance, field: 'purchasePrice', 'error')} required">
	<label for="purchasePrice">
		<g:message code="userPuchaseItem.purchasePrice.label" default="Purchase Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="purchasePrice" type="number" value="${userPuchaseItemInstance.purchasePrice}" required="" class="form-control" />

</div>

