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
    <title>Picsell.ID</title>


    %{--<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>--}%
    <script type='text/javascript' src='${resource(dir: 'unitegallery', file: 'dist/js/unitegallery.min.js')}'></script>

    <link rel='stylesheet' href='${resource(dir: 'unitegallery', file: 'dist/css/unite-gallery.css')}' type='text/css'/>
    <script type='text/javascript'
            src='${resource(dir: 'unitegallery', file: 'dist/themes/tilesgrid/ug-theme-tilesgrid.js')}'></script>
    %{--<link rel='stylesheet' href='${resource(dir: 'unitegallery', file: 'dist/themes/tilesgrid/ug-theme-tilesgrid.js')}' type='text/css' />--}%


    <link rel="stylesheet" href="${resource(dir: 'justified_gallery', file: 'dist/css/justifiedGallery.css')}"/>
    <script src="${resource(dir: 'justified_gallery', file: 'src/js/jquery.justifiedGallery.js')}"></script>

    <sec:ifLoggedIn>
        <g:set var="userObject"
               value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
        <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>

        <script>
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
</head>

<body>

<g:if test="${params.media}">
    <g:render template="photos"/>
</g:if>
<g:elseif test="${params.cat}">
    <g:render template="photos"/>
</g:elseif>
<g:elseif test="${params.key}">
    <g:render template="photos"/>
</g:elseif>
<g:elseif test="${params.top}">
    <g:render template="photos"/>
</g:elseif>
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
        <div id="gallery" style="margin-bottom: 5px; padding-left: 3px; padding-right: 3px ; border-radius: 10px;">
            <g:each in="${com.picsell.data.Item.findAllByStatus("approved")}" var="item" status="i">
                <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                    <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                         alt="">
                </a>
            </g:each>
        </div>
    </div>
%{--<button class="btn btn-default"> ></button>--}%
%{--</div>--}%


    <div id="simpletest" class="gallery_justify">
    %{--<div class="image_container" style="padding: 5px;">--}%
        <g:each in="${items}" var="item" status="i">
            <div class="image_container">
                <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                    <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                         style="border-radius: 10px;"/>
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
                    <a href="${createLink(controller:'document', action:'photoWithWatermaark', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}" class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Download preview"
                       style="color: white"><i class="fa fa-download"></i></a>
                    <a href="${createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name])}"
                       class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                       style="color: white"><i class="fa fa-th-large"></i></a>

                </div>
            </div>

        </g:each>
    </div>
</g:else>

<script src="${resource(dir: 'justified_gallery', file: 'test/webpack/dist/bundle.js')}"></script>


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
            tile_border_radius: 10,
            tile_width: 200,						//tile width
            tile_height: 170     //tile height
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