<%@ page import="com.picsell.data.MediaType" %>



<div class="form-group fieldcontain ${hasErrors(bean: mediaTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="mediaType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${mediaTypeInstance?.name}" class="form-control" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: mediaTypeInstance, field: 'parent', 'error')} ">
	<label for="parent">
		<g:message code="mediaType.parent.label" default="Parent" />
		
	</label>
	<g:select id="parent" name="parent.id" from="${com.picsell.data.MediaType.list()}" optionValue="name" optionKey="id" value="${mediaTypeInstance?.parent?.id}" class="many-to-one form-control" noSelection="['null': '']"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: mediaTypeInstance, field: 'child', 'error')} ">
	<label for="child">
		<g:message code="mediaType.child.label" default="Child" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${mediaTypeInstance?.child?}" var="c">
    <li><g:link controller="mediaType" action="show" id="${c.id}">${c?.name}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mediaType" action="create" params="['mediaType.id': mediaTypeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mediaType.label', default: 'MediaType')])}</g:link>
</li>
</ul>


</div>

