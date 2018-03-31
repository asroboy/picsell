<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<html>
<head>
    <meta name="layout" content="login"/>
    <s2ui:title messageCode='spring.security.ui.login.title'/>
    <asset:stylesheet src='spring-security-ui-auth.css'/>
</head>

<body>
<p/>


<div class="form-group">
    <h4>Please Sign In</h4>
</div>
<s2ui:form role="form" type='login' focus='username'>
    <div class="sign-in">
        <fieldset>

            %{--<h2><g:message code='spring.security.ui.login.signin'/></h2>--}%
            <div class="form-group">
                %{--<label for="username"><g:message code='spring.security.ui.login.username'/></label>--}%
                <input type="text" placeholder="Username" name="${securityConfig.apf.usernameParameter}" id="username"
                       class="form-control"
                       size="20"/>
            </div>

            <div class="form-group">
                %{--<label for="password"><g:message code='spring.security.ui.login.password'/></label>--}%
                <input type="password" placeholder="Password" name="${securityConfig.apf.passwordParameter}"
                       id="password" class="form-control"
                       size="20"/>
            </div>

            <div class="checkbox">
                <label>
                    <input name="${securityConfig.rememberMe.parameter}" id="remember_me"
                           checked="checked" type="checkbox" value="Remember Me">Remember Me
                </label>
            </div>

            %{--<div class="checkbox">--}%
            %{--<input type="checkbox" class="checkbox" name="${securityConfig.rememberMe.parameter}" id="remember_me"--}%
            %{--checked="checked"/>--}%
            %{--<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label> |--}%
            %{--</div>--}%

            <span class="forgot-link">
                <g:link controller='register' action='forgotPassword'><g:message
                        code='spring.security.ui.login.forgotPassword'/></g:link>
            </span>

            <div>
                <s2ui:linkButton elementId='register' controller='register'
                                 messageCode='spring.security.ui.login.register'/>
            </div>

            <br/>

            <div>
                <input type="submit" value="Login" id="loginButton_submit" class="btn btn-lg btn-default btn-block"/>

            %{--<s2ui:submitButton class="btn btn-lg btn-default btn-block" elementId='loginButton' messageCode='spring.security.ui.login.login'/>--}%
            </div>

        </fieldset>

    </div>
</s2ui:form>
%{--</div>--}%
%{--</div>--}%
</body>
</html>
