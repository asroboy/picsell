<%@ page import="com.picsell.security.User" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

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
    <script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js')}"></script>
    <g:set var="categories" value="${com.picsell.data.Category.list()}"/>
    <g:set var="mediaTypes" value="${com.picsell.data.MediaType.list()}"/>
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
    <g:set var="profileUser" value="${com.picsell.data.ProfileUser.findByUser(userObject)}"/>


    <link href="${resource(dir: 'css', file: 'picsell_custom.css')}"
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

    * {
        box-sizing: border-box;
    }

    .image_container {
        position: relative;
    }

    .overlay {
        position: absolute;
        bottom: 0;
        background: rgb(0, 0, 0);
        background: rgba(0, 0, 0, 0.5); /* Black see-through */
        color: #f1f1f1;
        width: 100%;
        transition: .5s ease;
        opacity: 0;
        color: white;
        font-size: 20px;
        padding: 15px;
        text-align: center;
    }

    .image_container:hover .overlay {
        opacity: 1;
    }
    </style>

    <g:layoutHead/>
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

</body>

</html>
