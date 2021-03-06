<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 3/16/2018
  Time: 10:25 AM
--%>

<%@ page import="com.picsell.data.Category; com.picsell.security.Role; com.picsell.security.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>


    %{--<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>--}%
    <script type='text/javascript' src='${resource(dir: 'unitegallery', file: 'dist/js/unitegallery.min.js')}'></script>

    <link rel='stylesheet' href='${resource(dir: 'unitegallery', file: 'dist/css/unite-gallery.css')}' type='text/css'/>
    <script type='text/javascript'
            src='${resource(dir: 'unitegallery', file: 'dist/themes/tilesgrid/ug-theme-tilesgrid.js')}'></script>
%{--<link rel='stylesheet' href='${resource(dir: 'unitegallery', file: 'dist/themes/tilesgrid/ug-theme-tilesgrid.js')}' type='text/css' />--}%

    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>

    <sec:ifLoggedIn>
        <script>
            var URL = "${createLink(controller: 'api', action: 'check_contrib_has_subs_acc')}";
            $.ajax({
                type: "POST",
                url: URL,
                data: {
                    user_id: '${userObject?.id}'
                },
                success: function (resp) {
//                    console.log(resp)
                    if (resp.data.has_account === false) {
                        window.location = '${createLink(controller: 'home', action: 'packages')}';
                    } else {
                        checkUserItem();
                    }
                }
            });


            function checkUserItem() {
                var URL = "${createLink(controller: 'api', action: 'cheeck_user_items')}";
                $.ajax({
                    type: "GET",
                    url: URL,
                    data: {
                        user_id: '${userObject?.id}'
                    },
                    success: function (resp) {
//                        console.log(resp)
                        if (resp.data < 5 && resp.contributor == true) {
                            window.location = '${createLink(controller: 'userItem', action: 'addFirstItem')}';
                        }
                    }
                });
            }

            function islike(item_id) {
                var URL = "${createLink(controller: 'api', action: 'is_like', params: [user_id: userObject?.id])}" + "&item_id=" + item_id;
                $.ajax({
                    type: "GET",
                    url: URL,
                    data: {
                        user_id: '${userObject?.id}'
                    },
                    success: function (resp) {
//                        console.log(resp)
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
        </script>
    </sec:ifLoggedIn>
    <style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial;
        font-size: 17px;
    }

    .big_banner_container {
        width: 100%;
    }

    .big_banner_container video {
        width: 100%;
        position: inherit;
        left: 0;
        top: 0;
        min-width: 100%;
        min-height: 100%;
    }

    .big_banner_container .video-banner-content-container {
        bottom: 0;
        background: rgba(0, 0, 0, 0.2);
        color: #f1f1f1;
        width: 100%;
        height: 100%;
    }

    .video-banner-content {
        width: 100%;
        height: 100%;
        position: absolute;
        text-align: center;
        top: 50%;
        color: white;
    }

    .video-banner-content p {
        color: white;
    }

    #myBtn {
        width: 200px;
        font-size: 18px;
        padding: 10px;
        border: none;
        background: #000;
        color: #fff;
        cursor: pointer;
    }

    #myBtn:hover {
        background: #ddd;
        color: black;
    }

    .nivo-directionNav {
        display: none;
    }

    </style>
</head>

<body>

<g:if test="${params.cat}">
    <section id="photos" style="margin-top: 80px">
        <g:each in="${com.picsell.data.Item.findAllByStatusAndCategory("approved", com.picsell.data.Category.findByName(params.cat))}"
                var="item" status="i">

            <div class="image_container">
                <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                    <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                         alt="">
                </a>

                <div class="overlay">
                    <sec:ifLoggedIn>
                        <a id="like_${item?.id}" class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                           title="Like"
                           style="color: white" onclick="like(${item?.id})">
                            <script>
                                islike(${item?.id});
                            </script>
                        </a>
                        <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Add to chart"
                           style="color: white" onclick="add_to_chart(${item?.id})"><i
                                class="fa fa-shopping-basket"></i></a>
                    </sec:ifLoggedIn>
                    <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Download preview"
                       style="color: white"><i class="fa fa-download"></i></a>
                    <a href="${createLink(cotroller: 'home', action: 'index', params: [cat: item?.category?.name])}"
                       class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                       style="color: white"><i class="fa fa-th-large"></i></a>

                </div>
            </div>

        </g:each>
    </section>

    <!-- Page Content -->
    <div style="padding-left: 20px; padding-right: 20px; margin-top: 30px; margin-bottom: 30px;">

        <div class="row" style=" margin-bottom: 20px">

            %{--<g:each in="${com.picsell.data.Item.findAll()}" var="item" status="i">--}%
            %{--<div class="col-lg-3 col-sm-12 portfolio-item"--}%
            %{--style="padding-left: 3px; padding-right: 3px; margin-bottom: 5px">--}%
            %{--<div class="card h-100">--}%
            %{--<a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">--}%
            %{--<img class="card-img-top"--}%
            %{--src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"--}%
            %{--alt="">--}%
            %{--</a>--}%

            %{--<div class="card-body">--}%
            %{--<h4 class="card-title">--}%
            %{--<a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">${item?.name}</a>--}%
            %{--</h4>--}%

            %{--<p>Price : ${item?.price} ${item?.currency}</p>--}%

            %{--<p class="card-text">${item?.description}</p>--}%
            %{--</div>--}%
            %{--</div>--}%
            %{--</div>--}%
            %{--</g:each>--}%
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
</g:if>
<g:else>
    <g:if test="${params.key}">
        <section id="photos" style="margin-top: 80px">
            <g:each in="${items}" var="item"
                    status="i">

                <div class="image_container">
                    <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                        <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                             alt="">
                    </a>

                    <div class="overlay">
                        <sec:ifLoggedIn>
                            <a id="like_${item?.id}" class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                               title="Like"
                               style="color: white" onclick="like(${item?.id})">
                                <script>
                                    islike(${item?.id});
                                </script></a>
                            <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Add to chart"
                               style="color: white" onclick="add_to_chart(${item?.id})"><i
                                    class="fa fa-shopping-basket"></i></a>
                        </sec:ifLoggedIn>
                        <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Download preview"
                           style="color: white"><i class="fa fa-download"></i></a>
                        <a href="${createLink(cotroller: 'home', action: 'index', params: [cat: item?.category?.name])}"
                           class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                           style="color: white"><i class="fa fa-th-large"></i></a>

                    </div>
                </div>

            </g:each>
        </section>

        <!-- Page Content -->
        <div style="padding-left: 20px; padding-right: 20px; margin-top: 30px; margin-bottom: 30px;">

            <div class="row" style=" margin-bottom: 20px">

                %{--<g:each in="${com.picsell.data.Item.findAll()}" var="item" status="i">--}%
                %{--<div class="col-lg-3 col-sm-12 portfolio-item"--}%
                %{--style="padding-left: 3px; padding-right: 3px; margin-bottom: 5px">--}%
                %{--<div class="card h-100">--}%
                %{--<a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">--}%
                %{--<img class="card-img-top"--}%
                %{--src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"--}%
                %{--alt="">--}%
                %{--</a>--}%

                %{--<div class="card-body">--}%
                %{--<h4 class="card-title">--}%
                %{--<a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">${item?.name}</a>--}%
                %{--</h4>--}%

                %{--<p>Price : ${item?.price} ${item?.currency}</p>--}%

                %{--<p class="card-text">${item?.description}</p>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</g:each>--}%
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
    </g:if>
    <g:else>

        <g:render template="video_banner"/>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    %{--<div style="color: red; text-align: center; margin: 20px">--}%
                    %{--<h2>Popular Items</h2>--}%
                    %{--</div>--}%
                </div>
            </div>
        </div>

        <div class="gallery_container">
            <div id="gallery" style="margin-bottom: 5px; padding-left: 3px; padding-right: 3px">
                <g:each in="${com.picsell.data.Item.findAllByStatus("approved")}" var="item" status="i">
                    <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                        <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                             alt="">
                    </a>
                </g:each>
            </div>

            <button class="btn btn-default">< Halo</button>
            <button class="btn btn-default">Halo ></button>
        </div>


        <section id="photos">
            <g:each in="${com.picsell.data.Item.findAllByStatus("approved")}" var="item" status="i">
                <div class="image_container" style="padding: 5px">
                    <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                        <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                             alt="" style="border-radius: 20px;">
                    </a>

                    <div class="overlay">
                        <sec:ifLoggedIn>
                            <a id="like_${item?.id}" class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                               title="Like"
                               style="color: #000000" onclick="like(${item?.id})">
                                <script>
                                    islike(${item?.id});
                                </script></a>
                            <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Add to chart"
                               style="color: #000000"><i class="fa fa-shopping-basket"
                                                         onclick="add_to_chart(${item?.id})"></i></a>
                        </sec:ifLoggedIn>
                        <a href="${createLink(cotroller: 'home', action: 'download_page', params: [id: item?.id])}"
                           class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Download preview"
                           style="color: #000000"><i class="fa fa-download"></i></a>
                        <a href="${createLink(cotroller: 'home', action: 'index', params: [cat: item?.category?.name])}"
                           class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                           style="color: #000000"><i class="fa fa-th-large"></i></a>

                    </div>
                </div>
            </g:each>
        </section>
    </g:else>

</g:else>



<script type="text/javascript">
    var api;
    jQuery(document).ready(function () {
        api = jQuery("#gallery").unitegallery({
            grid_num_rows: 2,
            theme_navigation_type: "arrows",
            grid_space_between_cols: 10,
            grid_space_between_rows: 10,
            gallery_min_width: 200,
            tile_enable_border: false,
            tile_show_link_icon: true,
            tile_enable_action: false,			//enable tile action on click like lightbox
            tile_as_link: false,				//act the tile as link, no lightbox will appear
            tile_link_newpage: false,
            tile_border_width: 1,				//tile border width
            tile_border_color: "#F0F0F0",		//tile border color
            tile_border_radius: 1,
            tile_width: 200,						//tile width
            tile_height: 170//tile height
        });
        api.on("enter_fullscreen", function () {	//on enter fullscreen
            //do something
        });

        var nav_wrapper = document.getElementsByClassName("ug-tile-navigation-wrapper");
        console.log(nav_wrapper);
        var style = nav_wrapper[0].style;
        console.log(style);
        style.display = "none";

        var gellery = document.getElementById("gallery");
        gellery.style.height = "375px";
        console.log(gellery);
    });


//    jQuery(document).ready(function (){
//
//    });
</script>

</body>

</html>