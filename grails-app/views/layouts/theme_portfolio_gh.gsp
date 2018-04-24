<%@ page import="com.picsell.security.User" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>picsell.com</title>

    <!-- Bootstrap core CSS -->
    %{--${resource(dir: 'portfolio-gh-pages', file: '')}--}%
    <link href="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/css/bootstrap.min.css')}"
          rel="stylesheet">
    %{--<link href="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/css/bootstrap.css')}"--}%
          %{--rel="stylesheet">--}%

    <!-- Custom Fonts -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css')}" rel="stylesheet"
          type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'portfolio-gh-pages', file: 'css/3-col-portfolio.css')}" rel="stylesheet">

    <g:set var="categories" value="${com.picsell.data.Category.list()}"/>
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
</head>

<body>

<g:render template="/layouts/navigation"/>

<g:layoutBody/>


<g:render template="/layouts/footer"/>
<!-- Bootstrap core JavaScript -->
<script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js')}"></script>
<script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js')}"></script>
%{--<script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.js')}"></script>--}%

</body>

</html>
