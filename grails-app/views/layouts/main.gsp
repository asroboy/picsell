<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 1/18/2018
  Time: 12:12 PM
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

    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'ico_picsell.ico')}"/>
    <title>${title ?: 'picsell'}</title>


    <!-- Bootstrap Core CSS -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/bootstrap/css/bootstrap.min.css')}" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.css')}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${resource(dir: 'sbadmin', file: '/dist/css/sb-admin-2.css')}" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/morrisjs/morris.css')}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css')}" rel="stylesheet"
          type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>

    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<div id="wrapper">
    <!-- Navigation -->
    <g:render template="/layouts/menu"/>
    %{--<g:include view="layouts/_menu.gsp"></g:include>--}%
    <div id="page-wrapper">
        <!-- /.row -->
        %{--<div class="row">--}%
        %{--<div class="col-lg-8">--}%
        <g:layoutBody/>
        %{--</div>--}%
        %{--</div>--}%
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="${resource(dir: 'sbadmin', file: '/vendor/jquery/jquery.min.js')}"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/vendor/bootstrap/js/bootstrap.min.js')}"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/vendor/metisMenu/metisMenu.min.js')}"></script>

<!-- Morris Charts JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/vendor/raphael/raphael.min.js')}"></script>
<script src="${resource(dir: 'sbadmin', file: '/vendor/morrisjs/morris.min.js')}"></script>
<script src="${resource(dir: 'sbadmin', file: '/data/morris-data.js')}"></script>

<!-- Custom Theme JavaScript -->
<script src="${resource(dir: 'sbadmin', file: '/dist/js/sb-admin-2.js')}"></script>

</body>

</html>
