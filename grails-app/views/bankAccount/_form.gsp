<%@ page import="com.picsell.data.BankAccount" %>



<div class="form-group fieldcontain ${hasErrors(bean: bankAccountInstance, field: 'accountNo', 'error')} ">
    <label for="accountNo">
        <g:message code="bankAccount.accountNo.label" default="Account No"/>

    </label>
    <g:textField name="accountNo" value="${bankAccountInstance?.accountNo}" class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: bankAccountInstance, field: 'accountName', 'error')} ">
    <label for="accountName">
        <g:message code="bankAccount.accountName.label" default="Account Name"/>

    </label>
    <g:textField name="accountName" value="${bankAccountInstance?.accountName}" class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: bankAccountInstance, field: 'bankName', 'error')} ">
    <label for="bankName">
        <g:message code="bankAccount.bankName.label" default="Bank Name"/>

    </label>
    <g:textField name="bankName" value="${bankAccountInstance?.bankName}" class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: bankAccountInstance, field: 'branchCode', 'error')} ">
    <label for="branchCode">
        <g:message code="bankAccount.branchCode.label" default="Branch Code"/>

    </label>
    <g:textField name="branchCode" value="${bankAccountInstance?.branchCode}" class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: bankAccountInstance, field: 'bankCode', 'error')} ">
    <label for="bankCode">
        <g:message code="bankAccount.bankCode.label" default="Bank Code"/>

    </label>
    <g:textField name="bankCode" value="${bankAccountInstance?.bankCode}" class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: bankAccountInstance, field: 'user', 'error')} required"
     style="display: none">
    <label for="user">
        <g:message code="bankAccount.user.label" default="User"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField id="user" name="user.id" value="${userObject?.id}" class="form-control"/>

    %{--<g:select id="user" name="user.id" from="${com.picsell.security.User.list()}" optionKey="id" required="" value="${bankAccountInstance?.user?.id}" class="many-to-one form-control"/>--}%

</div>

