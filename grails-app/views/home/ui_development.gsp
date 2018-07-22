<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 7/2/2018
  Time: 9:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Navbar Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <link href="${resource(dir: 'sbadmin', file: '/vendor/font-awesome/css/font-awesome.min.css')}" rel="stylesheet"
          type="text/css">

    <!-- Custom styles for this template -->
    <link href="navbar.css" rel="stylesheet">
    <style>
    .linkred {
        color: red;
        margin-left: 5px;
        margin-right: 5px;
    }

    .footer_black_link {
        color: black;
    }

    a.footer_black_link:hover {
        color: white;
    }

    a.white_link:hover {
        background-color: white;
    }

    .white_link {
        color: white;
    }

    .custom-navbar-nav {
        display: flex;
        /*flex-direction: column;*/
        padding-left: 0;
        margin-bottom: 0;
        list-style: none;

    }



    </style>
</head>

<body>

<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <img src="${resource(dir: 'images/logo', file: 'logo_no_text.png')}" width="40" height="40" alt="" style="margin: 0px">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <form class="form-inline my-0 my-lg-0" style="margin-right: 5px">
            <input class="form-control mr-sm-1" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-danger my-2 my-sm-0" type="submit"><i class="fa fa-search"></i> Search
            </button>
        </form>
        <ul class="navbar-nav mr-auto">
            <li class="dropdown" style="margin-right: 5px">
                <a class="nav-item dropdown-toggle btn btn-outline-danger my-2 my-sm-0 " href="#" id="navbarDropdown"
                   role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Category
                </a>

                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>

            <li class="dropdown">
                <a class="nav-item dropdown-toggle btn btn-outline-danger my-2 my-sm-0 " href="#" id="navbarDropdown2"
                   role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Sub Category
                </a>

                <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Login</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#">Sign up</a>
            </li>
        </ul>

    </div>
</nav>
<nav class="navbar navbar-sticky navbar-expand-sm navbar-light bg-light" style="border-top: 1px solid red;">
    <ul class="custom-navbar-nav ml-auto">
        <li class="nav-item">
            <a class="linkred" href="#">Show top search</a> |
        </li>
        <li class="nav-item">
            <a class="linkred" href="#">Package and pricing</a> |
        </li>
        <li class="nav-item">
            <a class="linkred" href="#">Hot item</a>
        </li>
    </ul>

</nav>
<section id="photos">
    Lorem Ipsum dolor sit amet
</section>

<footer class="py-5" style="background-color: #e20007">
    <div class="container">
        %{--<p class="m-0 text-center text-white">Copyright &copy; picsell.com 2018</p>--}%
        <div class="row">
            <div class="col-sm-2">
                <label class="white_link"><h7>Picsell.ID</h7></label><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'index')}">Home</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'aboutUs')}">About Us</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'index')}">Picsell Image</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'policy')}">Privacy Policy</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'index')}">Picsell Music</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'index')}">Picsell Footage</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'contributors')}">Contributors</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'index', params: [cat: 'hot_item'])}">Hot Items</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'index', params: [cat: 'careers'])}">Careers</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'index')}">Investor Relations</a><br/>
            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Help</h7></label><br/>
                <a class="footer_black_link" href="#">Support Center</a><br/>
                <a class="footer_black_link" href="#">Contact Us <br/>(+62)8567228886</a><br/>

            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Sales & Mareketing</h7></label><br/>
                <a class="footer_black_link" href="#">sales@picsell.id</a><br/>
                <a class="footer_black_link" href="#">(+62)8567228886</a><br/>

            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Legal</h7></label><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'tos')}">Web Term Of Use</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'agreement')}">License Agreement</a><br/>

            </div>

            <div class="col-sm-4">

                <div class="bottomright_social">
                    <a href="https://facebook.com"><img href="facebook.com"
                                                        src="${resource(dir: 'images/logo', file: 'facebook.png')}"
                                                        style="height: 50px; width: 50px; margin: 5px"></a>
                    <a href="https://twitter.com"><img href="twitter.com"
                                                       src="${resource(dir: 'images/logo', file: 'twitter.png')}"
                                                       style="height: 50px; width: 50px; margin: 5px"></a>
                    <a href="https://instagram.com"><img href="instagram.com"
                                                         src="${resource(dir: 'images/logo', file: 'instagram.png')}"
                                                         style="height: 50px; width: 50px; margin: 5px"></a>
                </div>

                <div class="bottomright">
                    <a href="https://picsell.id">
                        <img src="${resource(dir: 'images/logo', file: 'logo.jpg')}"
                             style="height: 100px; width: 100px"/>
                    </a>
                </div>

            </div>
        </div>

    </div>
    <!-- /.container -->
</footer>
<footer style="background-color: white">
    <div class="container">
        %{--<div class="row">--}%
        <p class="m-0 text-right"><label style="color: red;">Copyright &copy; 2018 Picsell.ID</label></p>
        %{--</div>--}%
    </div>
</footer>


<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>

</body>

</html>