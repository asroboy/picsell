package com.picsell.security

import grails.plugin.springsecurity.authentication.dao.NullSaltSource
import grails.plugin.springsecurity.ui.RegisterCommand
import grails.plugin.springsecurity.ui.RegistrationCode

class RegisterController extends grails.plugin.springsecurity.ui.RegisterController {

    def register(RegisterCommand registerCommand) {
        flash.error = ""
        if (!request.post) {
            return [registerCommand: new RegisterCommand()]
        }

        if (registerCommand.hasErrors()) {
            flash.error = registerCommand.errors.allErrors.defaultMessage
            return [registerCommand: registerCommand]
        }


        def user = uiRegistrationCodeStrategy.createUser(registerCommand)

        String salt = saltSource instanceof NullSaltSource ? registerCommand.username : registerCommand.username
        print "SALT : " + salt

        RegistrationCode registrationCode = uiRegistrationCodeStrategy.register(user, registerCommand.password, salt)

        if (registrationCode == null || registrationCode.hasErrors()) {
            print 'error disini REGSITRASTION CODE is ' + registrationCode
            // null means problem creating the user
            flash.error = message(code: 'spring.security.ui.register.miscError')
            return [registerCommand: registerCommand]
        }
        print registrationCode.token
        sendVerifyRegistrationMail registrationCode, user, registerCommand.email
        String activateUrl = generateLink('verifyRegistration', [t: registrationCode.token])
        [emailSent: true, registerCommand: registerCommand, activateUrl: activateUrl, user_id: user?.id, role: params.role]
    }

    protected void sendVerifyRegistrationMail(RegistrationCode registrationCode, user, String email) {
        String url = generateLink('verifyRegistration', [t: registrationCode.token])

        def body = registerEmailBody
        if (body.contains('$')) {
            body = evaluate(body, [user: user, url: url])
        }
        sendMail {
            to email
            subject registerEmailSubject
            html body.toString()
        }
    }
}