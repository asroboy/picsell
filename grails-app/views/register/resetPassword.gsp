<html>
<head>
    <meta name="layout" content="login"/>
    <link href="${resource(dir: 'css', file: 'button_red.css')}"
          rel="stylesheet">
    %{--<s2ui:title messageCode='spring.security.ui.resetPassword.title'/>--}%
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
                                %{--<div class="form-group" style="text-align: center;color: #d00006;">--}%
                                %{--<h5>Enter your new password</h5>--}%
                                %{--</div>--}%
                            <div class="sign_in text-center">
                                <s2ui:formContainer type='resetPassword' focus='password' width='100%'
                                                    style="text-align: center">
                                    <s2ui:form beanName='resetPasswordCommand'>
                                        <g:hiddenField name='t' value='${token}'/>
                                        <h3><g:message code='spring.security.ui.resetPassword.description'/></h3>
                                        <table class="table ">
                                            <tr valign="center">
                                                %{--<td align="right" valign="center"><label--}%
                                                        %{--for="password">Password</label>--}%
                                                %{--</td>--}%
                                                %{--<td valign="center">--}%

                                                    %{--<input type="password" name="password" size="40"--}%
                                                           %{--class="form-control" id="password" required/></td>--}%
                                                %{--<td valign="top" style="color: red">&nbsp;*</td>--}%
                                                <s2ui:passwordFieldRow name='password' size='40'
                                                                       labelCodeDefault='Password'
                                                                       class="form-control" required=""/>
                                            </tr>
                                            <tr valign="center">
                                                %{--<td align="right" valign="center"><label--}%
                                                        %{--for="password2">Password (again)</label></td>--}%
                                                %{--<td valign="center">--}%
                                                    %{--<input type="password" name="password2" size="40"--}%
                                                           %{--class="form-control" id="password2" required/></td>--}%
                                                %{--<td valign="top" style="color: red">&nbsp;*</td>--}%
                                                <s2ui:passwordFieldRow name='password2' size='40'
                                                                       labelCodeDefault='Password (again)'
                                                                       class="form-control" required=""/>
                                            </tr>
                                            %{--<s2ui:passwordFieldRow name='password' labelCodeDefault='Password'/>--}%
                                            %{--<s2ui:passwordFieldRow name='password2' labelCodeDefault='Password (again)'/>--}%
                                        </table>

                                    %{--<s2ui:submitButton elementId='submit' messageCode='spring.security.ui.resetPassword.submit'/>--}%
                                        <input type="submit"
                                               value="Update My Password"
                                               class="myButton" style="margin-bottom: 15px"/>
                                        </div>

                                    </s2ui:form>
                                </s2ui:formContainer>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


%{--<div class="login_form" style="top:40%">--}%

%{--<div class="container" style="max-width: 550px">--}%
%{--<div class="row">--}%
%{--<div class="col-md-12 col-md-offset-4">--}%
%{--<div class="login-panel panel panel-default">--}%
%{--<div class="panel-heading" style="text-align: center">--}%
%{--<img src="${resource(dir: 'images/logo', file: 'logo_small.png')}"--}%
%{--style="height: 65px; width: 65px; margin-bottom: 15px">--}%

%{--</div>--}%

%{--<div class="panel-body login_panel_body" style="padding-bottom: 15px; padding-top: 15px;">--}%
%{--<div class="sign-in">--}%

%{--</div>--}%

%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%

</body>
</html>
