<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 8/9/2018
  Time: 5:34 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <g:set var="entityName" value="${message(code: 'termOfService.label', default: 'TermOfService')}"/>
    <title>Dashboard</title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">User Dashboard - Contributor</div>
        </div>

        <div class="col-lg-8 align-self-center">
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link active"
                       href="${createLink(controller: 'dashboard', action: 'contributor_earnings', id: userObject?.id)}">Earnings</a>
                </li>
                <li class="nav-item align-self-center">
                    |
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(controller: 'dashboard', action: 'portfolio', id: userObject?.id)}">Portofolio</a>
                </li>
                <li class="nav-item align-self-center">
                    |
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Promotion</a>
                </li>
                <li class="nav-item align-self-center">
                    |
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Insight</a>
                </li>
                <li class="nav-item align-self-center">
                    |
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(controller: 'userItem', action: 'index')}">Upload</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h4>Wellcome to user Dashboard. Here you can monitor all your activities, download, earnings etc.</h4>
            <hr/>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="align-middle" style="margin-bottom: 15px">
                <div class="align-middle label-red" style="width: 100%;">
                    Uploaded Images
                </div>

                <div class="card">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Uploaded : ${com.picsell.data.Item.countByUserOwner(userObject)} images</li>
                        <li class="list-group-item">Approved : ${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "approved")} images</li>
                        <li class="list-group-item">Pending : ${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "pending")} images</li>
                        <li class="list-group-item">Rejected : ${com.picsell.data.Item.countByUserOwnerAndStatus(userObject, "rejected")} images</li>
                    </ul>
                </div>

                <div class="align-middle label-red" style="width: 100%; margin-top: 10px">
                    Frequently asked questions
                </div>

                <div class="card">
                    <div class="card-body" style="padding-left: 3px; padding-right: 3px">
                        <ul>
                            <li><a href="#" class="linkred">How do I buy sell images?</a></li>
                            <li style="margin-top: 10px"><a href="#" class="linkred">How do I withdraw?</a></li>
                            <li style="margin-top: 10px"><a href="#" class="linkred">What banks supported?</a></li>
                            <li style="margin-top: 10px"><a href="#" class="linkred">How do I send images?</a></li>
                            <li style="margin-top: 10px"><a href="#" class="linkred">How types image supported?</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>

        <div class="col-lg-9">

            <div class="card">
                <div class="card-body">
                    <div class="sub-part1" style="margin-bottom: 15px">Your Earnings</div>

                    <div><h4>Total Earning ${userPurchaseItems*.totalAmount.sum()?:0} IDR</h4></div>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <td>Item ID</td>
                            <td>Date</td>
                            <td>Total Amount</td>
                            <td>Image size</td>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${userPurchaseItems}" var="purchasedItem">
                            <tr>
                                <td><a href="${createLink(controller: 'home', action: 'itemDetail', id: purchasedItem?.imageFile?.tableId)}">${purchasedItem?.imageFile?.tableId}.${purchasedItem?.imageFile?.id}</a>
                                </td>
                                <td><g:formatDate format="yyyy-MM-dd"
                                                  date="${purchasedItem?.purchaseDate}"/></td>
                                <td>${purchasedItem?.totalAmount?:0} IDR</td>
                                <td>
                                    ${purchasedItem?.imageFile?.groupSize?.groupLabel}
                                </td>
                            </tr>
                        </g:each>

                        </tbody>
                    </table>

                </div>
            </div>

        </div>
    </div>

</body>
</html>