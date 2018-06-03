<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 3/16/2018
  Time: 10:25 AM
--%>

<%@ page import="com.picsell.security.Role; com.picsell.security.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="theme_portfolio_gh"/>
	<title></title>

	<g:if env="development"><link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css"></g:if>
	<g:set var="userObject"
		   value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
	<g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
	<g:set var="userAccounts" value="${com.picsell.data.UserAccount.findAllByUser(userObject)}"/>

</head>

<body>

<!-- Page Content -->
<div style="padding-left: 20px; padding-right: 20px; margin-top: 30px;">
	<!-- Page Heading -->
	<div>
		<h1 class="my-2">
			${params.cat}
		</h1>

		<div style="margin-bottom: 20px">
			<h4><small><i>${com.picsell.data.Category.findByName(params.cat)?.description}</i></small></h4>
		</div>
	</div>

	<div class="row" style=" margin-bottom: 20px">
		<g:if env="development">
			<g:renderException exception="${exception}" />
		</g:if>
		<g:else>
			<ul class="errors">
				<li>An error has occurred</li>
			</ul>
		</g:else>
	</div>

</div>

</body>

</html>
