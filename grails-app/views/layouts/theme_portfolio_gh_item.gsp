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
    <link href="${resource(dir: 'portfolio-item-gh', file: 'vendor/bootstrap/css/bootstrap.min.css')}"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'portfolio-item-gh', file: 'css/portfolio-item.css')}" rel="stylesheet">


    <!-- Custom Fonts -->
    <link href="${resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css')}" rel="stylesheet"
          type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



    <g:set var="categories" value="${com.picsell.data.Category.list()}"/>
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
    <g:layoutHead/>
</head>

<body>


<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="${createLink(controller: 'home', action: 'index')}">Picsell</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <g:render template="/layouts/category"></g:render>


    </div>
</nav>


<g:layoutBody/>
<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; picsell.com 2018</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="${resource(dir: 'portfolio-item-gh', file: 'vendor/jquery/jquery.min.js')}"></script>
<script src="${resource(dir: 'portfolio-item-gh', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js')}"></script>

</body>

</html>
