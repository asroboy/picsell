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
    <link href="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/css/bootstrap.css')}"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'portfolio-gh-pages', file: 'css/3-col-portfolio.css')}" rel="stylesheet">

    <g:set var="categories" value="${com.picsell.data.Category.list()}"/>
    <g:set var="userObject" value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field:'username'))}"/>


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
<script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js')}"></script>
<script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js')}"></script>
<script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.js')}"></script>

</body>

</html>
