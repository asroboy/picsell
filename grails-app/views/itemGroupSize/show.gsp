
<%@ page import="com.picsell.data.ItemGroupSize" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="theme_sbadmin_gh">
		<g:set var="entityName" value="${message(code: 'itemGroupSize.label', default: 'ItemGroupSize')}" />
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
			%{--<ol class="property-list itemGroupSize">--}%
				<table class="table">
				
				<g:if test="${itemGroupSizeInstance?.groupLabel}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="groupLabel-label" class="property-label"><g:message code="itemGroupSize.groupLabel.label" default="Group Label" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="groupLabel-label"><g:fieldValue bean="${itemGroupSizeInstance}" field="groupLabel"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${itemGroupSizeInstance?.maxSize}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="maxSize-label" class="property-label"><g:message code="itemGroupSize.maxSize.label" default="Max Size" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="maxSize-label"><g:fieldValue bean="${itemGroupSizeInstance}" field="maxSize"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${itemGroupSizeInstance?.minSize}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="minSize-label" class="property-label"><g:message code="itemGroupSize.minSize.label" default="Min Size" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="minSize-label"><g:fieldValue bean="${itemGroupSizeInstance}" field="minSize"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
				<g:if test="${itemGroupSizeInstance?.price}">
					%{--<li class="fieldcontain">--}%
						<tr>
                            <td>
						<span id="price-label" class="property-label"><g:message code="itemGroupSize.price.label" default="Price" /></span>
                            </td>
                            <td>
                        
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${itemGroupSizeInstance}" field="price"/></span>
						
                            </td>
						</tr>
					%{--</li>--}%

				</g:if>
				
                </table>
			%{--</ol>--}%

            <br/>
            <br/>
            <br/>
			<g:form url="[resource:itemGroupSizeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-info" action="edit" resource="${itemGroupSizeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	</body>
</html>
