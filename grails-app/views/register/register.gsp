<html>
<head>
    %{--${layoutRegister}--}%
    <meta name="layout" content="login"/>
    %{--<meta name="layout" content="register"/>--}%
    %{--<s2ui:title messageCode='spring.security.ui.register.title'/>--}%

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

                                <s2ui:formContainer type='register' focus='username' width='100%'>

                                    <s2ui:form beanName='registerCommand'>
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
                                                        <td align="left"><label for="username">First name</label></td>
                                                        <td><input type="text" name="first_name" value="" size="40"
                                                                   class="form-control" id="first_name"/></td>
                                                        <td style="color: red">&nbsp;*</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left"><label for="username">Last name</label></td>
                                                        <td><input type="text" name="last_name" value="" size="40"
                                                                   class="form-control" id="last_name"/></td>
                                                        <td style="color: red">&nbsp;*</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left"><label for="username">Username</label></td>
                                                        <td><input type="text" name="username" value="" size="40"
                                                                   class="form-control" id="username"
                                                                   style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">
                                                        </td>
                                                        <td></td>
                                                        %{--<div class="form-group">--}%
                                                        %{--<s2ui:textFieldRow name='username' size='40'--}%
                                                        %{--labelCodeDefault='Username'--}%
                                                        %{--class="form-control"/>--}%
                                                        %{--</div>--}%
                                                    </tr>


                                                    <tr>
                                                        <td align="left"><label for="email">E-mail</label></td>
                                                        <td><input type="text" name="email" value="" size="40"
                                                                   class="form-control" id="email"></td>
                                                        <td style="color: red">&nbsp;*</td>
                                                        %{--<div class="form-group">--}%
                                                        %{--<s2ui:textFieldRow name='email' size='40'--}%
                                                        %{--labelCodeDefault='E-mail'--}%
                                                        %{--class="form-control"/>--}%
                                                        %{--</div>--}%
                                                    </tr>
                                                    %{--<div class="form-group" style="display: none">--}%
                                                    %{--<s2ui:checkboxRow name='accountLocked' checked="false" size='40'--}%
                                                    %{--labelCodeDefault='accountLocked'--}%
                                                    %{--class="form-control"/>--}%
                                                    %{--</div>--}%
                                                    <tr>
                                                        <td align="left"><label for="password">Password</label></td>
                                                        <td><input type="password" name="password" id="password"
                                                                   value=""
                                                                   size="40" class="form-control"
                                                                   style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACIUlEQVQ4EX2TOYhTURSG87IMihDsjGghBhFBmHFDHLWwSqcikk4RRKJgk0KL7C8bMpWpZtIqNkEUl1ZCgs0wOo0SxiLMDApWlgOPrH7/5b2QkYwX7jvn/uc//zl3edZ4PPbNGvF4fC4ajR5VrNvt/mo0Gr1ZPOtfgWw2e9Lv9+chX7cs64CS4Oxg3o9GI7tUKv0Q5o1dAiTfCgQCLwnOkfQOu+oSLyJ2A783HA7vIPLGxX0TgVwud4HKn0nc7Pf7N6vV6oZHkkX8FPG3uMfgXC0Wi2vCg/poUKGGcagQI3k7k8mcp5slcGswGDwpl8tfwGJg3xB6Dvey8vz6oH4C3iXcFYjbwiDeo1KafafkC3NjK7iL5ESFGQEUF7Sg+ifZdDp9GnMF/KGmfBdT2HCwZ7TwtrBPC7rQaav6Iv48rqZwg+F+p8hOMBj0IbxfMdMBrW5pAVGV/ztINByENkU0t5BIJEKRSOQ3Aj+Z57iFs1R5NK3EQS6HQqF1zmQdzpFWq3W42WwOTAf1er1PF2USFlC+qxMvFAr3HcexWX+QX6lUvsKpkTyPSEXJkw6MQ4S38Ljdbi8rmM/nY+CvgNcQqdH6U/xrYK9t244jZv6ByUOSiDdIfgBZ12U6dHEHu9TpdIr8F0OP692CtzaW/a6y3y0Wx5kbFHvGuXzkgf0xhKnPzA4UTyaTB8Ph8AvcHi3fnsrZ7Wore02YViqVOrRXXPhfqP8j6MYlawoAAAAASUVORK5CYII=&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">
                                                        </td>
                                                        <td style="color: red">&nbsp;*</td>
                                                        %{--<div class="form-group">--}%
                                                        %{--<s2ui:passwordFieldRow name='password' size='40'--}%
                                                        %{--labelCodeDefault='Password'--}%
                                                        %{--class="form-control"/>--}%
                                                        %{--</div>--}%
                                                    </tr>
                                                    <tr>
                                                        <td align="left"><label
                                                                for="password2">Re-confirm password &nbsp;</label>
                                                        </td>
                                                        <td><input type="password" name="password2" id="password2"
                                                                   value=""
                                                                   size="40" class="form-control"
                                                                   style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACIUlEQVQ4EX2TOYhTURSG87IMihDsjGghBhFBmHFDHLWwSqcikk4RRKJgk0KL7C8bMpWpZtIqNkEUl1ZCgs0wOo0SxiLMDApWlgOPrH7/5b2QkYwX7jvn/uc//zl3edZ4PPbNGvF4fC4ajR5VrNvt/mo0Gr1ZPOtfgWw2e9Lv9+chX7cs64CS4Oxg3o9GI7tUKv0Q5o1dAiTfCgQCLwnOkfQOu+oSLyJ2A783HA7vIPLGxX0TgVwud4HKn0nc7Pf7N6vV6oZHkkX8FPG3uMfgXC0Wi2vCg/poUKGGcagQI3k7k8mcp5slcGswGDwpl8tfwGJg3xB6Dvey8vz6oH4C3iXcFYjbwiDeo1KafafkC3NjK7iL5ESFGQEUF7Sg+ifZdDp9GnMF/KGmfBdT2HCwZ7TwtrBPC7rQaav6Iv48rqZwg+F+p8hOMBj0IbxfMdMBrW5pAVGV/ztINByENkU0t5BIJEKRSOQ3Aj+Z57iFs1R5NK3EQS6HQqF1zmQdzpFWq3W42WwOTAf1er1PF2USFlC+qxMvFAr3HcexWX+QX6lUvsKpkTyPSEXJkw6MQ4S38Ljdbi8rmM/nY+CvgNcQqdH6U/xrYK9t244jZv6ByUOSiDdIfgBZ12U6dHEHu9TpdIr8F0OP692CtzaW/a6y3y0Wx5kbFHvGuXzkgf0xhKnPzA4UTyaTB8Ph8AvcHi3fnsrZ7Wore02YViqVOrRXXPhfqP8j6MYlawoAAAAASUVORK5CYII=&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">
                                                        </td>
                                                        <td style="color: red">&nbsp;*</td>
                                                        %{--<div class="form-group" align="left">--}%
                                                        %{--<s2ui:passwordFieldRow name='password2' size='40'--}%
                                                        %{--labelCodeDefault='Re-confirm password'--}%
                                                        %{--class="form-control"/>--}%
                                                        %{--</div>--}%
                                                    </tr>
                                                    <tr>
                                                        <td align="left"><label>Select your role</label></td>
                                                        <td align="left"><input
                                                                type="radio" name="role" value="ROLE_USER"
                                                                checked/> MEMBER <input
                                                                type="radio" name="role"
                                                                value="ROLE_CONTRIBUTOR"/> CONTRIBUTOR</td>
                                                        <td style="color: red"><i class="fa fa-info-circle"></i></td>
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

                                                <div style="margin-top: 10px; margin-bottom: 5px">

                                                    <input type="submit"
                                                           value="Sign up"
                                                           id="submit_submit"
                                                           class="btn btn-sm btn-default btn-block"
                                                           style="background-color: red; color: white; width: 100px; margin: 0 auto; "
                                                           hidden/>
                                                </div>


                                                %{--<s2ui:submitButton elementId='submit' messageCode='spring.security.ui.register.submit' />--}%
                                            </fieldset>

                                        </g:else>
                                    </s2ui:form>

                                </s2ui:formContainer>
                            </div>
                            <g:if test='${emailSent}'></g:if>
                            <g:else>
                                <button class="btn btn-sm btn-default btn-block"
                                        style="background-color: #d00006; color: white; width: 100px; margin: 0 auto; "
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





<script>
    function submit() {
        console.log("haloo, im clicked");
        var agree = document.getElementById('agree');
        var submit = document.getElementById('submit_submit');
        if (agree.checked) {
            console.log("haloo, im checkked");
            submit.click();
        } else {
            alert('You have to agree our term and condition')
            console.log("haloo, im not checkked");
        }
    }
</script>
</body>
</html>
