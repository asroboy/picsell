<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/9/2018
  Time: 9:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <title></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">${itemInstance?.name}</div>
        </div>

    </div>

    <div class="row">

        <div class="col-lg-12">
            <g:set var="userItem" value="${itemInstance}"/>
            <g:uploadForm url="${createLink(action: 'updateItem', id: itemInstance?.id)}">
                <div class="row">
                    <div class="col-lg-4">
                        %{--<div style="margin-bottom: 2rem">--}%
                        %{--<fieldset class="form">--}%
                        <g:render template="formAddImageItem"/>
                        %{--</fieldset>--}%
                        %{--</div>--}%
                    </div>

                    <div class="col-lg-1"></div>

                    <div class="col-lg-7">
                        <div><p><b>Please fill the column correctly, or we can't process the upload to gallery</b></p>
                        </div>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <g:hasErrors bean="${itemInstance}">
                            <ul class="errors" role="alert" style="color: red">
                                <g:eachError bean="${itemInstance}" var="error">
                                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                            error="${error}"/></li>
                                </g:eachError>
                            </ul>
                        </g:hasErrors>
                        %{--<g:textField name="id" value="${fieldValue(bean: itemInstance, field: 'id')}" class="form-control" hidden="true"/>--}%
                        <g:render template="formAddItem"/>


                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>Attention!</strong> Updating item will changed approval status, and it will need 1-3 days business day to review.
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>


                        <fieldset class="buttons">
                            <g:submitButton name="updateItem" class="update btn btn-sm btn-danger"
                                            value="${message(code: 'default.button.submit_now.label', default: 'Submit now')}"/>
                            <a href="${createLink(action: 'index')}" class="btn btn-sm btn-danger"
                               style="text-align: left">Cancel</a>
                        </fieldset>

                    </div>
                </div>

            </g:uploadForm>
        </div>
        <!-- /.col-lg-3 -->


        <div class="col-lg-5">

            %{--<div style="margin-left: 20px; margin-bottom: 50px">--}%

            %{--<fieldset class="form">--}%

            %{--</fieldset>--}%

            %{--</div>--}%

        </div>

        <div class="col-lg-2">
            <div class="row">
                <div style="margin-left: 20px; margin-bottom: 50px">

                    %{--<img src="${resource(dir: 'images', file: 'background.jpeg')}" style="width: 100%"/>--}%
                    %{--<br/>--}%

                </div>

            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.col-lg-9 -->

</div>
<!-- /.row -->

</div>
<!-- /.container -->
<script>
    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function () {
        readURL(this);
    });
</script>
</body>
</html>