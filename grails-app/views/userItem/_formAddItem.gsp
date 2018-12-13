%{--<%@ page import="com.picsell.data.Item" %>--}%



<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="item.name.label" default="Name"/>

    </label>
    <g:textField name="name" value="${itemInstance?.name}" class="form-control" required=""/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="item.description.label" default="Description"/>

    </label>
    <g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${itemInstance?.description}"
                class="form-control"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'userOwner', 'error')} required"
     style="display: none">
    <label for="userOwner">
        <g:message code="item.userOwner.label" default="User Owner"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="userOwner.id" value="${sec.loggedInUserInfo(field: 'id')}" class="form-control"/>
    %{--<g:select id="userOwner" name="userOwner.id" from="${com.picsell.security.User.list()}" optionKey="id" required="" value="${itemInstance?.userOwner?.id}" class="many-to-one form-control"/>--}%

</div>



%{--<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'price', 'error')} required">--}%
%{--<label for="price">--}%
%{--<g:message code="item.tag.label" default="Tags"/>--}%
%{--</label>--}%
%{--<g:textField name="tags" value="" class="form-control"/>--}%

%{--</div>--}%

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'mediaType', 'error')} ">
    <label for="category">
        <g:message code="item.mediaType.label" default="Media Type"/>

    </label>
    <g:select name="mediaType" from="${com.picsell.data.MediaType.list()}" optionKey="id" optionValue="name"
              value="${itemInstance?.mediaType?.id}" noSelection="['': '']"
              class="form-control" required=""/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'category', 'error')} ">
    <label for="category">
        <g:message code="item.category.label" default="Category"/>

    </label>
    <g:select name="category" from="${com.picsell.data.Category.list()}" optionKey="id" optionValue="name"
              value="${itemInstance?.category?.id}" noSelection="['': '']"
              class="form-control" required=""/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'category', 'error')} ">
    <label for="tags">
        <g:message code="item.tags.label" default="Tags - (Separate with comma, maximum allowed 7 tags)"/>
    </label>
    <g:textField name="tags" value="${fieldValue(bean: itemInstance, field: 'tags')}" class="form-control"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: itemInstance, field: 'price', 'error')} required" style="display: none;">
    <label for="price">
        <g:message code="item.price.label" default="Price"/>
        <span class="required-indicator">*</span>
    </label>
    <table width="100%">
        <tr>
            <td style="width: 15%"><g:select  name="currency" from="${itemInstance.constraints.currency.inList}"
                          value="${itemInstance?.currency}"
                          valueMessagePrefix="item.currency" noSelection="['': '']" class="form-control"/></td>
            <td style="width: 85%"><g:textField  name="price" value="${fieldValue(bean: itemInstance, field: 'price')}" required=""
                             class="form-control"/></td>

        </tr>


    </table>

</div>


