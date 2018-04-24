<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/19/2018
  Time: 3:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh_item"/>
    <title></title>
</head>

<body>

<!-- Page Content -->
<div class="container">

    <!-- Portfolio Item Heading -->

    <!-- Portfolio Item Row -->
    <div class="row">

        <div class="col-md-3">

        </div>

        <div class="col-md-7">
            <h1 class="my-4">My Account
            %{--<small>The item sub name or category</small>--}%
            </h1>

            <g:render template="acccount_detail"/>

            <br/>
            <br/>
            <hr/>
            <a href="${createLink(controller: 'subcribtion', action: 'index')}" class="btn btn-info">Upgrade account</a>
        </div>



    </div>

    <div style="margin-bottom: 50px">

    </div>


</div>

</body>
</html>