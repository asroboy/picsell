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
            <div class="my-4 label-red">Your Accunt</div>
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

                    <div style="margin: 5px"><a href="#" class="btn btn-sm btn-outline-danger"
                                                style="text-align: left;width: 100%">Plans</a></div>

                    <div style="margin: 5px"><a href="#" class="btn btn-sm btn-outline-danger"
                                                style="text-align: left;width: 100%">Billing</a></div>

                    <div style="margin: 5px"><a
                            href="${createLink(controller: 'purchaseHistory', action: 'index', id: userObject?.id)}"
                            class="btn btn-sm btn-outline-danger"
                            style="text-align: left;width: 100%">Purchase History</a></div>

                    <div style="margin: 5px"><a href="#" class="btn btn-sm btn-outline-danger"
                                                style="text-align: left;width: 100%">Preferences</a></div>
                </ul>
                </div>

                %{--<div class="align-middle label-red" style="width: 100%; margin-top: 10px">--}%
                %{--Frequently asked questions--}%
                %{--</div>--}%

                %{--<div class="card">--}%
                %{--<div class="card-body" style="padding-left: 3px; padding-right: 3px">--}%
                %{--<ul>--}%
                %{--<li><a href="#" class="linkred">How do I buy sell images?</a></li>--}%
                %{--<li style="margin-top: 10px"><a href="#" class="linkred">How do I withdraw?</a></li>--}%
                %{--<li style="margin-top: 10px"><a href="#" class="linkred">What banks supported?</a></li>--}%
                %{--<li style="margin-top: 10px"><a href="#" class="linkred">How do I send images?</a></li>--}%
                %{--<li style="margin-top: 10px"><a href="#" class="linkred">How types image supported?</a></li>--}%
                %{--</ul>--}%
                %{--</div>--}%
                %{--</div>--}%
            </div>

        </div>

        <div class="col-lg-9">
            <div class="container" style="margin-bottom: 80px">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="sub-part1" style="margin-bottom: 20px">Profile</div>

                                <div class="row">
                                    <div class="col-sm-3 text-center">
                                        <div style="margin-bottom: 10px">
                                            <g:set var="profilePicture"
                                                   value="${com.picsell.data.ImageFile.findByTableNameAndTableId("ProfileUser", profileUserInstance?.id)}"></g:set>
                                            <g:if test="${profilePicture}">
                                                <img class="profile-pic"
                                                     src="${createLink(controller: 'image', action: 'download', id: profilePicture?.id)}"
                                                     alt="" style="height: 120px; width: 120px">
                                            </g:if>
                                            <g:else>
                                                <img class="profile-pic"
                                                     src="${resource(dir: 'images', file: 'profile_dmy.png')}"
                                                     alt="" style="height: 120px; width: 120px">
                                            </g:else>
                                        </div>
                                    </div>

                                    <div class="col-sm-9">
                                        <g:set var="profile"
                                               value="${com.picsell.data.ProfileUser.findByUser(userObject)}"/>
                                        <table class="table table-striped">
                                            <tr>
                                                <td>User ID</td>
                                                <td>:</td>
                                                <td>${userObject?.id}.</td>
                                            </tr>
                                            <tr>
                                                <td>Username</td>
                                                <td>:</td>
                                                <td>${userObject?.username}.</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"><a href="#"
                                                                   class="btn btn-sm btn-danger">Change password</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Email</td>
                                                <td>:</td>
                                                <td>${userObject?.email}.</td>
                                            </tr>
                                            <tr>
                                                <td>First Name</td>
                                                <td>:</td>
                                                <td>${profile?.namaDepan}</td>
                                            </tr>

                                            <tr>
                                                <td>Last Name</td>
                                                <td>:</td>
                                                <td>${profile?.namaBelakang}</td>
                                            </tr>
                                            <tr>
                                                <td>Address</td>
                                                <td>:</td>
                                                <td>${(profile?.alamat ?: "") + " " + (profile?.kotaKabupaten ?: "") + " " + (profile?.provinsi ?: "")}</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <g:if test="${profile}">
                                                        <a
                                                                href="${createLink(controller: 'profileUser', action: 'profile', id: profile?.id)}"
                                                                class="btn btn-sm btn-danger">Update profile</a>
                                                    </g:if>
                                                    <g:else>
                                                        <a
                                                                href="${createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id])}"
                                                                class="btn btn-sm btn-danger">Update profile</a>
                                                    </g:else>

                                                </td>
                                            </tr>
                                        </table>

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