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

    .unselect-size {
        font-size: 24px;
        color: #c90000;
        border: 3px;
        border-color: #c90000;
        border-style: solid;
        border-width: 1.5px;
        margin-right: 5px;
    }

    .selected-size {
        font-size: 24px;
        color: white;
        background-color: #c90000;
        border: 3px;
        border-color: #c90000;
        border-style: solid;
        border-width: 1.5px;
        margin-right: 5px;
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


    <link rel="stylesheet" href="${resource(dir: 'justified_gallery', file: 'dist/css/justifiedGallery.min.css')}"/>
    <script src="${resource(dir: 'justified_gallery', file: 'dist/js/jquery.justifiedGallery.min.js')}"></script>
</head>

<body>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-md-6" style="margin-top: 50px">
            <% int indx = 0; %>
            <g:each in="${itemImages}" var="image" status="i">
                <g:if test="${!image?.groupSize?.groupLabel.equals("Others")}">
                    <g:if test="${indx == 0}">
                        <div id="image-${image?.groupSize?.groupLabel}" class="image_container" style="display: block">
                            %{--<g:set var="image" value="${com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)}"/>--}%
                            <img class="card-img-top"
                                 src="${createLink(controller: 'document', action: 'photoWithWatermaarkPreview', id: image?.id)}"
                                 alt="">

                            <div class="overlay">
                                <sec:ifLoggedIn>
                                    <a id="like_${itemInstance?.id}" class="btn btn-sm" data-toggle="tooltip"
                                       data-placement="bottom"
                                       title="Like"
                                       style="color: white" onclick="like(${itemInstance?.id})">
                                        <script>
                                            islike(${itemInstance?.id});
                                        </script></a>
                                    <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                                       title="Add to chart"
                                       style="color: white"><i class="fa fa-shopping-basket"
                                                               onclick="add_to_chart(${itemInstance?.id})"></i></a>
                                </sec:ifLoggedIn>
                                <a href="${createLink(controller: 'document', action: 'preview', id: itemInstance?.id)}"
                                   class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                                   title="Download preview"
                                   style="color: white"><i class="fa fa-download"></i></a>
                                <a href="${createLink(cotroller: 'home', action: 'main', params: [cat: itemInstance?.category?.name])}"
                                   class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                                   style="color: white"><i class="fa fa-th-large"></i></a>

                            </div>
                        </div>
                    </g:if>
                    <g:else>
                        <div id="image-${image?.groupSize?.groupLabel}" class="image_container" style="display: none">
                            %{--<g:set var="image" value="${com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)}"/>--}%
                            <img class="card-img-top"
                                 src="${createLink(controller: 'document', action: 'photoWithWatermaarkPreview', id: image?.id)}"
                                 alt="">

                            <div class="overlay">
                                <sec:ifLoggedIn>
                                    <a id="like_${itemInstance?.id}" class="btn btn-sm" data-toggle="tooltip"
                                       data-placement="bottom"
                                       title="Like"
                                       style="color: white" onclick="like(${itemInstance?.id})">
                                        <script>
                                            islike(${itemInstance?.id});
                                        </script></a>
                                    <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                                       title="Add to chart"
                                       style="color: white"><i class="fa fa-shopping-basket"
                                                               onclick="add_to_chart(${itemInstance?.id})"></i></a>
                                </sec:ifLoggedIn>
                                <a href="${createLink(controller: 'document', action: 'preview', id: itemInstance?.id)}"
                                   class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                                   title="Download preview"
                                   style="color: white"><i class="fa fa-download"></i></a>
                                <a href="${createLink(cotroller: 'home', action: 'main', params: [cat: itemInstance?.category?.name])}"
                                   class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                                   style="color: white"><i class="fa fa-th-large"></i></a>

                            </div>
                        </div>
                    </g:else>
                    <% indx++; %>
                </g:if>

            </g:each>

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
                            <i class="fa fa-eye"
                               style="color: #c90000"></i> ${com.picsell.data.ItemViewed.countByItem(itemInstance)}
                            <i class="fa fa-heart-o"
                               style="color: #c90000; margin-left: 10px"></i> ${com.picsell.data.UserLikeItem.countByItem(itemInstance)}
                        </div>

                    </div>

                    <div class="col-md-4">
                        <div style="margin-top: 55px; font-size: 16pt; text-align: right; color: #4b4a4a;">
                            <b><u>ID ${itemInstance?.id}</u></b>
                        </div>
                    </div>
                </div>

                <div style="color: black; text-align: justify">
                    <p>${itemInstance?.description}</p>
                </div>

                <div style="color: grey;">
                    <i>TAGS : ${itemInstance?.tags}</i>
                </div>

                <div style="align-items: center; margin-top: 10px">
                    <% int z = 0 %>
                    <g:each in="${itemImages}" var="image" status="i">
                        <g:if test="${!image?.groupSize?.groupLabel.equals("Others")}">
                            <g:if test="${z == 0}">
                                <button id="size-${image?.groupSize?.groupLabel}"
                                        class="selected-size"
                                        onclick="clickSizeImage('${image?.groupSize?.groupLabel}')">&nbsp;${image?.groupSize?.groupLabel}&nbsp;</button>
                            </g:if>
                            <g:else>
                                <button id="size-${image?.groupSize?.groupLabel}"
                                        class="unselect-size"
                                        onclick="clickSizeImage('${image?.groupSize?.groupLabel}')">&nbsp;${image?.groupSize?.groupLabel}&nbsp;</button>
                            </g:else>
                            <% z++ %>
                        </g:if>
                    </g:each>

                %{--<a href="#"--}%
                %{--style="font-size: 24px; color:  #c90000; border: 3px; border-color: #c90000;border-style: solid; border-width: 1.5px; margin-right: 5px">&nbsp;M&nbsp;</a>--}%
                %{--<a href="#"--}%
                %{--style="font-size: 24px; color:  white; background-color:   #c90000; border: 3px; border-color: #c90000;border-style: solid; border-width: 1.5px; margin-right: 5px">&nbsp;L&nbsp;</a>--}%
                %{--<i><u><a href="#" style="color: #c90000">size guide</a></u></i>--}%
                </div>

                <% int ii = 0 %>
                <g:each in="${itemImages}" var="image" status="i">
                    <g:if test="${!image?.groupSize?.groupLabel.equals("Others")}">
                        <% def sizeLabel = ""
                        if (image?.groupSize?.groupLabel.equals("L")) {
                            sizeLabel = "Large"
                        } else if (image?.groupSize?.groupLabel.equals("M")) {
                            sizeLabel = "Medium"
                        } else if (image?.groupSize?.groupLabel.equals("S")) {
                            sizeLabel = "Small"
                        }
                        %>
                        <% if (ii == 0) { %>
                        <div class="gray-box" id="infobox-${image?.groupSize?.groupLabel}">
                        <% } else { %>
                        <div class="gray-box" id="infobox-${image?.groupSize?.groupLabel}" style="display: none">
                            <% } %>

                            <table>
                                <tr>
                                    <td>${sizeLabel}  ${image?.width} x ${image?.height},  ${image?.tipeFile}</td>
                                    <td width="5%"><a href="#"
                                                      style="margin-left: 100px;"><i
                                                class="fa fa-shopping-basket" data-toggle="tooltip"
                                                data-placement="bottom"
                                                title="Add to chart"
                                                style="color: #c90000" onclick="add_to_chart(${itemInstance?.id})"></i>
                                    </a></td>
                                </tr>
                            </table>

                        </div>

                        <% ii++ %>
                    </g:if>
                </g:each>


                <div>
                    Need different sizes? <a href="#">Edit with picsell editor</a>
                </div>

                <div style="margin-top: 20px">
                    <button class="myButton" onclick="readyDownload()">Download</button>
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

                            <div class="gray-box" style=" width: 100%; padding: 10px">
                                <div style="margin-left: 20px; padding-right: 30px; font-size: 18pt; width: 100%; text-align: justify; color:#c90000">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style="vertical-align: bottom; font-size: 24pt"><b>1</b></td>
                                            <td style="vertical-align: bottom; border-bottom: 3px solid #c90000;"><b>images</b>
                                            </td>
                                            <td style="text-align: right; vertical-align: bottom; border-bottom: 3px solid #c90000;"
                                                id="price"><b>IDR</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3"
                                                style="color: gray">
                                                <a href="${createLink(controller: 'home', action: 'packages')}"
                                                   style="margin: 5px; font-size: 11pt; "><i>see our price and package</i>
                                                </a>
                                            </td>

                                        </tr>
                                    </table>
                                </div>

                            </div>

                            <div style="margin-top: 40px">
                                %{--<a class="btn btn-sm btn-danger"--}%
                                %{--href="${createLink(controller: 'home', action: 'purchase_summary', id: itemInstance?.id)}">Buy now</a>--}%
                                %{--<button class="btn button-dark-red">More Images</button>--}%
                                <button class="myButton" onclick="buyNow()">Buy now</button>
                                <button class="myButtonGrey" onclick="viewDetails()">Back</button>
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

            <div class="gallery_justify">
                <g:each in="${com.picsell.data.Item.findAllByCategoryAndStatus(itemInstance?.category, "approved")}"
                        var="item">
                    <g:if test="${item != itemInstance}">
                        <div class="image_container">
                            <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                                <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                                     alt="" style="border-radius: 10px;">
                            </a>

                            <div class="overlay">
                                <sec:ifLoggedIn>
                                    <a id="like_${item?.id}" class="btn btn-sm" data-toggle="tooltip"
                                       data-placement="bottom"
                                       title="Like"
                                       style="color: white" onclick="like(${item?.id})">
                                        <script>
                                            islike(${item?.id});
                                        </script></a>
                                    <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                                       title="Add to chart"
                                       style="color: white"><i class="fa fa-shopping-basket"
                                                               onclick="add_to_chart(${item?.id})"></i></a>
                                </sec:ifLoggedIn>
                                <a href="${createLink(controller: 'document', action: 'preview', id: item?.id)}"
                                   class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                                   title="Download preview"
                                   style="color: white"><i class="fa fa-download"></i></a>
                                <a href="${createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name])}"
                                   class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                                   style="color: white"><i class="fa fa-th-large"></i></a>

                            </div>
                        </div>

                    </g:if>
                </g:each>
            </div>

        </div>


        <div class="col-md-" style="color: #d53b31; margin-bottom: 30px">
            <table style="width: 100%">
                <tr>
                    <td style="width: 90%;vertical-align: middle"><div
                            style="height: 3px; width: 100%; background-color: #d53b31"></div></td>
                    <td style="text-align: center; vertical-align: middle"><a
                            href="${createLink(controller: 'home', action: 'main', params: [cat: itemInstance?.category?.name])}"><b>View all</b>
                    </a></td>
                </tr>
            </table>
        </div>


        <!-- /.row -->

    </div>
    <script>
        jQuery(".gallery_justify").justifiedGallery(
                {
                    margins: 10,
                    rowHeight: 130
                })
    </script>
    <script>
        var text = '${groupSizes}';
        var itemImages = '${itemImagesJson}';
        console.log(text.replace(/&quot;/g, '\"'));
        var data = JSON.parse(text.replace(/&quot;/g, '\"'));
        var dataImages = JSON.parse(itemImages.replace(/&quot;/g, '\"'));
        var dataNoOthersGroup = []
        var dataImagesNoOthersGroup = []
        for (var z = 0; z < data.length; z++) {
            if (data[z].groupLabel !== 'Others') {
                dataNoOthersGroup.push(data[z])
                dataImagesNoOthersGroup.push(dataImages[z])
            }
        }

        console.log(dataNoOthersGroup)
        var imageItem = dataImagesNoOthersGroup[0];
        var sizeGroup = dataNoOthersGroup[0];

        function readyDownload() {
            console.log("CLICK");
            console.log(imageItem);
            console.log(sizeGroup);

            var price = document.getElementById('price');
            price.innerHTML = "<b>" + sizeGroup.price + "</b>"

            var downloadPage = document.getElementById("download_page");
            var detailItemPage = document.getElementById("item_page");
            detailItemPage.style.height = 0;
            jQuery("#item_page").hide();
            jQuery("#download_page").show();
//        detailItemPage.style.height = auto;
//        detailItemPage.style.visibility = "hidden";
            downloadPage.style.visibility = "visible";


        }

        function buyNow() {
            %{--${createLink(controller: 'home', action: 'purchase_summary', id: itemInstance?.id)}--}%
            window.location = "${createLink(controller: 'home', action: 'purchase_summary')}" + "/" + imageItem.id
        }
        function viewDetails() {
            console.log("CLICK");
            var downloadPage = document.getElementById("download_page");
            var detailItemPage = document.getElementById("item_page");
            downloadPage.style.height = 0;
//        downloadPage.style.visibility = "hidden";
            detailItemPage.style.display = "block";
            jQuery("#download_page").hide();
//        jQuery("#item_page").show();


//        detailItemPage.style.height = auto;

        }
        function isvisible(obj) {
            return obj.style['visibility'] != 'none';
        }

        function clickSizeImage(sizeLabel) {
            for (var i = 0; i < dataNoOthersGroup.length; i++) {
                if (dataNoOthersGroup[i].groupLabel !== 'Others') {
//                    console.log(i)
                    var imgID = "image-" + dataNoOthersGroup[i].groupLabel;
                    var infoBoxID = "infobox-" + dataNoOthersGroup[i].groupLabel;
//                    console.log(imgID);
                    var img = document.getElementById(imgID);
                    var info = document.getElementById(infoBoxID);
                    var sizeID = "size-" + dataNoOthersGroup[i].groupLabel;
                    var size_ = document.getElementById(sizeID);
                    if (dataNoOthersGroup[i].groupLabel === sizeLabel) {
                        imageItem = dataImagesNoOthersGroup[i];
                        sizeGroup = dataNoOthersGroup[i];
                        console.log(imageItem);
                        img.style.display = 'block';
                        info.style.display = 'block';
                        size_.className = "selected-size";
                    } else {
                        img.style.display = 'none';
                        info.style.display = 'none';
                        size_.className = "unselect-size";
                    }
                }

            }
//        console.log('clicked ' + size);
        }
    </script>
</body>
</html>