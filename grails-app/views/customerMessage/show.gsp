
<%@ page import="com.picsell.support.CustomerMessage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'customerMessage.label', default: 'CustomerMessage')}" />
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
			%{--<ol class="property-list customerMessage">--}%
				<table class="table">
				
				<g:if test="${customerMessageInstance?.fullName}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="fullName-label" class="property-label"><g:message code="customerMessage.fullName.label" default="Full Name" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="fullName-label"><g:fieldValue bean="${customerMessageInstance}" field="fullName"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${customerMessageInstance?.email}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="email-label" class="property-label"><g:message code="customerMessage.email.label" default="Email" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${customerMessageInstance}" field="email"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${customerMessageInstance?.message}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="message-label" class="property-label"><g:message code="customerMessage.message.label" default="Message" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${customerMessageInstance}" field="message"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
                </table>
			%{--</ol>--}%

            <br/>
            <br/>
            <br/>
			<g:form url="[resource:customerMessageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-info" action="edit" resource="${customerMessageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	</body>
</html>
