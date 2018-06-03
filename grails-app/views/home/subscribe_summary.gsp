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
        <h3 class="sub-part1" style="margin-top: 50px">SUBSCRIBE SUMMARY</h3>
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
                        <button class="button-dark-red" onclick="buyPacakge()">COMPLETE CHECKOUT</button>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- /.row -->

</div>
<!-- /.container -->
<script>
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