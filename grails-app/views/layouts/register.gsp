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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'ico_picsell.ico')}" />
    <title>Picsell - Sign up</title>

    <!-- Bootstrap Core CSS -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/bootstrap/css/bootstrap.min.css')}" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.css')}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${resource(dir: 'sbadmin', file: '/dist/css/sb-admin-2.css')}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css')}" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js')}"></script>
    <script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'picsell_custom.css')}"
          rel="stylesheet">
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
<g:render template="/layouts/navigation_s"/>
<g:layoutBody/>
%{--<div class="container">--}%
    %{--<div class="row">--}%
        %{--<div class="col-md-4 col-md-offset-4">--}%
            %{--<div class="login-panel panel panel-default">--}%
                %{--<div class="panel-heading" style="text-align: center">--}%
                    %{--<h3 class="panel-title"><a href="${createLink(controller: 'home', action: 'index')}">Picsell</a></h3>--}%
                %{--</div>--}%
                %{--<div class="panel-body">--}%
                   %{----}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%

<!-- jQuery -->
<script src="${resource(dir: 'sbadmin', file: '/vendor/jquery/jquery.min.js')}" ></script>

<!-- Bootstrap Core JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/vendor/bootstrap/js/bootstrap.min.js')}" ></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.js')}" ></script>

<!-- Custom Theme JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/dist/js/sb-admin-2.js')}" ></script>

</body>

</html>
