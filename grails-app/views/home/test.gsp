<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 3/16/2018
  Time: 10:25 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>
</head>

<body>
<nav class="navbar navbar-expand-lg  fixed-top navbar-light" style="background-color: #ffffff;">
    <div class="container-fluid" style="padding-right: 0px">

        <a class="navbar-brand" href="${createLink(controller: 'home', action: 'index')}"><img
                src="${resource(dir: 'images/logo', file: 'logo_small.jpg')}" style="height: 60px; width:60px"/></a>


        <table style="width: 95%">
            <tbody>
            <tr>
                <td style="width: 60%"><div class="input-group">
                    <input id="search_text" type="text" placeholder="Search..." value="${params.key}" class="form-control"
                           aria-label="Text input with segmented dropdown button">

                    <div class="input-group-append">
                        <button type="button" class="btn btn-outline-secondary" onclick="search()"><i class="fa fa-search"></i></button>
                    </div>

                    <div class="dropdown" style="margin-left: 5px">
                        <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>

                        <div class="input-group">
                            <div class="dropdown-menu">
                                <label class="dropdown-item">Search by category</label>

                                <div class="dropdown-divider" style="border-color:red;"></div>
                                <g:each in="${categories}">
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'home', action: 'index', params: [cat: it.name])}">${it.name}</a>
                                </g:each>
                                <a class="dropdown-item"
                                   href="${createLink(controller: 'home', action: 'index')}">All category</a>
                            </div>
                        </div>
                    </div>


                </div></td>
                <td style="width: 40%">
                    <div class="col-md-2">
                        <a href="#">Login</a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <g:render template="/layouts/category"></g:render>
                </td>
                <sec:ifLoggedIn>
                    <td rowspan="2">
                        <div style="margin-left:  10px;">

                            <g:set var="profilePicture_"
                                   value="${com.picsell.data.ImageFile.findByTableNameAndTableId(profileUser?.class?.simpleName, profileUser?.id)}"></g:set>
                            <g:if test="${profilePicture_}">
                                <img class="profile-pic"
                                     src="${createLink(controller: 'image', action: 'download', id: profilePicture_?.id)}"
                                     alt="" style="height: 60px; width: 60px">
                            </g:if>
                            <g:else>
                                <img src="${resource(dir: 'images', file: 'avatar-default.jpg')}"
                                     style="height: 60px; width: 60px"/>
                            </g:else>

                        </div>
                    </td>
                    <td rowspan="2">
                        <div style="margin-left: 5px; margin-left: 2px;">

                            <div class="btn-group">
                                <button class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                        style="background-color: white">
                                    <img style="height: 30px"
                                         src="${resource(dir: 'images', file: 'icon_menu_dots.png')}">
                                </button>

                                <div class="dropdown-menu dropdown-menu-right" style="right:0; left:auto;">
                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <g:if test="${profileUser}">
                                        <a class="dropdown-item"
                                           href="${createLink(controller: 'profileUser', action: 'profile', id: profileUser?.id)}">Account Detail</a>

                                    </g:if>
                                    <g:else>
                                        <a class="dropdown-item"
                                           href="${createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id])}">Account Detail</a>

                                    </g:else>

                                    <g:each in="${userRoles}" var="userRole">
                                        <g:if test="${userRole?.role?.authority.equals("ROLE_CONTRIBUTOR")}">
                                            <div class="dropdown-divider" style="border-color:red;"></div>
                                            <a class="dropdown-item"
                                               href="${createLink(controller: 'userItem', action: 'index')}">
                                                My Items</a>
                                        </g:if>
                                        <g:if test="${userRole?.role?.authority.equals("ROLE_ADMIN")}">
                                            <div class="dropdown-divider" style="border-color:red;"></div>
                                            <a class="dropdown-item"
                                               href="${createLink(controller: 'userItem', action: 'contributorItems')}">
                                                Contributor Items</a>
                                        </g:if>
                                    </g:each>
                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'home', action: 'helpCenter')}">Help Center</a>

                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'Tos', action: 'index')}">Term & Condition</a>

                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'home', action: 'setting')}">Setting</a>

                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'logout', action: 'index')}">Logout</a>
                                </div>
                            </div>
                        </div>

                    </td>
                </sec:ifLoggedIn>

            </tr>
            <tr>
                <td></td>
                <td style="border-top: 1px solid lightslategray">
                    <div style="float:right;">
                        <a href="${createLink(controller: 'home', action: 'index')}">Show Top Search</a> |
                        <a href="${createLink(controller: 'home', action: 'packages')}">Package & Pricing</a> |
                        <a href="${createLink(controller: 'home', action: 'hotItems')}">Hot Item</a>
                    </div>

                </td>
                <td></td>
                <td></td>
            </tr>
            </tbody>
        </table>

    </div>
</nav>


<!-- Page Content -->
<div class="container">

    <!-- Page Heading -->
    <h1 class="my-4">${params.cat}
        <small>Secondary Text</small>
    </h1>

    <div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top"  src="https://www.pets4homes.co.uk/images/articles/771/large/cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project One</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="https://www.pets4homes.co.uk/images/articles/4039/large/the-10-longest-lived-cat-breeds-58f9e54fa0aa0.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Two</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="https://www.pets4homes.co.uk/images/breeds/41/large/b00ec15d7e8513d5c9bdd8a81934792b.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Three</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Four</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Five</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Six</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

    <!-- Pagination -->
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>
    </ul>

</div>
<!-- /.container -->

</body>
</html>