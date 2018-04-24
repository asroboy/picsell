%{--<%@ page import="com.picsell.data.Item" %>--}%



<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="item.name.label" default="Name" />

    </label>
    <g:textField name="name" value="${itemInstance?.name}" class="form-control" />

</div>


<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'currency', 'error')} ">
    <label for="currency">
        <g:message code="item.currency.label" default="Currency" />

    </label>
    <g:select name="currency" from="${itemInstance.constraints.currency.inList}" value="${itemInstance?.currency}" valueMessagePrefix="item.currency" noSelection="['': '']" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="item.description.label" default="Description" />

    </label>
    <g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${itemInstance?.description}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'userOwner', 'error')} required" style="display: none">
    <label for="userOwner">
        <g:message code="item.userOwner.label" default="User Owner" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="userOwner.id" value="${sec.loggedInUserInfo(field: 'id')}" class="form-control"/>
    %{--<g:select id="userOwner" name="userOwner.id" from="${com.picsell.security.User.list()}" optionKey="id" required="" value="${itemInstance?.userOwner?.id}" class="many-to-one form-control"/>--}%

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'price', 'error')} required">
    <label for="price">
        <g:message code="item.price.label" default="Price" />
        <span class="required-indicator">*</span>
    </label>
    <g:field name="price" value="${fieldValue(bean: itemInstance, field: 'price')}" required="" class="form-control" />

</div>

