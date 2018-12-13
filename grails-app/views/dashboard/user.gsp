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
    <style type="text/css">
    img.profile-pic {
        height: 100px;
        width: 100px;
    }

    .button-change {
        margin-top: 10px;
        margin-bottom: 50px;
        width: 100px;
        align: center;

    }
    </style>

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
                    <div style="margin: 5px"><a href="${createLink(controller: 'dashboard', action: 'user')}"
                                                class="myButton"
                                                style="text-align: left;width: 100%">Profile</a></div>

                    <div style="margin: 5px"><a href="${createLink(controller: 'dashboard', action: 'user_plans')}"
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
                        <a href="${createLink(controller: 'dashboard', action: 'preferences')}"
                           class="myButtonGrey"
                           style="text-align: left;width: 100%">Preferences</a></div>

                    <div style="margin: 5px">
                        <a href="${createLink(action: 'upgrade_to_cotributor')}"
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
                                    <div class="sub-part1" style="margin-bottom: 20px">Profile</div>


                                    <div id="info">

                                    </div>

                                    <div class="row">
                                        <div class="col-sm-3 text-center">
                                            <div style="margin-bottom: 10px">
                                            %{--<a href="${createLink(controller: 'profileUser', action: '')}">--}%
                                                <g:set var="profilePicture"
                                                       value="${com.picsell.data.ImageFile.findByTableNameAndTableId("User", userObject?.id)}"></g:set>

                                                <g:if test="${profilePicture}">
                                                    <img class="profile-pic"
                                                         src="${createLink(controller: 'image', action: 'download', id: profilePicture?.id)}"
                                                         alt="">
                                                </g:if>
                                                <g:else>
                                                    <img class="profile-pic"
                                                         src="${resource(dir: 'images', file: 'profile_dmy.png')}"
                                                         alt="">
                                                </g:else>

                                            %{--</a>--}%

                                            %{--<div class="button-change">--}%

                                            %{--</div>--}%
                                            </div>
                                            <button type="button"
                                                    style="width: 70%; margin-left: 25px; margin-right: 25px"
                                                    class="myButtonGrey"
                                                    data-toggle="modal"
                                                    data-target="#change_profile_picture_modal">
                                                Change
                                            </button>
                                        </div>

                                        <div class="col-sm-9">
                                            <g:set var="profile"
                                                   value="${com.picsell.data.ProfileUser.findByUser(userObject)}"/>
                                            <table class="table table-striped">
                                                <tr>
                                                    <td>User ID</td>
                                                    <td>:</td>
                                                    <td>${userObject?.id}</td>
                                                </tr>
                                                <tr>
                                                    <td>Username</td>
                                                    <td>:</td>
                                                    <td>${userObject?.username}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">
                                                        <button
                                                                class="myButton"
                                                                onclick="showChangePasswordModal()">Change password</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Email</td>
                                                    <td>:</td>
                                                    <td>${userObject?.email}</td>
                                                </tr>
                                                <tr>
                                                    <td>First Name</td>
                                                    <td>:</td>
                                                    <td>${userObject?.firstName}</td>
                                                </tr>

                                                <tr>
                                                    <td>Last Name</td>
                                                    <td>:</td>
                                                    <td>${userObject?.lastName}</td>
                                                </tr>
                                                <tr>
                                                    <td>Address</td>
                                                    <td>:</td>
                                                    <td>${(userObject?.alamat ?: "") + " " + (userObject?.kotaKabupaten ?: "") + " " + (userObject?.provinsi ?: "")}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">
                                                        <button
                                                                class="myButton"
                                                                onclick="updateProfileModal()">Update profile</button>
                                                        %{--<g:if test="${profile}">--}%
                                                        %{--<a--}%
                                                        %{--href="${createLink(controller: 'profileUser', action: 'profile', id: profile?.id)}"--}%
                                                        %{--class="btn btn-sm btn-danger">Update profile</a>--}%
                                                        %{--</g:if>--}%
                                                        %{--<g:else>--}%
                                                        %{--<a--}%
                                                        %{--href="${createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id])}"--}%
                                                        %{--class="btn btn-sm btn-danger">Update profile</a>--}%
                                                        %{--</g:else>--}%

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
</div>

<!-- Modal -->
<g:render template="change_password_modal"/>
<g:render template="warning_modal"/>
<g:render template="update_profile_modal"/>
<g:render template="change_profile_picture_modal"/>

<script>
    function showChangePasswordModal() {
        $('#change_password_modal').modal('toggle');
    }
    function updateProfileModal() {
        $('#update_profile_modal').modal('toggle');
    }
    function updatePassword() {
        var url = "${createLink(controller: 'home', action:'changePassword', id: userObject?.id)}"
        var oldPassword = document.getElementById('password-existing');
        var pwdNew = document.getElementById('pwd-new');
        var reTypePassword = document.getElementById('pwd-new-retype');
        if (oldPassword === '' || pwdNew === '' || reTypePassword === '') {
            document.getElementById('submitPassword').click();
            $.ajax({
                url: url, success: function (result) {
                    $("#div1").html(result);
                }
            });
        } else {
            if (pwdNew === reTypePassword) {
                document.getElementById('submitPassword').click();
            } else {
                var infoWarning = document.getElementById('infoWarning');
                infoWarning.innerHTML = "New password and Re-type password not match"
            }
        }

    }
</script>
</body>
</html>