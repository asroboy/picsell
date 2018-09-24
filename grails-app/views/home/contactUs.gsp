<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 9/13/2018
  Time: 12:42 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Contact Customer Support</div>
        </div>

    </div>


    <div class="row">
        <div class="col-md-6" style="padding: 0px;">
            <div class="panel panel-default table-plans">
                <div class="panel-body body-table-plans" style="padding-top: 20px">
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="${customerMessageInstance}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${customerMessageInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                        error="${error}"/></li>
                            </g:eachError>
                        </ul>
                    </g:hasErrors>
                    <g:form url="[controller: 'customerMessage', resource: customerMessageInstance, action: 'save']">
                        <fieldset class="form">
                            <g:render template="contact_us_form"/>
                        </fieldset>
                        <fieldset class="buttons" style="margin-bottom: 15px">
                            <g:submitButton name="create" class="save btn btn-danger btn-sm"
                                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>


        <div class="col-md-6 right-option">
            <b>CONTACT US
                <table style="margin-top: 20px;" cellpadding="5">
                    <col width="250">
                    <col width="100">
                    <tr>
                        <td>EMAIL : <br/><a href="mailto:cs.picsell.id">cs@picsell.id</a></td>
                        <td><img src="${resource(dir: 'images', file: 'ic-email.png')}"
                                 style="width: 30px; height: 25px"/></td>
                    </tr>
                    <tr>
                        <td>CALL : <br/><a href="tel:+628567228886">(+62)8567228886</a></td>
                        <td><img src="${resource(dir: 'images', file: 'ic-live-chat.png')}"
                                 style="width: 30px; height: 25px"/></td>
                    </tr>
                    <tr>
                        <td>FAQ <br/><a
                                href="${createLink(controller: 'home', action: 'faq')}">View requently asked questions</a>
                        </td>
                        <td><img src="${resource(dir: 'images', file: 'ic-ask.png')}"
                                 style="width: 25px; height: 25px"/></td>
                    </tr>
                </table>
            </b>
        </div>

    </div>

</div>
</body>
</html>