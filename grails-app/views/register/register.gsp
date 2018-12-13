<html>
<head>
    %{--${layoutRegister}--}%
    <meta name="layout" content="login"/>
    %{--<meta name="layout" content="register"/>--}%
    %{--<s2ui:title messageCode='spring.security.ui.register.title'/>--}%
    <style>
    .prop td {
    }
    </style>
    <link href="${resource(dir: 'css', file: 'button_red.css')}"
          rel="stylesheet">
</head>

<body>

<div class="container" style="max-width: 700px; margin-bottom: 50px">
    <div class="row">
        <div class="col-md-12">
            <div class="card card-register mx-auto mt-3">
                <div class="card-header bg-white">
                    <div style="text-align: center">
                        <img src="${resource(dir: 'images/logo', file: 'logo_small.png')}"
                             style="height: 40px; width: 40px;"></div>
                </div>

                <div class="card-body" style="background: #efefef">
                    %{--<form>--}%
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <g:if test='${emailSent}'></g:if>
                                <g:else>
                                    <div class="form-group" style="text-align: center;color: #d00006;">
                                        <h5>Get started to get imagination with Picsell.ID</h5>
                                    </div>
                                </g:else>
                                <div style="margin-left: 10%">
                                    <s2ui:formContainer type='register' focus='username' width='100%'>
                                        <s2ui:form beanName='registerCommand'>
                                        %{--<g:if test="${flash.error}">--}%
                                        %{--<div class="message" role="status"--}%
                                        %{--style="margin-bottom: 10px; color: red;">${flash.error}</div>--}%
                                        %{--</g:if>--}%
                                            <g:if test='${emailSent}'>
                                                <br/>

                                                <div class="form-group" style="text-align: center;color: #d00006;">
                                                    <g:message code='spring.security.ui.register.sent'/>
                                                </div>
                                            %{--<br/>--}%

                                            %{--<a href="${activateUrl}">Click here to validate account</a>--}%
                                                <br/>
                                                <br/>
                                            %{--${createLink(controller: 'login', action: 'auth')}--}%

                                                <script>
                                                    function createProfile() {
                                                        var URL = "${createLink(controller: 'api', action: 'createProfile')}";
                                                        $.ajax({
                                                            type: "POST",
                                                            url: URL,
                                                            data: {
                                                                first_name: '${first_name}', last_name: '${last_name}',
                                                                address: '-',
                                                                kecamatan: '-',
                                                                city: '-',
                                                                province: '-',
                                                                nik: '-',
                                                                tempatLahir: '-',
                                                                user_id: '${user_id}',
                                                                tgl_lahir: '${new java.util.Date().getTime()}'
                                                            },
                                                            success: function (resp) {
                                                                console.log("response : " + resp);
                                                                setRoleUser();
                                                            }
                                                        });
                                                    }

                                                    function setRoleUser() {
                                                        var URL = "${createLink(controller: 'api', action: 'setUserRole')}";
                                                        $.ajax({
                                                            type: "POST",
                                                            url: URL,
                                                            data: {
                                                                user_id: '${user_id}',
                                                                role: '${role}'
                                                            },
                                                            success: function (resp) {
                                                                console.log("response : " + resp);

                                                                var cont = document.getElementById('continue');
                                                                cont.style.visibility = 'visible';
                                                            }
                                                        });
                                                    }
                                                </script>
                                                <script>
                                                    createProfile();
                                                </script>

                                                <div id="continue" style="visibility: hidden">
                                                    <a class="btn btn-default nav-link"
                                                       style="background-color: #d00006; color: white; width: auto; margin: 0 auto;"
                                                       href="${activateUrl}">Continue login</a>
                                                    %{--${activateUrl}--}%
                                                </div>

                                            </g:if>
                                            <g:else>
                                            %{--<table>--}%
                                            %{--<tbody>--}%

                                            %{--<tr>--}%
                                            %{--<td><label for="username">Username</label></td>--}%
                                            %{--<td><input type="text" name="username" value="" size="40"--}%
                                            %{--class="form-control" id="username"--}%
                                            %{--style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">--}%
                                            %{--</td>--}%
                                            %{--</tr>--}%

                                                <fieldset>
                                                    <table style="color: black">
                                                        <tr>
                                                            <td align="left"><label for="firstName">First name</label></td>
                                                            <td>
                                                                %{--<s2ui:textFieldRow name='firstName' size='40'--}%
                                                                %{--labelCodeDefault='First Name'--}%
                                                                %{--class="form-control"/>--}%
                                                                %{--${registerCommand?.firstName}--}%
                                                                <input type="text" name="firstName"
                                                                       value="${registerCommand?.firstName}" size="40"
                                                                       class="form-control" id="firstName" required/></td>
                                                            <td valign="top" style="color: red">&nbsp;*</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left"><label for="lastName">Last name</label></td>
                                                            <td>
                                                                %{--<s2ui:textFieldRow name='lastName' size='40'--}%
                                                                %{--labelCodeDefault='Last Name'--}%
                                                                %{--class="form-control"/>--}%
                                                                %{--${registerCommand?.lastName}--}%
                                                                <input type="text" name="lastName"
                                                                       value="${registerCommand?.lastName}" size="40"
                                                                       class="form-control" id="lastName" required/>
                                                            </td>
                                                            <td valign="top" style="color: red">&nbsp;*</td>
                                                        </tr>
                                                        <tr>
                                                            %{--<td align="left"><label for="username">Username</label></td>--}%
                                                            <td>
                                                                %{--<input type="text" name="username" value="" size="40"--}%
                                                                %{--class="form-control" id="username"--}%
                                                                %{--style="background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">--}%
                                                                <s2ui:textFieldRow name='username' size='40'
                                                                                   labelCodeDefault='Username'
                                                                                   class="form-control" required=""/>
                                                            </td>
                                                            %{--<td style="color: red">&nbsp;*</td>--}%
                                                            %{--<td></td>--}%
                                                            %{--<div class="form-group">--}%

                                                            %{--</div>--}%
                                                        </tr>


                                                        <tr>
                                                            %{--<td align="left"><label for="email">E-mail</label></td>--}%
                                                            <td>
                                                                %{--<input type="text" name="email" value="" size="40"--}%
                                                                %{--class="form-control" id="email">--}%
                                                                <s2ui:textFieldRow name='email' size='40'
                                                                                   labelCodeDefault='E-mail'
                                                                                   class="form-control" required=""/>
                                                            </td>
                                                            %{--<td style="color: red">&nbsp;*</td>--}%
                                                            %{--<td style="color: red">&nbsp;*</td>--}%
                                                        </tr>
                                                        %{--<div class="form-group" style="display: none">--}%
                                                        %{--<s2ui:checkboxRow name='accountLocked' checked="false" size='40'--}%
                                                        %{--labelCodeDefault='accountLocked'--}%
                                                        %{--class="form-control"/>--}%
                                                        %{--</div>--}%
                                                        <tr>
                                                            %{--<td align="left"><label for="password">Password</label></td>--}%
                                                            <td>
                                                                %{--
                                                                <input type="password" name="password" id="password"--}%
                                                                %{--value=""--}%
                                                                %{--size="40" class="form-control"--}%
                                                                %{--style="background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">--}%
                                                                <s2ui:passwordFieldRow name='password' size='40'
                                                                                       labelCodeDefault='Password'
                                                                                       class="form-control" required=""/>
                                                            </td>
                                                            %{--<td style="color: red">&nbsp;*</td>--}%
                                                            %{--<td style="color: red">&nbsp;*</td>--}%
                                                            %{--<div class="form-group">--}%

                                                            %{--</div>--}%
                                                        </tr>
                                                        <tr>
                                                            %{--<td align="left"><label--}%
                                                            %{--for="password2">Re-confirm password &nbsp;</label>--}%
                                                            %{--</td>--}%
                                                            <td>
                                                                %{--<input type="password" name="password2" id="password2"--}%
                                                                %{--value=""--}%
                                                                %{--size="40" class="form-control"--}%
                                                                %{--style="background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">--}%
                                                                <s2ui:passwordFieldRow name='password2' size='40'
                                                                                       labelCodeDefault='Retype password&nbsp&nbsp&nbsp&nbsp'
                                                                                       class="form-control" required=""/>
                                                            </td>
                                                            %{--<td style="color: red">&nbsp;*</td>--}%
                                                            %{--<td style="color: red">&nbsp;*</td>--}%
                                                            %{--<div class="form-group" align="left">--}%

                                                            %{--</div>--}%
                                                        </tr>
                                                        <tr>
                                                            <td valign="center" align="left"><label>Select your role</label></td>
                                                            <td valign="top" align="left"><input
                                                                    type="radio" name="role" value="ROLE_USER"
                                                                    checked/> MEMBER <input
                                                                    type="radio" name="role"
                                                                    value="ROLE_CONTRIBUTOR"/> CONTRIBUTOR</td>
                                                            <td valign="top" style="color: red">
                                                                <div data-toggle="popover" data-html="true"
                                                                     data-placement="top" title="Info"
                                                                     data-content="<b>Member</b> is user who can get contents trough Picsell.ID. <br/><br/><b>Contributor</b> is user who can get and provide contents by upload and sell them trough Picsell.id'"
                                                                     style="color: red"><i class="fa fa-info-circle"></i>
                                                                </div>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2"
                                                                align="left">I agree with term and condition <input
                                                                    id="agree" type="checkbox"
                                                                    value=""/> <a
                                                                    href="${createLink(controller: 'home', action: 'tos')}"
                                                                    target="_blank"><b><i><u>read here</u></i></b></a></td>
                                                        </tr>
                                                    </table>
                                                    %{--</tbody>--}%
                                                    %{--</table>--}%
                                                    <table>

                                                    </table>

                                                    <div style="margin-top: 10px; margin-bottom: 5px;">

                                                        <input type="submit"
                                                               value="Sign up"
                                                               id="submit_submit"
                                                               class="btn btn-sm btn-default btn-block"
                                                               style="background-color: red; color: white; width: 100px; margin: 0 auto; display: none"
                                                               hidden/>
                                                    </div>


                                                    %{--<s2ui:submitButton elementId='submit'--}%
                                                    %{--messageCode='spring.security.ui.register.submit'--}%
                                                    %{--hidden=""/>--}%
                                                </fieldset>

                                            </g:else>
                                        </s2ui:form>

                                    </s2ui:formContainer>
                                </div>

                            </div>
                            <g:if test='${emailSent}'></g:if>
                            <g:else>
                                <button class="myButton"
                                        style="background-color: #d00006; color: white; width: 120px; margin: 0 auto; "
                                        onclick="submit()">Sign up</button>
                            </g:else>
                        </div>
                    </div>

                    %{--<a class="btn btn-primary btn-block" href="login.html">Register</a>--}%
                    %{--</form>--}%

                    %{--<div class="text-center">--}%
                    %{--<a class="d-block small mt-3" href="login.html">Login Page</a>--}%
                    %{--<a class="d-block small" href="forgot-password.html">Forgot Password?</a>--}%
                    %{--</div>--}%
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
                You have to agree our term and condition
            </div>

            <div class="modal-footer">
                <button type="button" class="myButton" data-dismiss="modal">OK</button>
                %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
            </div>
        </div>
    </div>
</div>

<script>
    jQuery(function () {
        $('[data-toggle="popover"]').popover()
    });

    jQuery('.popover-dismiss').popover({
        trigger: 'focus'
    });
    function submit() {
        console.log("haloo, im clicked");
        var agree = document.getElementById('agree');
        var submit = document.getElementById('submit_submit');
        if (agree.checked) {
//            console.log("haloo, im checkked");
            submit.click();
        } else {
            $('#warningModal').modal('toggle');
//            alert('You have to agree our term and condition')
//            console.log("haloo, im not checkked");
        }
    }
</script>
</body>
</html>
