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
                    <div style="margin: 5px"><a href="${createLink(controller: 'dashboard', action: 'user')}"
                                                class="myButtonGrey"
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

                        <a href="${createLink(controller: 'dashboard', action: 'upgrade_to_cotributor')}"
                           class="myButton"
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
                                    <div class="sub-part1" style="margin-bottom: 20px">Upgrade Account</div>

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p>By upgrading your account, you will be a Picsell.ID contributor. A contributor can upload photos, images, footages,
                                            and other medias and get values.</p>

                                            <p>
                                            </p>

                                            <div style="margin-top: 80px">
                                                <input type="checkbox"
                                                       name="agreemen"
                                                       id="agreement"/> By clicking Upgrade Now, I'm agree with the Picsell.ID <a
                                                    href="${createLink(controller: 'home', action: 'tos')}"
                                                    target="_blank" style="color: red"><b>Terms and Conditions</b></a>
                                            </div>

                                            <div style="margin-top: 15px">
                                                <button class="myButton"
                                                        onclick="upgradeAcount()">Upgrade Now</button>
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
                You have agree with our Terms and Conditions
            </div>

            <div class="modal-footer">
                <button type="button" class="myButton" data-dismiss="modal">OK</button>
                %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="warningModal_logout" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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
                Your account has beed upgraded to Contibutor, please login again to afffected the changes.
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-danger" onclick="logout()">OK</button>
                %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
            </div>
        </div>
    </div>
</div>
<script>
    function upgradeAcount() {
        var checkbox = document.getElementById('agreement');
        console.log(checkbox.checked);
        if (checkbox.checked) {
            $.post("${createLink(controller: 'dashboard', action: 'upgrade_account', id: userObject?.id)}", function (response) {
//                console.log(response);
                if(response.status === 'ok'){
                    $('#warningModal_logout').modal('toggle');
                }
            });
        } else {
            $('#warningModal').modal('toggle');
        }
    }

    function logout(){
        window.location = '${createLink(controller: 'logout', action: 'index')}';
    }
</script>

</body>
</html>

