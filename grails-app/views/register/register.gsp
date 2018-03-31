<html>
<head>
    %{--${layoutRegister}--}%
    <meta name="layout" content="register"/>
    %{--<s2ui:title messageCode='spring.security.ui.register.title'/>--}%
</head>

<body>

<div class="form-group" style="margin-bottom: 10px">
    <h5 >Please, fill in form below to sign up an account</h5>
</div>
<div class="sign-in">
    <s2ui:formContainer type='register' focus='username' width='100%'>

        <s2ui:form beanName='registerCommand'>
            <g:if test='${emailSent}'>
                <br/>
                <g:message code='spring.security.ui.register.sent'/>
                <br/>
                <br/>
                <a class="btn btn-default nav-link" style="width: 100%" href="${createLink(controller: 'login', action: 'auth')}">Continue login</a>
            </g:if>
            <g:else>
                <br/>
            %{--<table>--}%
            %{--<tbody>--}%
                <fieldset>
                    <div class="form-group">
                        <s2ui:textFieldRow name='username' size='40' labelCodeDefault='Username' class="form-control"/>
                    </div>

                    <div class="form-group">
                        <s2ui:textFieldRow name='email' size='40' labelCodeDefault='E-mail' class="form-control"/>
                    </div>

                    <div class="form-group">
                        <s2ui:passwordFieldRow name='password' size='40' labelCodeDefault='Password'
                                               class="form-control"/>
                    </div>

                    <div class="form-group">
                        <s2ui:passwordFieldRow name='password2' size='40' labelCodeDefault='Password (again)'
                                               class="form-control"/>
                    </div>
                    %{--</tbody>--}%
                    %{--</table>--}%
                    <input type="submit" value="Sign up" id="submit_submit" class="btn btn-lg btn-default btn-block"/>
                    <br/>
                    <label>Already have an account?  <a href="${createLink(controller: 'login', action: 'auth')}">Sign in</a></label>

                    <br/>
                    %{--<s2ui:submitButton elementId='submit' messageCode='spring.security.ui.register.submit' />--}%
                </fieldset>
            </g:else>
        </s2ui:form>

    </s2ui:formContainer>
</div>

</body>
</html>
