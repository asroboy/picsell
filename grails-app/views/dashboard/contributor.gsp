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
                    <a class="nav-link" href="#">Portofolio</a>
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
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-4 text-center">
                                        <div style="margin-bottom: 10px">
                                            <g:set var="profilePicture"
                                                   value="${com.picsell.data.ImageFile.findByTableNameAndTableId("User", userObject?.id)}"></g:set>
                                            <g:if test="${profilePicture}">
                                                <img class="profile-pic"
                                                     src="${createLink(controller: 'image', action: 'download', id: profilePicture?.id)}"
                                                     alt="" style="height: 80px; width: 80px">
                                            </g:if>
                                            <g:else>
                                                <img class="profile-pic"
                                                     src="${resource(dir: 'images', file: 'profile_dmy.png')}"
                                                     alt="" style="height: 80px; width: 80px">
                                            </g:else>
                                        </div>

                                        <div>
                                            <i>${userObject?.username}.</i>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <h6>Profile strength</h6>

                                        <div class="progress">
                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 25%;"
                                                 aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-5 text-center">
                                        <div style="margin-bottom: 15px">Unpaid Earning</div>
                                        <h6 class="linkred"><strong>IDR 500.000</strong></h6>
                                        <a href="#" class="myButton" style="font-size: 12px">Claim now!</a>
                                    </div>

                                    <div class="col-sm-7">
                                        You have some amount that can be claimed to <strong>Picsell.ID</strong>. Click on claim now and get your values
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="sub-part1" style="margin-bottom: 15px">Earning Summary</div>

                                        <div style="margin-bottom: 0px"><b>IDR 1000.000</b></div>

                                        <div style="margin-bottom: 15px"><b>Total Earning</b></div>

                                        <div style="margin-bottom: 0px"><b>5245</b></div>

                                        <div style="margin-bottom: 15px"><b>Total Download</b></div>

                                        <a href="#" class="linkred">View Detailed Report</a>
                                    </div>

                                    <div class="col-sm-6">
                                        <div style="margin-bottom: 15px">Earning Types</div>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                Chart Sales
                                            </div>

                                            <div class="col-sm-8 align-self-center">
                                                <div class="progress " style="height: 3px;">
                                                    <div class="progress-bar bg-danger" role="progressbar"
                                                         style="width: 35%;"
                                                         aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                Image Packs
                                            </div>

                                            <div class="col-sm-8 align-self-center">
                                                <div class="progress" style="height: 3px;">
                                                    <div class="progress-bar bg-danger" role="progressbar"
                                                         style="width: 45%;"
                                                         aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                Enhanced
                                            </div>

                                            <div class="col-sm-8 align-self-center">
                                                <div class="progress" style="height: 3px;">
                                                    <div class="progress-bar bg-danger" role="progressbar"
                                                         style="width: 50%;"
                                                         aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                On Demand
                                            </div>

                                            <div class="col-sm-8 align-self-center">
                                                <div class="progress" style="height: 3px;">
                                                    <div class="progress-bar bg-danger" role="progressbar"
                                                         style="width: 35%;"
                                                         aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                Refferal
                                            </div>

                                            <div class="col-sm-8 align-self-center">
                                                <div class="progress" style="height: 3px;">
                                                    <div class="progress-bar bg-danger" role="progressbar"
                                                         style="width: 43%;"
                                                         aria-valuenow="43" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px;  margin-bottom: 20px">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="sub-part1" style="margin-bottom: 15px">Monthly Earning</div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="sub-part1" style="margin-bottom: 15px">Latest Download</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px;  margin-bottom: 20px">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="sub-part1" style="margin-bottom: 15px">Sets</div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="sub-part1" style="margin-bottom: 15px">Top 5 Performer</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>