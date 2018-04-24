
<%@ page import="com.picsell.data.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>


	<div class="row">
		<div class="col-lg-12">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<div class="row">
		<div class="col-lg-12">
			<p>
				<g:link class="create btn btn-info" action="create"><i class="fa fa-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
			</p>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			%{--<ol class="property-list item">--}%
				<table class="table">
				
				<g:if test="${itemInstance?.name}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="name-label" class="property-label"><g:message code="item.name.label" default="Name" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${itemInstance}" field="name"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${itemInstance?.description}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="description-label" class="property-label"><g:message code="item.description.label" default="Description" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${itemInstance}" field="description"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${itemInstance?.userOwner}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="userOwner-label" class="property-label"><g:message code="item.userOwner.label" default="User Owner" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="userOwner-label"><g:link controller="user" action="show" id="${itemInstance?.userOwner?.id}">${itemInstance?.userOwner?.encodeAsHTML()}</g:link></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${itemInstance?.currency}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="currency-label" class="property-label"><g:message code="item.currency.label" default="Currency" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="currency-label"><g:fieldValue bean="${itemInstance}" field="currency"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${itemInstance?.price}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="price-label" class="property-label"><g:message code="item.price.label" default="Price" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${itemInstance}" field="price"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
                </table>
			%{--</ol>--}%

            <br/>
            <br/>
            <br/>
			<g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-info" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	</body>
</html>
