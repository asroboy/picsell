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
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
    <g:set var="userAccounts" value="${com.picsell.data.UserAccount.findAllByUser(userObject)}"/>
    <g:set var="tos" value="${com.picsell.config.TermOfService.findAll()}"/>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Term of Service</div>
        </div>

    </div>

    <div class="row">
        <div style=" margin-bottom: 30px; margin-top: 20px">
            <div class="col-lg-12">
                ${tos.size() > 0 ? raw(tos.get(0).tos) : ''}
            </div>

        </div>

    </div>
</div>

</body>

</html>