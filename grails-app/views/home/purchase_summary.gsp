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


    <g:set var="billingInfo" value="${com.picsell.data.BillingAddress.findByUser(userObject)}"/>
    <g:set var="paymentMethod" value="${com.picsell.data.PaymentMethod.findByUser(userObject)}"/>
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
                <div id="has_info" style="display: none">
                    <div style="margin-bottom: 15px">Billing address</div>

                    <table style="width: 100%; color: black; font-style: italic">
                        <tr>
                            <td width="50%">Country</td>
                            <td>${billingInfo?.country}</td>
                        </tr>
                        <tr>
                            <td>Address 1</td>
                            <td>${billingInfo?.address1}</td>
                        </tr>
                        <tr>
                            <td>Address 2</td>
                            <td>${billingInfo?.address2}</td>

                        </tr>
                        <tr>
                            <td>City</td>
                            <td>${billingInfo?.city}</td>

                        </tr>
                        <tr>
                            <td>State/Province</td>
                            <td>${billingInfo?.stateProvince} Postal Code ${billingInfo?.postalCode}</td>

                        </tr>

                    </table>

                    <div style="margin-bottom: 15px;margin-top: 15px">Payment Method</div>

                    <table style="width: 100%; color: black; font-style: italic">
                        <tr>
                            <td width="50%">First Name</td>
                            <td>${paymentMethod?.firstName}</td>

                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td>${paymentMethod?.lastName}</td>

                        </tr>
                        <tr>
                            %{--CC NUMBER--}%
                            <td>Creadit Card Number</td>
                            <td>${paymentMethod?.creaditCardNumber}</td>

                        </tr>
                        <tr>
                            %{--VCC--}%
                            <td>Security Code</td>
                            <td>${paymentMethod?.securityCode}</td>

                        </tr>
                        <tr>
                            <td>Expire Date</td>
                            <td>${paymentMethod?.expiredDate}</td>

                        </tr>

                    </table>

                    <div style=" margin-top: 30px">

                        <div class="text-right">
                            <button class="myButton" onclick="changeInfo()">Change Info</button>
                            %{--</g:submitButton>--}%
                        </div>

                    </div>
                </div>

                <div id="no_info" style="display: none">
                    <div style="margin-bottom: 15px">Billing address</div>
                    <g:form controller="billing" action="saveBillingPayment">
                        <input class="form-control" type="text" name="item_id" value="${imageFile?.id}"
                               style="display: none"/>
                        <input class="form-control" type="text" name="user_id" value="${userObject?.id}"
                               style="display: none"/>
                        <table style="width: 100%; color: black; font-style: italic">
                            <colgroup>
                                <col style="width: 40%"/>
                                <col style="width: 40%"/>
                                <col style="width: 18%"/>
                                <col style="width: 2%"/>
                            </colgroup>

                            <tr>
                                <td>Country</td>
                                <td colspan="2"><input class="form-control" type="text" name="country"
                                                       value="${billingInfo?.country}" required/></td>
                                <td style="color: red">*</td>
                            </tr>
                            <tr>
                                <td>Address 1</td>
                                <td colspan="2"><input class="form-control" type="text" name="address_1"
                                                       value="${billingInfo?.address1}"/></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Address 2</td>
                                <td colspan="2"><input class="form-control" type="text" name="address_2"
                                                       value="${billingInfo?.address2}" required/></td>
                                <td style="color: red">*</td>
                            </tr>
                            <tr>
                                <td>City</td>
                                <td colspan="2"><input class="form-control" type="text" name="city"
                                                       value="${billingInfo?.city}"/></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>State/Province</td>
                                <td><input class="form-control" type="text" name="state"
                                           value="${billingInfo?.stateProvince}"/></td>
                                <td><input class="form-control" type="text" name="postal_code"
                                           value="${billingInfo?.postalCode}"/></td>
                                <td></td>
                            </tr>

                        </table>

                        <div style="margin-bottom: 15px;margin-top: 15px">Payment Method</div>


                        <table style="width: 100%; color: black; font-style: italic">
                            <colgroup>
                                <col style="width: 40%"/>
                                <col style="width: 40%"/>
                                <col style="width: 18%"/>
                                <col style="width: 2%"/>
                            </colgroup>

                            <tr>
                                <td>First Name</td>
                                <td colspan="2"><input class="form-control" type="text" name="first_name"
                                                       value="${paymentMethod?.firstName}" required/></td>
                                <td style="color: red">*</td>
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td colspan="2"><input class="form-control" type="text" name="last_name"
                                                       value="${paymentMethod?.lastName}" required/></td>
                                <td style="color: red">*</td>
                            </tr>
                            <tr>
                                <td>Creadit Card Number</td>
                                <td colspan="2"><input class="form-control" type="text" name="cc_number"
                                                       value="${paymentMethod?.creaditCardNumber}" required/></td>
                                <td style="color: red">*</td>
                            </tr>
                            <tr>
                                <td>Security Code</td>
                                <td colspan="2"><input class="form-control" type="number" name="mvcs"
                                                       value="${paymentMethod?.securityCode}" required/></td>
                                <td style="color: red">*</td>
                            </tr>
                            <tr>
                                <td>Expire Date</td>
                                <td><input class="form-control" type="text" name="month"
                                           value="${paymentMethod?.expiredDate?.split('/')[0]}" required/></td>
                                <td><input class="form-control" type="text" name="year"
                                           value="${paymentMethod?.expiredDate?.split('/')[1]}" required/></td>
                                <td style="color: red">*</td>
                            </tr>

                        </table>


                        <div style="color: #c90000; font-style: italic; margin-top: 15px; margin-bottom: 15px">") required field</div>

                        <div style="color: black;font-style: italic;  margin-top: 15px; margin-bottom: 15px">I agree with term and condition
                            <input id="check_agree" type="checkbox" name="agree" required>
                            <a target="_blank" href="${createLink(controller: 'home', action: 'tos')}">
                                <b>read here</b>
                            </a>
                        </div>

                        <div>

                            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                Submit your billing informastion including payment method before completing checkout
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <div class="text-right">
                                <g:submitButton name="submit" class="myButton" title="Submit"/>
                                %{--</g:submitButton>--}%
                            </div>

                        </div>
                    </g:form>
                </div>
            </div>
        </div>

        <div id="test">

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
                        <div class="col-md-12">
                            <b>Billing no. : ${billing?.invoiceNumber}</b><br/>
                            Created at : <g:formatDate format="yyyy-MM-dd" date="${billing?.invoicedAt}"/><br/>
                            Status : ${billing.status}
                            <hr/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5">
                            <div class="white-box" style="margin: 0px; padding: 0px">
                                <div>
                                    <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)?.id)}"
                                         alt="" width="100%">
                                </div>

                                <div style="text-align: center">
                                    <u>ID ${itemInstance?.id}.${imageFile?.id}</u>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-7" style="text-align: left">
                            <div style="background: #d00006; color: white;text-align: center;padding: 5px;margin-bottom: 10px;">
                                ${itemInstance?.name}
                            </div>

                            <div style="margin-top: 8px">
                                <a href="#"
                                   style="font-size: 24px; color:  white; background-color:   #c90000; border: 3px; border-color: #c90000;border-style: solid; border-width: 1.5px; margin-right: 5px">&nbsp;${imageFile?.groupSize?.groupLabel}&nbsp;</a>
                            </div>

                            <div style="margin-top: 8px">${itemInstance?.description}</div>

                            <div style="margin-top: 8px">${imageFile?.width} x ${imageFile?.height} ${imageFile?.tipeFile}</div>
                        </div>
                    </div>

                </div>

                <div style="border-top: solid 1px gray; color: black; padding-left: 5px;padding-right: 5px; padding-top: 30px; padding-bottom: 30px">

                    <div class="row">
                        <div class="col-md-6">
                            <b>1 IMAGE</b>
                        </div>

                        <div class="col-md-6"
                             style="text-align: right"><b>${imageFile?.groupSize?.price} IDR</b></div>
                    </div>

                </div>


                <div style="border-top: solid 1px gray; padding: 5px">
                    <div class="row">
                        <div class="col-md-6"><b>TOTAL AMOUNT</b></div>

                        <div class="col-md-6"
                             style="text-align: right"><b>${imageFile?.groupSize?.price * 1} IDR</b></div>
                    </div>

                </div>

                <div style="border-top: solid 1px gray; padding-left: 5px; padding-right: 5px; padding-top: 15px">
                    <g:if test="${billingInfo}">
                        <div>
                            <div class="row">
                                <div class="col-md-6"
                                     style="color: black; text-align: right"><b>Do you have coupon code</b>
                                </div>

                                <div class="col-md-6" style="text-align: right">
                                    <input class="form-control" type="text"/>
                                </div>
                            </div>
                        </div>

                        <div style="margin-top: 15px; text-align: right">
                            <img id="loading" src="${resource(dir: 'images/loading', file: 'loading_indicator.gif')}" style="height: 30px; width: 30px; margin-right: 20px; display: none;"/>
                            <g:if test="${params.chart_id}">
                                <button class="myButton"
                                        onclick="pay_chart_id(${params.chart_id}, ${imageFile?.id}, ${userObject?.id}, ${paymentMethod?.id}, ${imageFile?.groupSize?.price})">COMPLETE CHECKOUT</button>
                            </g:if>
                            <g:else>
                                <button class="myButton"
                                        onclick="purchase(${imageFile?.id}, ${userObject?.id}, ${paymentMethod?.id}, ${imageFile?.groupSize?.price}, ${billing?.id})">COMPLETE CHECKOUT</button>
                            </g:else>

                        </div>
                    </g:if>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
<!-- Modal -->
<div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Notice</h5>
                %{--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--}%
                %{--<span aria-hidden="true">&times;</span>--}%
                %{--</button>--}%
            </div>

            <div class="modal-body">
                <div id="modal_content">

                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" onclick="toPurchaseHistory()"
                        data-dismiss="modal">OK</button>
                %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        var has_info = document.getElementById("has_info");
        var no_info = document.getElementById("no_info");
        var billingInfo = ${billingInfo?.id}
            console.log(billingInfo);
        if (billingInfo !== undefined) {
            has_info.style.display = "block";
        } else {
            no_info.style.display = "block";
        }

    });

    function changeInfo() {
        var has_info = document.getElementById("has_info");
        var no_info = document.getElementById("no_info");
        no_info.style.display = "block";
        has_info.style.display = "none";
    }

    function purchase(image_id, user_id, payment_id, amount, billingId) {
        %{--console.log("Billing id ${billing?.id}")--}%
        var loadingAnim = document.getElementById("loading");
        loadingAnim.style.display = "inline";
        var URL = "${createLink(controller: 'api', action: 'purchase')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                image_id: image_id,
                user_id: user_id,
                payment_id: payment_id,
                total_amount: amount,
                billing_id: billingId,
            },
            success: function (resp) {
                console.log(resp);
                var content = document.getElementById('modal_content');
                content.innerHTML = 'Thanks for purchasing Picsell image, your download link send to your email, it will expired after 7 days long';
//                        '<br/><a href="' + resp.url + '">Image Link</a>';
                loadingAnim.style.display = "none";
                $('#infoModal').modal('toggle')


            }
        });
    }

    function toPurchaseHistory() {
        window.location =
            "${createLink(controller: 'purchaseHistory', action: 'index', id: userObject?.id)}";
    }

    function pay_chart_id(chart_id, image_id, user_id, payment_id, amount) {
        var URL = "${createLink(controller: 'api', action: 'chart_staus_paid')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                chart_id: chart_id
            },
            success: function (resp) {
                purchase(image_id, user_id, payment_id, amount, ${billing?.id});
                %{--console.log(resp);--}%
                %{--window.location =--}%
                %{--"${createLink(controller: 'home', action: 'mychart')}";--}%
            }
        });
    }
</script>

</body>

</html>