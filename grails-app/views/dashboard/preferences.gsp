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
            <div class="my-4 label-red">Your Account</div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h4>This is your account page. Set your preferences and option here</h4>
            <hr/>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="align-middle" style="margin-bottom: 15px">
                <div class="card">
                    <div style="margin: 5px">
                        <a href="${createLink(controller: 'dashboard', action: 'user')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Profile</a></div>

                    <div style="margin: 5px">
                        <a href="${createLink(controller: 'dashboard', action: 'user_plans')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Plans</a></div>

                    <div style="margin: 5px">
                        <a href="${createLink(controller: 'dashboard', action: 'billing_info')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Billing</a></div>

                    <div style="margin: 5px"><a
                            href="${createLink(controller: 'purchaseHistory', action: 'index', id: userObject?.id)}"
                            class="myButtonGrey"
                            style="text-align: left;width: 100%">Purchase History</a></div>

                    <div style="margin: 5px">
                        <a href="${createLink(controller: 'dashboard', action: 'preferences')}" class="myButton"
                           style="text-align: left;width: 100%">Preferences</a></div>

                    <div style="margin: 5px">

                        <a href="${createLink(controller: 'dashboard', action: 'upgrade_to_cotributor')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Become Contributor</a>
                    </div>
                </ul>
                </div>

            </div>

        </div>

        <div class="col-lg-9">

            <div class="container" style="margin-bottom: 80px">
                <div id="wadah">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="sub-part1" style="margin-bottom: 20px">Preferences</div>

                                    <div class="row">
                                        <div class="col-sm-12">

                                        </div>
                                    </div>
                                </div>
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

