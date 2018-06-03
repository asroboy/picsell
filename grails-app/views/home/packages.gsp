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
    %{--<g:set var="userAccounts" value="${com.picsell.data.UserAccount.findAllByUser(userObject)}"/>--}%

    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">

</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="label-red">
                <b>Package & Pricing</b>
            </div>
            <b>Get images you need with special packages for individual or companies</b>

            <div class="row">
                <div class="col-md-6" style="padding: 0px; margin-top: 15px">
                    <div class="panel panel-default table-plans">
                        <div class="panel-heading header-table-plans" style="margin-top: 20px; margin-bottom: 20px">
                            <b>Individual Package</b>
                        </div>

                        <div class="panel-body body-table-plans">
                            <table id="table_individual" style="width: 100%;" cellpadding="5px">
                                <col width="130">
                                <col width="80">
                                <tr style="background: white;">
                                    <td align="justify">
                                        <b>
                                            Images
                                            <span><select style="margin-left: 40px;">
                                                <option value="annually">Annually</option>
                                                <option value="monthly">Monthly</option>
                                            </select>
                                            </span>
                                        </b>
                                    </td>
                                    <td align="right">
                                        <b>
                                            Price
                                            <span><select style="margin-left: 40px">
                                                <option value="idr">IDR</option>
                                                %{--<option value="saab">USD</option>--}%
                                            </select>
                                            </span>
                                        </b>
                                    </td>

                                </tr>

                            </table>
                            <sec:ifLoggedIn>
                                <button class="btn btn-sm btn-default btn-block"
                                        style="background-color: #d00006; color: white; width: 100px; margin-top: 15px"
                                        onclick="subscribe(getPackageValue('individual_subs'))">Subscribe</button>
                            </sec:ifLoggedIn>
                            <sec:ifNotLoggedIn>
                                <button class="btn btn-sm btn-default btn-block"
                                        style="background-color: #d00006; color: white; width: 100px; margin-top: 15px"
                                        onclick="register()">Subscribe</button>
                            </sec:ifNotLoggedIn>

                        </div>
                    </div>
                    %{--<div style=" background-color: #e4e4e4; margin-top: 15px">--}%
                    <div class="panel panel-default table-plans"
                         style="margin-top: 10px; margin-bottom: 20px;">
                        <div class="panel-heading header-table-plans">
                            <b>Company / Multiple User Package</b>
                        </div>

                        <div class="box-body body-table-plans">
                            <div class="panel-body">
                                <table id="table_multi" style="width: 100%; padding-bottom: 10px"
                                       cellpadding="5px">
                                    <col width="130">
                                    <col width="80">
                                    <tr style="background: white">
                                        <td><b>Images <span><select style="margin-left: 40px;">
                                            <option value="annually">Annually</option>
                                            <option value="monthly">Monthly</option>
                                        </select>
                                        </span></b></td>
                                        <td align="right"><b>Price  <span><select style="margin-left: 40px">
                                            <option value="idr">IDR</option>
                                            %{--<option value="saab">USD</option>--}%
                                        </select>
                                        </span></b></td>
                                    </tr>

                                </table>

                                <sec:ifLoggedIn>
                                    <button class="btn btn-sm btn-default btn-block"
                                            style="background-color: #d00006; color: white; width: 100px; margin-top: 15px"
                                            onclick="subscribe(getPackageValue('multiple_sub'))">Subscribe</button>
                                </sec:ifLoggedIn>
                                <sec:ifNotLoggedIn>
                                    <button class="btn btn-sm btn-default btn-block"
                                            style="background-color: #d00006; color: white; width: 100px; margin-top: 15px"
                                            onclick="register()">Subscribe</button>
                                </sec:ifNotLoggedIn>

                            </div>
                        </div>
                    </div>
                    %{--</div>--}%

                </div>

                <div class="col-md-6 right-option">
                    <b>STILL CAN'T FIND THE BEST PLAN FOR YOUR NEEDS?</b>
                    <br/><b>PLEASE CONTACT US
                    <table style="margin-top: 20px;" cellpadding="5">
                        <col width="250">
                        <col width="100">
                        <tr>
                            <td>EMAIL : <br/>cs@picsell.id</td>
                            <td><img src="${resource(dir: 'images', file: 'ic-email.png')}"
                                     style="width: 30px; height: 25px"/></td>
                        </tr>
                        <tr>
                            <td>LIVE CHAT : <br/>(+62)8567228886</td>
                            <td><img src="${resource(dir: 'images', file: 'ic-live-chat.png')}"
                                     style="width: 30px; height: 25px"/></td>
                        </tr>
                        <tr>
                            <td>FAQ <br/>View requently asked questions</td>
                            <td><img src="${resource(dir: 'images', file: 'ic-ask.png')}"
                                     style="width: 25px; height: 25px"/></td>
                        </tr>
                    </table>
                </b>
                </div>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div style="margin-bottom: 20px; margin-top: 20px">
                <div class="sub-part1">
                    <b>NEED ON DEMAND IMAGE OR PLANS FOR YOUR COSTUMIZE COMPANY OR YOUR BUSINESS?</b>
                </div>

                <div>
                    <i>We always want to make sure your projects completed with best result. Our on demand image or plans feature will helps you to get it done wiith secure and measurable results. By using our demands image and plans, you will get more benefit, such as:</i>
                </div>

                <div style="margin-top: 20px">
                    <table style="width: 100%;">
                        <tr style="background-color: #e4e4e4;">
                            <td class="plans-table-left">
                                <div class="plans"><b>CUSTOMIZED IMAGE BRIEFS</b></div></td>
                            <td class="plans-table-middle">
                                <div class="plans"><b>LONGER IMAGE LICENSING</b></div></td>
                            <td class="plans-table-middle">
                                <div class="plans-small-font"><b>NO OTHER ORGANIZATION / COMPANY HAS THE SAME IMAGES</b>
                                </div></td>
                            <td class="plans-table-right">
                                <div class="plans-small-font"><b>UNLOCK POSSIBILITIES FOR ALL SPECIAL FEATURE</b></div>
                            </td>
                        </tr>
                        <tr style="background-color: #e4e4e4;">
                            <td class="plans-table-left"><div class="plans"><b>24 HOURS OF SERVICES FOR YOUR NEEDS</b>
                            </div></td>
                            <td class="plans-table-middle"><div class="plans"><b>SPECIAL RATES</b></div></td>
                            <td class="plans-table-middle"><div class="plans"><b>SPECIAL BANNER IN OUR WEBSITE</b></div>
                            </td>
                            <td class="plans-table-end"><div class="plans-end"><b>GET IN TOUCH WITH US NOW</b></div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div style="font-size: 14pt; color: #d00006; text-align: center; margin-bottom: 20px; background-image: url(${resource(dir: 'images', file: 'bg-more-1.jpg')});   background-repeat: no-repeat;
            background-size: 100% 100%;">
                <b>STILL CAN'T FIND THE BEST PLANS FOR YOUR NEEDS? PLEASE CONTACT US</b>
            </div>

            <div style="margin-bottom: 30px; text-align: center;">
                <b><img src="${resource(dir: 'images', file: 'ic-email.png')}"
                        style="width: 30px; height: 25px"/> EMAIL :cs.picsell.id &nbsp;&nbsp;
                    <img src="${resource(dir: 'images', file: 'ic-live-chat.png')}"
                         style="width: 30px; height: 25px"/> LIVE CHAT :(021)8567228886 &nbsp;&nbsp;
                    <img src="${resource(dir: 'images', file: 'ic-ask.png')}"
                         style="width: 25px; height: 25px"/> FAQ :View Frequestly Asked Questions</b>
            </div>
        </div>
    </div>
</div>

<script>
    function getIndividualPackage() {
        var URL = "${createLink(controller: 'api', action: 'get_subs_account')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                type: 'Individual',
                currency: 'IDR',
                license: 'Annually'
            },
            success: function (resp) {
                var table_individual = document.getElementById('table_individual');
                var i;
                for (i = 0; i < resp.length; i++) {
                    var size = table_individual.rows.length;
                    console.log(resp.price);
                    var row = table_individual.insertRow(size);
                    var cell1 = row.insertCell(0);
                    var cell2 = row.insertCell(1);
                    cell2.align = "right";
                    cell1.innerHTML = '<input type="radio" name="individual_subs" value="' + resp[i].id + '"/> &nbsp;' + resp[i].maxImages + ' Images';
                    cell2.innerHTML = formatCurrency(resp[i].price) + ' ' + resp[i].inCurrency;
                }
            }
        });
    }

    function getMultiPackage() {
        var URL = "${createLink(controller: 'api', action: 'get_subs_account')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                type: 'Team',
                currency: 'IDR',
                license: 'Annually'
            },
            success: function (resp) {
                var table_multi = document.getElementById('table_multi');
                var i;
                for (i = 0; i < resp.length; i++) {
                    var size = table_multi.rows.length;
                    console.log(resp.price);
                    var row = table_multi.insertRow(size);
                    var cell1 = row.insertCell(0);
                    var cell2 = row.insertCell(1);
                    cell2.align = "right";
                    cell1.innerHTML = '<input type="radio" name="multiple_sub" value="' + resp[i].id + '"/> &nbsp;' + resp[i].maxTeamUser + ' users';
                    cell2.innerHTML = formatCurrency(resp[i].price) + ' ' + resp[i].inCurrency;
                }
            }
        });
    }


    $(document).ready(function () {
        getIndividualPackage();
        getMultiPackage()
    });


    function subscribe(package_id) {
        window.location = ' ${createLink(controller: 'home', action: 'subscribe_summary')}' + '?package_id=' + package_id + '&user_id=${userObject?.id}';
    }
    function register() {
        window.location = ' ${createLink(controller: 'register', action: 'register')}';
    }
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


    function getPackageValue(id) {
        var radios = document.getElementsByName(id);
        var value;
        for (var i = 0, length = radios.length; i < length; i++)
        {
            if (radios[i].checked)
            {
                // do whatever you want with the checked radio
                value = radios[i].value
                // only one radio can be logically checked, don't check the rest
                break;
            }
        }

        return value;
    }

</script>
</body>

</html>