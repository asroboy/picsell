<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 3/16/2018
  Time: 10:25 AM
--%>

<%@ page import="com.picsell.security.Role; com.picsell.security.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
    <g:set var="userAccounts" value="${com.picsell.data.UserAccount.findAllByUser(userObject)}"/>

    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'justified_gallery', file: 'dist/css/justifiedGallery.min.css')}"/>
    <script src="${resource(dir: 'justified_gallery', file: 'dist/js/jquery.justifiedGallery.min.js')}"></script>
    %{--<script src="${resource(dir: 'justified_gallery', file: 'src/js/justifiedGallery.js')}"></script>--}%
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


    </style>
</head>

<body>

<div class="container">

    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Hot Items & Special Promo</div>

        </div>

        <div class="col-md-12">
            <b>Get images you need with special prices for several periods from categories on below</b>
        </div>

    </div>

    <g:each in="${categories}" var="category">
        <div class="row">
            <div class="col-md-12">
                <div style="margin-bottom: 20px; margin-top: 20px">
                    <div class="sub-part1">
                        <b>${category?.name.toUpperCase()}</b>
                    </div>

                    <section>
                        %{--<g:render template="photos"/>--}%
                        <div class="gallery_justify">
                            <g:each in="${items}" var="item" status="i">
                                <g:if test="${item.category == category}">
                                    <div class="image_container">
                                        <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                                            <img src="${createLink(controller: 'document', action: 'download', id: item?.id)}"
                                                 alt="" style="border-radius: 10px;">
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
                                </g:if>
                            </g:each>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </g:each>

</div>
%{--<script src="${resource(dir: 'justified_gallery', file: 'test/webpack/dist/bundle.js')}"></script>--}%
<script>
    jQuery(".gallery_justify").justifiedGallery(
            {
                margins: 10,
                rowHeight: 130
            })
</script>
</body>

</html>