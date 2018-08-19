<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 8/16/2018
  Time: 11:49 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <script src="${resource(dir: 'portfolio-gh-pages', file: 'vendor/jquery/jquery.min.js')}"></script>
    <script type='text/javascript' src='${resource(dir: 'unitegallery', file: 'dist/js/unitegallery.min.js')}'></script>

    <link rel='stylesheet' href='${resource(dir: 'unitegallery', file: 'dist/css/unite-gallery.css')}' type='text/css'/>
    <script type='text/javascript'
            src='${resource(dir: 'unitegallery', file: 'dist/themes/tilesgrid/ug-theme-tilesgrid.js')}'></script>


    <link rel="stylesheet" href="${resource(dir: 'justified_gallery', file: 'dist/css/justifiedGallery.css')}"/>
    <script src="${resource(dir: 'justified_gallery', file: 'src/js/jquery.justifiedGallery.js')}"></script>
    %{--../../dist/css/justifiedGallery.css--}%

    <style>
    .image_container {
        position: relative;
    }

    .overlay {
        position: absolute;
        bottom: 0;
        background: rgb(0, 0, 0);
        background: rgba(255, 255, 255, 0.5); /* Black see-through */
        width: 100%;
        transition: .5s ease;
        opacity: 0;
        color: #000000;
        font-size: 20px;
        padding: 15px;
        text-align: center;
    }

    /*.justified-gallery > a > img,*/
    /*.justified-gallery > div > img,*/
    /*.justified-gallery > figure > img,*/
    /*.justified-gallery > a > a > img,*/
    /*.justified-gallery > div > a > img,*/
    /*.justified-gallery > figure > a > img {*/
    /*position: absolute;*/
    /*top: 50%;*/
    /*left: 50%;*/
    /*margin: 0;*/
    /*padding: 0;*/
    /*border: none;*/
    /*filter: "alpha(opacity=0)";*/
    /*opacity: 0;*/
    /*}*/
    </style>
</head>

<body>
<div class="gallery_justify">
%{--<div class="image_container" style="padding: 5px;">--}%
    <g:each in="${com.picsell.data.Item.findAllByStatus("approved")}" var="item" status="i">
        <div class="image_container">
            <a href="#">
                <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"/>
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
                <a href="${createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name])}"
                   class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                   style="color: white"><i class="fa fa-th-large"></i></a>

            </div>
        </div>

    </g:each>


%{--</div>--}%
</div>

<script src="${resource(dir: 'justified_gallery', file: 'test/webpack/dist/bundle.js')}"></script>
%{--<script src="dist/bundle.js"></script>--}%
</body>

</html>