<html>
<head>
    <meta name="layout" content="login"/>
    <link href="${resource(dir: 'css', file: 'button_red.css')}"
          rel="stylesheet">
    %{--<s2ui:title messageCode='spring.security.ui.forgotPassword.title'/>--}%
</head>

<body>

<div class="login_form" style="top:40%">

    <div class="container" style="padding-bottom: 10px">
        <div class="row">
            <div class="col-md-12 col-md-offset-4">

                <div class="login-panel panel panel-default">
                    <div class="panel-heading" style="text-align: center">
                        <img src="${resource(dir: 'images/logo', file: 'logo_small.png')}"
                             style="height: 65px; width: 65px; margin-bottom: 15px;  margin-top: 15px">

                    </div>

                    <div class="panel-body login_panel_body" style="padding-bottom: 15px; padding-top: 15px;">

                        <div class="sign-in">

                            <s2ui:formContainer type='forgotPassword' focus='username' width='100%'>
                                <s2ui:form beanName='forgotPasswordCommand'>
                                    <g:if test='${emailSent}'>
                                        <div style="margin-bottom: 35px">
                                            <div class="alert alert-secondary" role="alert">
                                                <h4 class="alert-heading">Success!</h4>
                                                <g:message code='spring.security.ui.forgotPassword.sent'/>
                                            </div>

                                        </div>
                                    </g:if>
                                    <g:else>
                                    %{--<br/>--}%

                                        <h5>Forgot Your Password?</h5>
                                        %{--<g:message code='spring.security.ui.forgotPassword.description'/>--}%
                                        <p>Enter your <b><i>username</i></b> and we'll send a link to reset your password to the email address related to your account</p>
                                        <table>
                                            <div class="form-group">
                                                <input placeholder="Username" type="text" name='username' size='25' labelCodeDefault='Username'
                                                       class="form-control"/>
                                            </div>

                                        </table>

                                        <div style="align: center; margin-bottom: 30px">
                                            <input type="submit" align="center" value="Reset"
                                                   id="submit_submit"
                                                   class="myButton"
                                                   style="background-color: red; color: white; width: 100px; margin: 0 auto;"/>
                                        </div>

                                    %{--<s2ui:submitButton class="btn btn-default btn-outline" elementId='submit'--}%
                                    %{--messageCode='spring.security.ui.forgotPassword.submit'/>--}%

                                        <div style="align: center; margin-bottom: 30px">

                                            <g:link controller='register'
                                                    action='register'>Not a member? <b>REGISTER</b> now!</g:link> <br/>
                                            <g:link controller='login'
                                                    action='auth'><i>Have an account? <b>Sign in</b> here</i></g:link>
                                        %{--<s2ui:linkButton elementId='register' controller='register'--}%
                                        %{--messageCode='spring.security.ui.login.register'>Not a member? <b>REGISTER</b> now!</s2ui:linkButton>--}%
                                        </div>
                                    </g:else>
                                </s2ui:form>
                            </s2ui:formContainer>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
