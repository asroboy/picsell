
<%@ page import="com.picsell.config.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
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
			%{--<ol class="property-list account">--}%
				<table class="table">
				
				<g:if test="${accountInstance?.name}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="name-label" class="property-label"><g:message code="account.name.label" default="Name" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${accountInstance}" field="name"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.type}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="type-label" class="property-label"><g:message code="account.type.label" default="Type" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${accountInstance}" field="type"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.lisence}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="lisence-label" class="property-label"><g:message code="account.lisence.label" default="Lisence" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="lisence-label"><g:fieldValue bean="${accountInstance}" field="lisence"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.inCurrency}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="inCurrency-label" class="property-label"><g:message code="account.inCurrency.label" default="In Currency" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="inCurrency-label"><g:fieldValue bean="${accountInstance}" field="inCurrency"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.info}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="info-label" class="property-label"><g:message code="account.info.label" default="Info" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="info-label"><g:fieldValue bean="${accountInstance}" field="info"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.allowMoreUser}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="allowMoreUser-label" class="property-label"><g:message code="account.allowMoreUser.label" default="Allow More User" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="allowMoreUser-label"><g:formatBoolean boolean="${accountInstance?.allowMoreUser}" /></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.maxImages}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="maxImages-label" class="property-label"><g:message code="account.maxImages.label" default="Max Images" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="maxImages-label"><g:fieldValue bean="${accountInstance}" field="maxImages"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.maxTeamUser}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="maxTeamUser-label" class="property-label"><g:message code="account.maxTeamUser.label" default="Max Team User" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="maxTeamUser-label"><g:fieldValue bean="${accountInstance}" field="maxTeamUser"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.price}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="price-label" class="property-label"><g:message code="account.price.label" default="Price" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${accountInstance}" field="price"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${accountInstance?.unlimitedImages}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="unlimitedImages-label" class="property-label"><g:message code="account.unlimitedImages.label" default="Unlimited Images" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="unlimitedImages-label"><g:formatBoolean boolean="${accountInstance?.unlimitedImages}" /></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
                </table>
			%{--</ol>--}%

            <br/>
            <br/>
            <br/>
			<g:form url="[resource:accountInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-info" action="edit" resource="${accountInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	</body>
</html>
