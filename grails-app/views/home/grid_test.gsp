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
<div id="simpletest">
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

%{--<div id="simpletest" >--}%
%{--<a href="../photos/8083451788_552becfbc7_b.jpg" title="What's your destination?">--}%
%{--<img src="../photos/8083451788_552becfbc7_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/7948632554_01f6ae6b6f_b.jpg" title="Just in a dream Place">--}%
%{--<img src="../photos/7948632554_01f6ae6b6f_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/7302459122_19fa1d8223_b.jpg" title="Truthful Innocence">--}%
%{--<img src="../photos/7302459122_19fa1d8223_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/7222046648_5bf70e893a_b.jpg" title="Simply my Brother">--}%
%{--<img src="../photos/7222046648_5bf70e893a_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/7002395006_29fdc85f7a_b.jpg" title="Freedom">--}%
%{--<img src="../photos/7002395006_29fdc85f7a_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/7062575651_b23918b11a_b.jpg" title="Maybe spring">--}%
%{--<img src="../photos/7062575651_b23918b11a_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6841267340_855273fd7e_b.jpg" title="Love">--}%
%{--<img src="../photos/6841267340_855273fd7e_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6958456697_e56a37bb5f_b.jpg" title="Young Lovers' Wall and the Old Rain">--}%
%{--<img src="../photos/6958456697_e56a37bb5f_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6791628438_affaa19e10_b.jpg" title="This is the colors I love">--}%
%{--<img src="../photos/6791628438_affaa19e10_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6916180091_9c9559e463_b.jpg" title="The Hope">--}%
%{--<img src="../photos/6916180091_9c9559e463_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6880502467_d4b3c4b2a8_b.jpg" title="Florence streets. Florence people.">--}%
%{--<img src="../photos/6880502467_d4b3c4b2a8_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6876412479_6268c6e2aa_b.jpg" title="I Love You">--}%
%{--<img src="../photos/6876412479_6268c6e2aa_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6840627709_92ed52fb41_b.jpg" title="The painter in Florence">--}%
%{--<img src="../photos/6840627709_92ed52fb41_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6812090617_5fd5bbdda0_b.jpg" title="Me and My Belover">--}%
%{--<img src="../photos/6812090617_5fd5bbdda0_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6806687375_07d2b7a1f9_b.jpg" title="Fiocco">--}%
%{--<img src="../photos/6806687375_07d2b7a1f9_m.jpg" />--}%
%{--</a>--}%
%{--<a href="../photos/6798453217_72dea2d06e_b.jpg" title="My first clothespin">--}%
%{--<img src="../photos/6798453217_72dea2d06e_m.jpg" />--}%
%{--</a>--}%
%{--</div>--}%

<script src="${resource(dir: 'justified_gallery', file: 'test/webpack/dist/bundle.js')}"></script>
%{--<script src="dist/bundle.js"></script>--}%
</body>

</html>