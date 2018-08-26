
<%@ page import="com.picsell.data.UserPuchaseItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'userPuchaseItem.label', default: 'UserPuchaseItem')}" />
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
			%{--<ol class="property-list userPuchaseItem">--}%
				<table class="table">
				
				<g:if test="${userPuchaseItemInstance?.user}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="user-label" class="property-label"><g:message code="userPuchaseItem.user.label" default="User" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${userPuchaseItemInstance?.user?.id}">${userPuchaseItemInstance?.user?.encodeAsHTML()}</g:link></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${userPuchaseItemInstance?.imageFile}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="imageFile-label" class="property-label"><g:message code="userPuchaseItem.imageFile.label" default="Image File" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="imageFile-label"><g:link controller="imageFile" action="show" id="${userPuchaseItemInstance?.imageFile?.id}">${userPuchaseItemInstance?.imageFile?.encodeAsHTML()}</g:link></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${userPuchaseItemInstance?.purchaseDate}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="purchaseDate-label" class="property-label"><g:message code="userPuchaseItem.purchaseDate.label" default="Purchase Date" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="purchaseDate-label"><g:formatDate date="${userPuchaseItemInstance?.purchaseDate}" /></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${userPuchaseItemInstance?.paymentMethod}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="paymentMethod-label" class="property-label"><g:message code="userPuchaseItem.paymentMethod.label" default="Payment Method" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="paymentMethod-label"><g:link controller="paymentMethod" action="show" id="${userPuchaseItemInstance?.paymentMethod?.id}">${userPuchaseItemInstance?.paymentMethod?.encodeAsHTML()}</g:link></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${userPuchaseItemInstance?.purchasePrice}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="purchasePrice-label" class="property-label"><g:message code="userPuchaseItem.purchasePrice.label" default="Purchase Price" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="purchasePrice-label"><g:fieldValue bean="${userPuchaseItemInstance}" field="purchasePrice"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
                </table>
			%{--</ol>--}%

            <br/>
            <br/>
            <br/>
			<g:form url="[resource:userPuchaseItemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-info" action="edit" resource="${userPuchaseItemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	</body>
</html>
