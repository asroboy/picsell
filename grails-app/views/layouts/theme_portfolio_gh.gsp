<%@ page import="com.picsell.security.User" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'ico_picsell.ico')}"/>
    <title>Picsell.ID</title>



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
    %{--<link href="${resource(dir: 'portfolio-gh-pages', file: 'css/3-col-portfolio.css')}" rel="stylesheet">--}%
    <script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'exif.js')}"></script>
    <script src="${resource(dir: 'js', file: 'money.min.js')}"></script>
    <script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js')}"></script>

    <!-- Libraries CSS Files -->
    <link href="${resource(dir: 'ebusiness_theme', file: 'lib/nivo-slider/css/nivo-slider.css')}" rel="stylesheet">
    <link href="${resource(dir: 'ebusiness_theme', file: 'lib/owlcarousel/owl.carousel.css')}" rel="stylesheet">
    <link href="${resource(dir: 'ebusiness_theme', file: 'lib/owlcarousel/owl.transitions.css')}" rel="stylesheet">
    %{--<link href="${resource(dir: 'ebusiness_theme', file: 'lib/font-awesome/css/font-awesome.min.css')}"--}%
    %{--rel="stylesheet">--}%
    <link href="${resource(dir: 'ebusiness_theme', file: 'lib/animate/animate.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'ebusiness_theme', file: 'lib/venobox/venobox.css')}" rel="stylesheet">

    %{--<!-- Nivo Slider Theme -->--}%
    <link href="${resource(dir: 'ebusiness_theme', file: 'css/nivo-slider-theme.css')}" rel="stylesheet">

    %{--<!-- Main Stylesheet File -->--}%
    %{--<link href="${resource(dir: 'ebusiness_theme', file: 'css/style.css')}" rel="stylesheet">--}%

    %{--<!-- Responsive Stylesheet File -->--}%
    <link href="${resource(dir: 'ebusiness_theme', file: 'css/responsive.css')}" rel="stylesheet">

    <link href="${resource(dir: 'css', file: 'picsell_custom.css')}"
          rel="stylesheet">

    <link href="${resource(dir: 'css', file: 'button_red.css')}"
          rel="stylesheet">

    <g:set var="categories" value="${com.picsell.data.Category.list()}"/>
    <g:set var="mediaTypes" value="${com.picsell.data.MediaType.list(order: 'id')}"/>
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
    <g:set var="profileUser" value="${com.picsell.data.ProfileUser.findByUser(userObject)}"/>
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
<g:render template="/layouts/navigation"/>

<g:layoutBody/>


<g:render template="/layouts/footer"/>
<!-- Bootstrap core JavaScript -->


%{--<script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.js')}"></script>--}%
<script>
    function search() {
        var search_text = document.getElementById('search_text');
        var key = search_text.value;
        window.location = '${createLink(controller: 'home', action: 'index')}' + '?key=' + key;
    }

    function like(item_id) {
        var URL = "${createLink(controller: 'api', action: 'like', params: [user_id: userObject?.id])}" + "&item_id=" + item_id;
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                user_id: '${userObject?.id}'
            },
            success: function (resp) {
//                console.log(resp)
                if (resp.data == "like") {
                    var id = "like_" + item_id;
                    document.getElementById(id).innerHTML =
                            "<i class=\"fa fa-heart\"></i>";
                }
                if (resp.data == "dislike") {
                    var id = "like_" + item_id;
                    document.getElementById(id).innerHTML =
                            "<i class=\"fa fa-heart-o\"></i>";
                }
            }
        });
    }

    function add_to_chart(item_id) {
        var URL = "${createLink(controller: 'api', action: 'add_to_chart')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                user_id: '${userObject?.id}',
                item_id: item_id
            },
            success: function (resp) {
                if (resp.code == 1) {
                    window.location =
                            "${createLink(controller: 'home', action: 'mychart')}";
                }
            }
        });
    }

    function delete_from_chart(item_id) {
        var URL = "${createLink(controller: 'api', action: 'delete_from_chart')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                id: item_id
            },
            success: function (resp) {
                if (resp.code == 1) {
                    window.location =
                            "${createLink(controller: 'home', action: 'mychart')}";
                }
            }
        });
    }


</script>


<script src="${resource(dir: 'ebusiness_theme', file: 'lib/owlcarousel/owl.carousel.min.js')}"></script>
<script src="${resource(dir: 'ebusiness_theme', file: 'lib/venobox/venobox.min.js')}"></script>
<script src="${resource(dir: 'ebusiness_theme', file: 'lib/knob/jquery.knob.js')}"></script>
<script src="${resource(dir: 'ebusiness_theme', file: 'lib/wow/wow.min.js')}"></script>
<script src="${resource(dir: 'ebusiness_theme', file: 'lib/parallax/parallax.js')}"></script>
<script src="${resource(dir: 'ebusiness_theme', file: 'lib/easing/easing.min.js')}"></script>
<script src="${resource(dir: 'ebusiness_theme', file: 'lib/nivo-slider/js/jquery.nivo.slider.js')}"
        type="text/javascript"></script>
<script src="${resource(dir: 'ebusiness_theme', file: 'lib/appear/jquery.appear.js')}"></script>
<script src="${resource(dir: 'ebusiness_theme', file: 'lib/isotope/isotope.pkgd.min.js')}"></script>
%{--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>--}%
<script src="${resource(dir: 'ebusiness_theme', file: 'js/main.js')}"></script>

</body>

</html>
