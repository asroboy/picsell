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

    <title>Examl - Login</title>

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

    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Please Sign In</h3>
                </div>
                <div class="panel-body">
                    <g:layoutBody/>
                </div>
            </div>
        </div>
    </div>
</div>

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
