<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<html>
<head>
    <meta name="layout" content="login"/>
    <link href="${resource(dir: 'css', file: 'button_red.css')}"
          rel="stylesheet">
    <s2ui:title messageCode='spring.security.ui.login.title'/>
    <asset:stylesheet src='spring-security-ui-auth.css'/>
</head>

<body>

<div class="container" style="max-width: 550px">
    <div class="row">
        <div class="col-md-12">
            <div class="card card-register mx-auto mt-5">
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
                                <div class="form-group" style="text-align: center;color: #d00006;">
                                    <h5>Sign In</h5>
                                </div>

                                <s2ui:form role="form" type='login' focus='username'>

                                    <div class="sign-in" style="padding-left: 20px; padding-right: 20px">
                                        <g:if test='${flash.message}'>
                                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                <div class='login_message'>${flash.message}</div>
                                                <button type="button" class="close" data-dismiss="alert"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>

                                        </g:if>
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


                                            <div style="text-align:center; align: center; margin-bottom: 30px">
                                                <input type="submit" value="Sign In" id="loginButton_submit"
                                                       class="center btn-block myButton"
                                                       style="background-color: red; color: white; width: 100px; margin: 0 auto;"/>

                                                %{--<s2ui:submitButton class="btn btn-lg btn-default btn-block" elementId='loginButton' messageCode='spring.security.ui.login.login'/>--}%
                                            </div>

                                            <div style="text-align: center;">

                                                <g:link controller='register'
                                                        action='register'>Not a member? <b>REGISTER</b> now!</g:link>
                                            %{--<s2ui:linkButton elementId='register' controller='register'--}%
                                            %{--messageCode='spring.security.ui.login.register'>Not a member? <b>REGISTER</b> now!</s2ui:linkButton>--}%
                                            </div>

                                            <div style="text-align: center;">
                                                <span class="forgot-link">
                                                    <g:link controller='register'
                                                            action='forgotPassword'><i>Forgot your <b>password?</b>
                                                    </i></g:link>
                                                </span>
                                            </div>
                                        </fieldset>

                                    </div>
                                </s2ui:form>
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
