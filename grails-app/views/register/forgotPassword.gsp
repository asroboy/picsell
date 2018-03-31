<html>
<head>
    <meta name="layout" content="${layoutRegister}"/>
    <s2ui:title messageCode='spring.security.ui.forgotPassword.title'/>
</head>

<body>
<s2ui:formContainer type='forgotPassword' focus='username' width='100%'>
    <s2ui:form beanName='forgotPasswordCommand'>
        <g:if test='${emailSent}'>
            <br/>
            <g:message code='spring.security.ui.forgotPassword.sent'/>
        </g:if>
        <g:else>
            %{--<br/>--}%
            <h5><g:message code='spring.security.ui.forgotPassword.description'/></h5>
            <br/>
            <table>
                <div class="form-group">
                    <label>Username :</label>
                    <input type="text" name='username' size='25' labelCodeDefault='Username' class="form-control"/>
                </div>

            </table>
            <br/>
            <div style="width: 100%; text-align: center">
                <input type="submit" align="center" value="Reset my password" id="submit_submit"
                       class="btn btn-outline btn-danger"/>
            </div>


        %{--<s2ui:submitButton class="btn btn-default btn-outline" elementId='submit'--}%
        %{--messageCode='spring.security.ui.forgotPassword.submit'/>--}%

            <br/>
            <br/>
        </g:else>
    </s2ui:form>
</s2ui:formContainer>
</body>
</html>
