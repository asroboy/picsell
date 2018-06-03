<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<html>
<head>
    <meta name="layout" content="login"/>
    <s2ui:title messageCode='spring.security.ui.login.title'/>
    <asset:stylesheet src='spring-security-ui-auth.css'/>
</head>

<body>

<div class="login_form"  style="top:40%">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-md-offset-4">

                <div class="login-panel panel panel-default">
                    <div class="panel-heading" style="text-align: center">
                        <img src="${resource(dir: 'images/logo', file: 'logo_small.png')}"
                             style="height: 65px; width: 65px; margin-bottom: 15px">

                    </div>

                    <div class="panel-body login_panel_body">
                        <div class="form-group">
                            <h4>Sign In As</h4>
                        </div>

                        <s2ui:form role="form" type='login' focus='username'>
                            <div class="sign-in">
                                <fieldset>

                                    %{--<h2><g:message code='spring.security.ui.login.signin'/></h2>--}%
                                    <div class="form-group">
                                        %{--<label for="username"><g:message code='spring.security.ui.login.username'/></label>--}%
                                        <input type="text" placeholder="Username"
                                               name="${securityConfig.apf.usernameParameter}" id="username"
                                               class="form-control"
                                               size="20"/>
                                    </div>

                                    <div class="form-group">
                                        %{--<label for="password"><g:message code='spring.security.ui.login.password'/></label>--}%
                                        <input type="password" placeholder="Password"
                                               name="${securityConfig.apf.passwordParameter}"
                                               id="password" class="form-control"
                                               size="20"/>
                                    </div>

                                    %{--<div class="checkbox">--}%
                                    %{--<label>--}%
                                    %{--<input name="${securityConfig.rememberMe.parameter}" id="remember_me"--}%
                                    %{--checked="checked" type="checkbox" value="Remember Me">Remember Me--}%
                                    %{--</label>--}%
                                    %{--</div>--}%

                                    %{--<div class="checkbox">--}%
                                    %{--<input type="checkbox" class="checkbox" name="${securityConfig.rememberMe.parameter}" id="remember_me"--}%
                                    %{--checked="checked"/>--}%
                                    %{--<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label> |--}%
                                    %{--</div>--}%




                                    <div style="align: center; margin-bottom: 30px">
                                        <input type="submit" value="Sign In" id="loginButton_submit"
                                               class="btn btn-sm btn-default btn-block"
                                               style="background-color: red; color: white; width: 100px; margin: 0 auto;"/>

                                        %{--<s2ui:submitButton class="btn btn-lg btn-default btn-block" elementId='loginButton' messageCode='spring.security.ui.login.login'/>--}%
                                    </div>

                                    <div>

                                        <g:link controller='register'
                                                action='register'>Not a member? <b>REGISTER</b> now!</g:link>
                                    %{--<s2ui:linkButton elementId='register' controller='register'--}%
                                    %{--messageCode='spring.security.ui.login.register'>Not a member? <b>REGISTER</b> now!</s2ui:linkButton>--}%
                                    </div>
                                    <span class="forgot-link">
                                        <g:link controller='register'
                                                action='forgotPassword'><i>Forgot your <b>password?</b></i></g:link>
                                    </span>

                                </fieldset>

                            </div>
                        </s2ui:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


%{--</div>--}%
%{--</div>--}%
</body>
</html>
