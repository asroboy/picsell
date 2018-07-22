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
</head>

<body>

<!-- Page Content -->
<div class="container">

    %{--<!-- Portfolio Item Heading -->--}%
    %{--<h1 class="my-4">${itemInstance?.name}--}%
    %{--<small>The item sub name or category</small>--}%
    %{--</h1>--}%


    <!-- Related Projects Row -->
    <div>
        <h3 class="my-4 sub-part1">PURCHASE SUMMARY</h3>
    </div>


    <div class="row">
        <div class="col-md-6">
            <div class="gray-box" style="margin-bottom: 30px; padding: 15px;">
                <div style="margin-bottom: 15px">Billing address</div>

                <form>
                    <table style="width: 100%; color: black; font-style: italic">
                        <colgroup>
                            <col style="width: 40%"/>
                            <col style="width: 40%"/>
                            <col style="width: 18%"/>
                            <col style="width: 2%"/>
                        </colgroup>

                        <tr>
                            <td>Country</td>
                            <td colspan="2"><input class="form-control" type="text" name="country"/></td>
                            <td style="color: red">*</td>
                        </tr>
                        <tr>
                            <td>Address 1</td>
                            <td colspan="2"><input class="form-control" type="text" name="address_1"/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Address 2</td>
                            <td colspan="2"><input class="form-control" type="text" name="address_2"/></td>
                            <td style="color: red">*</td>
                        </tr>
                        <tr>
                            <td>City</td>
                            <td colspan="2"><input class="form-control" type="text" name="city"/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>State/Province</td>
                            <td><input class="form-control" type="text" name="state"/></td>
                            <td><input class="form-control" type="text" name="postal_code"/></td>
                            <td></td>
                        </tr>

                    </table>
                </form>

                <div style="margin-bottom: 15px;margin-top: 15px">Payment Method</div>

                <form>
                    <table style="width: 100%; color: black; font-style: italic">
                        <colgroup>
                            <col style="width: 40%"/>
                            <col style="width: 40%"/>
                            <col style="width: 18%"/>
                            <col style="width: 2%"/>
                        </colgroup>

                        <tr>
                            <td>First Name</td>
                            <td colspan="2"><input class="form-control" type="text" name="firt_name"/></td>
                            <td style="color: red">*</td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td colspan="2"><input class="form-control" type="text" name="last_name"/></td>
                            <td style="color: red">*</td>
                        </tr>
                        <tr>
                            <td>Creadit Card Number</td>
                            <td colspan="2"><input class="form-control" type="text" name="cc_number"/></td>
                            <td style="color: red">*</td>
                        </tr>
                        <tr>
                            <td>Security Code</td>
                            <td colspan="2"><input class="form-control" type="text" name="vcs"/></td>
                            <td style="color: red">*</td>
                        </tr>
                        <tr>
                            <td>Expire Date</td>
                            <td><input class="form-control" type="text" name="month"/></td>
                            <td><input class="form-control" type="text" name="year"/></td>
                            <td style="color: red">*</td>
                        </tr>

                    </table>
                </form>

                <div style="color: #c90000; font-style: italic; margin-top: 15px; margin-bottom: 15px">") required field</div>

                <div style="color: black;font-style: italic; margin-top: 15px; margin-bottom: 15px">I agree with term and condition <input
                        type="checkbox"/> <a href="#"><b>read here</b></a></div>
            </div>

        </div>

        <div class="col-md-6">
            <div style="color:  #c90000; font-style: italic; margin-top: -25px"><b>YOU ARE ABOUT TO GET ACCESS TO</b>
            </div>

            <div class="white-box" style="margin-bottom: 25px; padding: 15px">
                <table width="100%">
                    <colgroup>
                        <col width="25%"/>
                        <col width="25%"/>
                        <col width="25%"/>
                        <col width="25%"/>
                    </colgroup>
                    <tr>
                        <td style="border-right: solid gray 1px">
                            <div style="text-align: center">
                                <img src="${resource(dir: 'images', file: 'ic_camera.jpg')}" width="60px"
                                     height="60px"/>
                            </div>

                        </td>
                        <td style="border-right: solid gray 1px">
                            <div style="text-align: center">
                                <img src="${resource(dir: 'images', file: 'ic_search.jpg')}" width="60px"
                                     height="60px"/>
                            </div>

                        </td>
                        <td style="border-right: solid gray 1px">
                            <div style="text-align: center">
                                <img src="${resource(dir: 'images', file: 'ic_document.jpg')}" width="60px"
                                     height="60px"/>
                            </div>

                        </td>
                        <td>
                            <div style="text-align: center">
                                <img src="${resource(dir: 'images', file: 'ic_images.jpg')}" width="60px"
                                     height="60px"/>
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td><div class="label-under-icon-big">FRESH IMAGES</div>
                        </td>
                        <td><div class="label-under-icon-big">FAST SEARCH</div>
                        </td>
                        <td><div class="label-under-icon-big">LICENSE RIGHTS</div>
                        </td>
                        <td><div class="label-under-icon-big">1 MILLIONS+IMAGES</div>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="white-box" style="margin-bottom: 30px; padding: 15px">
                <div style="padding: 5px">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="white-box" style="margin: 0px; padding: 0px">
                                <div>
                                    <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)?.id)}"
                                         alt="" width="100%">
                                </div>

                                <div style="text-align: center">
                                    <u>ID ${itemInstance?.id}</u>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-7" style="text-align: left">
                            <div style="background: #d00006; color: white;text-align: center;padding: 5px;margin-bottom: 10px;">
                                Item Title
                            </div>

                            <div style="margin-top: 8px">
                                <a href="#"
                                   style="font-size: 24px; color:  white; background-color:   #c90000; border: 3px; border-color: #c90000;border-style: solid; border-width: 1.5px; margin-right: 5px">&nbsp;L&nbsp;</a>
                            </div>

                            <div style="margin-top: 8px">124 x 321 dpi</div>

                            <div style="margin-top: 8px">124 x 321 dpi JPEG</div>
                        </div>
                    </div>

                </div>

                <div style="border-top: solid 1px gray; color: black; padding-left: 5px;padding-right: 5px; padding-top: 30px; padding-bottom: 30px">
                    <div class="row">
                        <div class="col-md-6"><b>1 IMAGE</b></div>

                        <div class="col-md-6" style="text-align: right"><b>10000 IDR</b></div>
                    </div>

                </div>


                <div style="border-top: solid 1px gray; padding: 5px">
                    <div class="row">
                        <div class="col-md-6"><b>TOTAL AMOUNT</b></div>

                        <div class="col-md-6" style="text-align: right"><b>10000 IDR</b></div>
                    </div>

                </div>

                <div style="border-top: solid 1px gray; padding-left: 5px; padding-right: 5px; padding-top: 15px">
                    <div>
                        <div class="row">
                            <div class="col-md-6" style="color: black; text-align: right"><b>Do you have coupon code</b>
                            </div>

                            <div class="col-md-6" style="text-align: right">
                                <input class="form-control" type="text"/>
                            </div>
                        </div>
                    </div>

                    <div style="margin-top: 15px; text-align: right">
                        <g:if test="${params.chart_id}">
                            <button class="btn button-dark-red"
                                    onclick="pay_chart_id(${params.chart_id})">COMPLETE CHECKOUT</button>
                        </g:if>
                        <g:else>
                            <button class="btn button-dark-red"
                                    onclick="pay_chart(${itemInstance?.id}, ${userObject?.id})">COMPLETE CHECKOUT</button>
                        </g:else>

                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- /.row -->

</div>
<!-- /.container -->

<script>
    function pay_chart(item_id, user_id) {
        var URL = "${createLink(controller: 'api', action: 'chart_staus_paid')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                item_id: item_id,
                user_id: user_id,
            },
            success: function (resp) {
                console.log(resp);
                window.location =
                        "${createLink(controller: 'home', action: 'mychart')}";
            }
        });
    }

    function pay_chart_id(chart_id) {
        var URL = "${createLink(controller: 'api', action: 'chart_staus_paid')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                chart_id: chart_id
            },
            success: function (resp) {
                console.log(resp);
                window.location =
                        "${createLink(controller: 'home', action: 'mychart')}";
            }
        });
    }
</script>

</body>

</html>