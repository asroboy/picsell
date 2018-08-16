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

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Setting</div>
        </div>

    </div>


    <div class="row">
        <div class="col-md-12">
            <div style="text-align: justify; margin-bottom: 50px;">
                <div class="sub-part1">
                    Media Type Setting
                </div>

                <div style="margin-bottom: 20px">
                    <p>To add or remove available media type</p>

                    <a class="btn btn-danger"
                       href="${createLink(controller: 'mediaType', action: 'index')}">Media Type</a>

                </div>

                <div class="sub-part1">
                    Category Setting
                </div>

                <div style="margin-bottom: 20px">

                    <p>To manage categories of items</p>
                    <a class="btn btn-danger"
                       href="${createLink(controller: 'category', action: 'index')}">Category</a>
                </div>

                <div class="sub-part1">
                    Term Of Service Content
                </div>

                <div style="margin-bottom: 20px">
                    <p>To manage Term Of Service content</p>
                    <a class="btn btn-danger"
                       href="${createLink(controller: 'termOfService', action: 'index')}">Term Of Service</a>
                </div>
                <div class="sub-part1">
                    Banner Configuration
                </div>

                <div style="margin-bottom: 20px">
                    <p>To manage banner shows at home page of picsell.id</p>
                    <a class="btn btn-danger"
                       href="${createLink(controller: 'banner', action: 'index')}">Banner Config.</a>
                </div>
                <div class="sub-part1">
                    Package Setting
                </div>
                <div style="margin-bottom: 20px">
                    <p>To manage available package for users</p>
                    <a class="btn btn-danger"
                       href="${createLink(controller: 'account', action: 'index')}">Package Setting</a>
                </div>
            </div>
        </div>

    </div>
</div>

</body>

</html>