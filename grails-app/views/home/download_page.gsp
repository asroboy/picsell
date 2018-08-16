<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 8/8/2018
  Time: 9:09 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Download Page</title>
    <meta name="layout" content="theme_portfolio_gh"/>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<div class="container" style="margin-top: 50px; margin-bottom: 50px">
    <div class="row">
        <div class="col-md-6" style="margin-top: 50px">
            <div class="image_container">
                <img class="card-img-top"
                     src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)?.id)}"
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
                        <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Add to chart"
                           style="color: white"><i class="fa fa-shopping-basket"
                                                   onclick="add_to_chart(${itemInstance?.id})"></i></a>
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
                            <i class="fa fa-eye"
                               style="color: #c90000"></i> ${com.picsell.data.ItemViewed.countByItem(itemInstance)}
                            <i class="fa fa-heart-o"
                               style="color: #c90000; margin-left: 10px"></i> ${com.picsell.data.UserLikeItem.countByItem(itemInstance)}
                        </div>

                    </div>

                    <div class="col-md-4">
                        <div style="margin-top: 55px; font-size: 16pt; text-align: right; color: #c90000;">
                            <u>ID ${itemInstance?.id}</u>
                        </div>
                    </div>
                </div>

                <div style="color: black; text-align: justify">
                    <p>${itemInstance?.description}</p>
                </div>

                <div style="color: gray;margin-bottom: 15px">
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
                        class="fa fa-shopping-basket" data-toggle="tooltip" data-placement="bottom" title="Add to chart"
                        style="color: #c90000" onclick="add_to_chart(${itemInstance?.id})"></i></a>
                </div>

                %{--<div>--}%
                %{--Need different sizes? <a href="#">Edit with picsell editor</a>--}%
                %{--</div>--}%

                <div style="margin-top: 20px">
                    <button class="btn btn-sm button-red" onclick="readyDownload()">Download Preview</button>
                    <button class="btn btn-sm button-red" onclick="readyDownload()">Buy Item</button>
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
                            <a class="btn btn-sm button-dark-red"
                               href="${createLink(controller: 'home', action: 'purchase_summary', id: itemInstance?.id)}">Buy now</a>
                            %{--<button class="btn button-dark-red">More Images</button>--}%
                            <button class="btn btn-sm button-dark-red" onclick="viewDetails()">Back</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>

    </div>

</div>


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

    }
</script>
</body>
</html>