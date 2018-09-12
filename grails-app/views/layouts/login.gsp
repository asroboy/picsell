<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 1/18/2018
  Time: 12:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'ico_picsell.ico')}" />
    <title>Picsell.ID</title>

    <!-- Bootstrap core CSS -->
    %{--${resource(dir: 'portfolio-gh-pages', file: '')}--}%
    %{--<link href="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/css/bootstrap.min.css')}"--}%
          %{--rel="stylesheet">--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <!-- Custom Fonts -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css')}" rel="stylesheet"
          type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <!-- jQuery -->
    %{--<script src="${resource(dir: 'sbadmin', file: '/vendor/jquery/jquery.min.js')}"></script>--}%

    <!-- Custom styles for this template -->
    %{--<link href="${resource(dir: 'portfolio-gh-pages', file: 'css/3-col-portfolio.css')}" rel="stylesheet">--}%
    %{--<script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js')}"></script>--}%
    <script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js')}"></script>
    <g:set var="categories" value="${com.picsell.data.Category.list()}"/>
    <g:set var="mediaTypes" value="${com.picsell.data.MediaType.list()}"/>
    %{--<g:set var="userObject"--}%
           %{--value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>--}%
    %{--<g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>--}%

    <link href="${resource(dir: 'css', file: 'picsell_custom.css')}"
          rel="stylesheet">


    <g:layoutHead/>

    %{----}%
    %{--<meta charset="utf-8">--}%
    %{--<meta http-equiv="X-UA-Compatible" content="IE=edge">--}%
    %{--<meta name="viewport" content="width=device-width, initial-scale=1">--}%
    %{--<meta name="description" content="">--}%
    %{--<meta name="author" content="">--}%

    %{--<title>Picsell - Login</title>--}%

    %{--<!-- Bootstrap Core CSS -->--}%
    %{--<link href="${resource(dir: 'sbadmin', file: '/vendor/bootstrap/css/bootstrap.min.css')}" rel="stylesheet">--}%

    %{--<!-- MetisMenu CSS -->--}%
    %{--<link href="${resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.css')}" rel="stylesheet">--}%

    %{--<!-- Custom CSS -->--}%
    %{--<link href="${resource(dir: 'sbadmin', file: '/dist/css/sb-admin-2.css')}" rel="stylesheet">--}%

    %{--<!-- Custom Fonts -->--}%
    %{--<link href="${resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css')}" rel="stylesheet">--}%

    %{--<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->--}%
    %{--<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->--}%
    %{--<!--[if lt IE 9]>--}%
    %{--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--}%
    %{--<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>--}%
    %{--<![endif]-->--}%

    %{--<g:layoutHead/>--}%
    <r:layoutResources/>
</head>

<body>
<g:render template="/layouts/navigation"/>

<g:layoutBody/>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- Bootstrap Core JavaScript -->
%{--<script src="${resource(dir: 'sbadmin', file: '/vendor/bootstrap/js/bootstrap.min.js')}"></script>--}%

<!-- Metis Menu Plugin JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.js')}"></script>

<!-- Custom Theme JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/dist/js/sb-admin-2.js')}"></script>

</body>

</html>
