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
        <h3 class="sub-part1" style="margin-top: 50px">SUBSCRIBE SUMMARY</h3>
    </div>


    <div class="row">
        <div class="col-md-6">
            <div class="gray-box" style="margin-bottom: 30px; padding: 15px;">
                <g:if test="${billingInfo}">
                    <div id="have-billing">
                        <g:render template="billing_info"/>
                    </div>

                    <div id="no-billing" style="display: none">
                        <g:render template="update_billing_info_form"/>
                    </div>
                </g:if>
                <g:else>
                    <div id="no-billing">
                        <g:render template="add_billing_info_form"/>
                    </div>

                </g:else>

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

                        <div class="col-md-12" style="text-align: left">
                            <div style="background: #d00006; color: white;text-align: center;padding: 5px;margin-bottom: 10px;">
                                Package Subscribe
                            </div>

                            <div id="package_detail">

                            </div>

                        </div>
                    </div>

                </div>

                <div style="border-top: solid 1px gray; color: black; padding-left: 5px;padding-right: 5px; padding-top: 30px; padding-bottom: 30px">
                    <div class="row">
                        <div class="col-md-6"><b>1 Subscribtion</b></div>

                        <div class="col-md-6" style="text-align: right"><b><div id="total_summary"></div></b></div>
                    </div>

                </div>


                <div style="border-top: solid 1px gray; padding: 5px">
                    <div class="row">
                        <div class="col-md-6"><b>TOTAL AMOUNT</b></div>

                        <div class="col-md-6" style="text-align: right"><b><div id="total_amount"></div></b></div>
                    </div>

                </div>

                <div style="border-top: solid 1px gray; padding-left: 5px; padding-right: 5px; padding-top: 15px">
                    <div>
                        <div class="row">
                            %{--<div class="col-md-6" style="color: black; text-align: right"><b>Do you have coupon code</b>--}%
                            %{--</div>--}%

                            %{--<div class="col-md-6" style="text-align: right">--}%
                            %{--<input class="form-control" type="text"/>--}%
                            %{--</div>--}%
                        </div>
                    </div>

                    <div style="margin-top: 40px; text-align: right">
                        <button class="btn btn-sm btn-danger" onclick="buyPacakge()">COMPLETE CHECKOUT</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>


<!-- Modal -->
<div class="modal fade" id="warningModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Attention</h5>
                %{--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--}%
                %{--<span aria-hidden="true">&times;</span>--}%
                %{--</button>--}%
            </div>

            <div class="modal-body">
                You have to agree our term of service
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">OK</button>
                %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
            </div>
        </div>
    </div>
</div>



<!-- /.container -->
<script>

    function checkAgrrement() {
        console.log('saya disini');
        var agree = document.getElementById('agree');
        var submit = document.getElementById('submit_info');
        if (agree.checked) {
            submit.click();
        } else {
            $('#warningModal').modal('toggle');
        }
    }

    function getPackage() {
        var URL = "${createLink(controller: 'api', action: 'get_account')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                package_id: '${params.package_id}'
            },
            success: function (resp) {
//                console.log(resp);
                var package_detail = document.getElementById('package_detail');
                var total_summary = document.getElementById('total_summary');
                var total_amount = document.getElementById('total_amount');
                package_detail.innerHTML =
                        '<div style="margin-top: 8px">Price : ' + formatCurrency(resp.price) + ' ' + resp.inCurrency + '</div>' +
                        '<div style="margin-top: 8px">Type' + ' : ' + resp.lisence + '</div>' +
                        '<div style="margin-top: 8px">Max Images' + ' : ' + resp.maxImages + '</div>' +
                        '<div style="margin-top: 8px">Max Users' + ' : ' + resp.maxTeamUser + '</div>';

                total_summary.innerHTML = formatCurrency(resp.price) + ' ' + resp.inCurrency;
                total_amount.innerHTML = formatCurrency(resp.price) + ' ' + resp.inCurrency;
            }
        });
    }

    $(document).ready(function () {
        getPackage();
    });

    function formatCurrency(num) {
        num = num.toString().replace(/\$|\,/g, '');
        if (isNaN(num)) {
            num = "0";
        }

        sign = (num == (num = Math.abs(num)));
        num = Math.floor(num * 100 + 0.50000000001);
        cents = num % 100;
        num = Math.floor(num / 100).toString();

        if (cents < 10) {
            cents = "0" + cents;
        }
        for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++) {
            num = num.substring(0, num.length - (4 * i + 3)) + '.' + num.substring(num.length - (4 * i + 3));
        }

//        return (((sign) ? '' : '-') + '$' + num + '.' + cents);
        return num;
    }


    function changeInfo() {
        var billingInfo = document.getElementById("have-billing");
        var billingForm = document.getElementById("no-billing");
        billingInfo.style.display = "none";
        billingForm.style.display = "block";
    }

    function buyPacakge() {

        var URL = "${createLink(controller: 'api', action: 'save_user_pack_acc')}";
        $.ajax({
            type: "POST",
            url: URL,
            data: {
                package_id: '${params.package_id}',
                user_id: '${params.user_id}'
            },
            success: function (resp) {
                console.log(resp);
                window.location = '${createLink(controller: 'home', action: 'index')}';
            }
        });
    }
</script>
</body>

</html>