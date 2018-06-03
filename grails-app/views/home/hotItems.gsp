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
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
    <g:set var="userAccounts" value="${com.picsell.data.UserAccount.findAllByUser(userObject)}"/>

    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">

    <style>
    #photos {
        /* Prevent vertical gaps */
        line-height: 0;

        -webkit-column-count: 3;
        -webkit-column-gap: 0px;
        -moz-column-count: 3;
        -moz-column-gap: 0px;
        column-count: 4;
        column-gap: 2px;
    }

    #photos img {
        /* Just in case there are inline attributes */
        width: 100% !important;
        margin: 2px;
        height: auto !important;
    }


    </style>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="label-red">
                <b>Hot Items & Special Promo</b>
            </div>
            <b>Get images you need with special prices for several periods from categories on below</b>

        </div>
    </div>
    <g:each in="${categories}" var="category">
        <div class="row">
            <div class="col-md-12">
                <div style="margin-bottom: 20px; margin-top: 20px">
                    <div class="sub-part1">
                        <b>${category?.name.toUpperCase()}</b>
                    </div>
                    <section id="photos">
                        <g:each in="${items}" var="item" status="i">
                            <g:if test="${item.category == category}">
                                <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                                    <img src="${createLink(controller: 'document', action: 'download', id: item?.id)}"
                                         alt="">
                                </a>
                            </g:if>
                        </g:each>
                    </section>
                </div>
            </div>
        </div>
    </g:each>
</div>

</body>

</html>