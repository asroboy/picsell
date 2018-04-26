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
</head>

<body>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-lg-2">

        </div>

        <div class="col-lg-10">
            <h1 class="my-4">New Item</h1>
        </div>
    </div>

    <div class="row">

        <div class="col-lg-2">
            <div style="margin-bottom: 2rem">
                <a href="${createLink(action: 'index')}" class="btn btn-block btn-outline-primary"
                   style="text-align: left"><i
                        class="fa fa-close"></i> Cancel</a>

            </div>

        </div>
        <!-- /.col-lg-3 -->


        <div class="col-lg-5">

            <div class="row">
                <div style="margin-left: 20px; margin-bottom: 50px">
                    <g:uploadForm url="[action: 'mSaveItem']">
                        <fieldset class="form">
                            <g:render template="formAddImageItem"/>
                            <g:render template="formAddItem"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:submitButton name="create" class="save btn btn-info"
                                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                        </fieldset>
                    </g:uploadForm>
                </div>

            </div>

        </div>

        <div class="col-lg-5">
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

</body>
</html>