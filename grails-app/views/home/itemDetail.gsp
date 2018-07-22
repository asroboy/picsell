<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/8/2018
  Time: 10:43 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>

    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
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

    </style>
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <script>
        var URL = "${createLink(controller: 'api', action: 'view_count')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                item_id: ${itemInstance?.id}
            },
            success: function (resp) {
                if (resp.code == 1) {
                }
            }
        });

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
</head>

<body>

<!-- Page Content -->
<div class="container">

    %{--<!-- Portfolio Item Heading -->--}%
    %{--<h1 class="my-4">${itemInstance?.name}--}%
    %{--<small>The item sub name or category</small>--}%
    %{--</h1>--}%

    <!-- Portfolio Item Row -->
    <div class="row">

        <div class="col-md-6" style="margin-top: 50px">
            <div class="image_container">
                <img class="card-img-top"
                     src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)?.id)}"
                     alt="">
                <div class="overlay">
                    <sec:ifLoggedIn>
                        <a id="like_${itemInstance?.id}" class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                           title="Like"
                           style="color: white" onclick="like(${itemInstance?.id})">
                            <script>
                                islike(${itemInstance?.id});
                            </script></a>
                        <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Add to chart"
                           style="color: white"><i class="fa fa-shopping-basket" onclick="add_to_chart(${itemInstance?.id})"></i></a>
                    </sec:ifLoggedIn>
                    <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Download preview"
                       style="color: white"><i class="fa fa-download"></i></a>
                    <a href="${createLink(cotroller: 'home', action: 'index', params: [cat: itemInstance?.category?.name])}"
                       class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                       style="color: white"><i class="fa fa-th-large"></i></a>

                </div>
            </div>


        </div>

        <div class="col-md-6">
            <div id="item_page">
                <div class="row">
                    <div class="col-md-4">
                        <div class="label-red" style="margin-top: 55px;width: 100%">
                            ${itemInstance?.name}
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div style="margin-top: 55px; font-size: 16pt">
                            <i class="fa fa-eye" style="color: #c90000"></i> ${com.picsell.data.ItemViewed.countByItem(itemInstance)}
                            <i class="fa fa-heart-o" style="color: #c90000; margin-left: 10px"></i> ${com.picsell.data.UserLikeItem.countByItem(itemInstance)}
                        </div>

                    </div>

                    <div class="col-md-4">
                        <div style="margin-top: 55px; font-size: 16pt; text-align: right; color: #c90000;">
                            <b><u>ID ${itemInstance?.id}</u></b>
                        </div>
                    </div>
                </div>

                <div style="color: black; text-align: justify">
                    <p>${itemInstance?.description}</p>
                </div>

                <div style="color: gray;">
                    <i>TAGS : ${itemInstance?.tags}</i>
                </div>

                <div style="align-items: center;">
                    <a href="#"
                       style="font-size: 24px; color:  #c90000; border: 3px; border-color: #c90000;border-style: solid; border-width: 1.5px; margin-right: 5px">&nbsp;S&nbsp;</a>
                    <a href="#"
                       style="font-size: 24px; color:  #c90000; border: 3px; border-color: #c90000;border-style: solid; border-width: 1.5px; margin-right: 5px">&nbsp;M&nbsp;</a>
                    <a href="#"
                       style="font-size: 24px; color:  white; background-color:   #c90000; border: 3px; border-color: #c90000;border-style: solid; border-width: 1.5px; margin-right: 5px">&nbsp;L&nbsp;</a>
                    <i><u><a href="#" style="color: #c90000">size guide</a></u></i>
                </div>

                <div class="gray-box">
                    Large  2310 x 1298, 150 mdpi, 18x22 in @300 dpi, JPEG <a href="#" style="margin-left: 50px;"><i
                        class="fa fa-shopping-basket" data-toggle="tooltip" data-placement="bottom" title="Add to chart" style="color: #c90000" onclick="add_to_chart(${itemInstance?.id})"></i></a>
                </div>

                <div>
                    Need different sizes? <a href="#">Edit with picsell editor</a>
                </div>

                <div style="margin-top: 20px">
                    <button class="btn button-red" onclick="readyDownload()">Download</button>
                </div>

            </div>

            <div id="download_page" style="position: relative;visibility: hidden; height: 0px">
                <div class="row">
                    <div class="col-md-12">
                        <div class="sub-part1" style="margin-top: 55px">
                            <b>Ready to download?</b>
                        </div>

                        <div>
                            It's simple. Be ready to explore your project once you choose payment method. Or, choose our free worries that cover thee page rights
                        </div>

                        <div class="gray-box" style=" width: 100%">
                            <div style="margin-left: 20px; padding-right: 30px; font-size: 18pt; width: 100%; text-align: justify; color:#c90000">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="vertical-align: bottom; font-size: 24pt"><b>1</b></td>
                                        <td style="vertical-align: bottom; border-bottom: 3px solid #c90000;"><b>images</b>
                                        </td>
                                        <td style="text-align: right; vertical-align: bottom; border-bottom: 3px solid #c90000;"><b>12000 IDR</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"
                                            style="font-size: 14pt; color: gray"><i>see our price and package</i></td>

                                    </tr>
                                </table>
                            </div>

                        </div>

                        <div style="margin-top: 40px">
                            <a class="btn button-dark-red"
                               href="${createLink(controller: 'home', action: 'purchase_summary', id: itemInstance?.id)}">Buy now</a>
                            %{--<button class="btn button-dark-red">More Images</button>--}%
                            <button class="btn button-dark-red" onclick="viewDetails()">Back</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>

    </div>
    <!-- /.row -->

    <!-- Related Projects Row -->
    <div>
        <h3 class="my-4 sub-part1">SIMILAR RESULT</h3>
    </div>


    <div class="row">
        <section id="photos">
            <g:each in="${com.picsell.data.Item.findAllByCategoryAndStatus(itemInstance?.category, "approved")}" var="item">
            %{--<div class="col-md-3 col-sm-6 mb-4">--}%
                <g:if test="${item != itemInstance}">
                    <div class="image_container">
                        <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                            <img class="img-fluid"
                                 src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
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
                                   style="color: white"><i class="fa fa-shopping-basket" onclick="add_to_chart(${item?.id})"></i></a>
                            </sec:ifLoggedIn>
                            <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Download preview"
                               style="color: white"><i class="fa fa-download"></i></a>
                            <a href="${createLink(cotroller: 'home', action: 'index', params: [cat: item?.category?.name])}"
                               class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                               style="color: white"><i class="fa fa-th-large"></i></a>

                        </div>
                    </div>

                </g:if>

            %{--</div>--}%
            </g:each>

        </section>

    </div>


    <div class="col-md-" style="color: #d53b31; margin-bottom: 30px">
        <table style="width: 100%">
            <tr>
                <td style="width: 90%;vertical-align: middle"><div
                        style="height: 3px; width: 100%; background-color: #d53b31"></div></td>
                <td style="text-align: center; vertical-align: middle"><a
                        href="${createLink(controller: 'home', action: 'index', params: [cat: itemInstance?.category?.name])}"><b>View all</b>
                </a></td>
            </tr>
        </table>
    </div>


    <!-- /.row -->

</div>
<!-- /.container -->


<script>

    function readyDownload() {
        console.log("CLICK");
        var downloadPage = document.getElementById("download_page");
        var detailItemPage = document.getElementById("item_page");
        detailItemPage.style.height = 0;
        detailItemPage.style.visibility = "hidden";
        downloadPage.style.visibility = "visible";
        detailItemPage.style.height = auto;

    }
    function viewDetails() {
        console.log("CLICK");
        var downloadPage = document.getElementById("download_page");
        var detailItemPage = document.getElementById("item_page");
        downloadPage.style.height = 0;
        detailItemPage.style.visibility = "visible";
        downloadPage.style.visibility = "hidden";
//        detailItemPage.style.height = auto;

    }
    function isvisible(obj) {
        return obj.style['visibility'] != 'none';
    }
</script>
</body>
</html>