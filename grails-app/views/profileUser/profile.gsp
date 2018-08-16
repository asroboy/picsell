<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/8/2018
  Time: 10:57 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>
    <style type="text/css">
    img.profile-pic {
        height: 150px;
        width: 150px;
    }

    .button-change {
        margin-top: 10px;
        margin-bottom: 50px;
        width: 150px;

    }
    </style>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>

<!-- Page Content -->
<div class="container">

    <!-- Portfolio Item Heading -->
    <div class="my-4 ">
        %{--<small>The item sub name or category</small>--}%
    </div>

    <!-- Portfolio Item Row -->
    <div class="row">

        <div class="col-md-3">
            <div class="label-red" style="width: 100%">
                Summary
            </div>

            <div class="card">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Uploaded : ${com.picsell.data.Item.countByUserOwner(profileUserInstance?.user)} images</li>
                    <li class="list-group-item">Approved : ${com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "approved")} images</li>
                    <li class="list-group-item">Pending :  ${com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "pending")} images</li>
                    <li class="list-group-item">Rejected :${com.picsell.data.Item.countByUserOwnerAndStatus(profileUserInstance?.user, "rejected")} images</li>
                </ul>
            </div>

            <div style="width: 100%; margin-top: 15px">
                <button class="btn btn-sm btn-danger" style="width: 100%;" onclick="go_to_my_item()">My Items</button>
            </div>

        </div>

        <div class="col-md-9">
            <div class="card">
                <div class="label-red">
                    Profile
                </div>

                <div class="row" style="margin: 20px;">
                    <div class="col-md-5">
                    %{--<a href="${createLink(controller: 'profileUser', action: '')}">--}%
                        <g:set var="profilePicture"
                               value="${com.picsell.data.ImageFile.findByTableNameAndTableId("ProfileUser", profileUserInstance?.id)}"></g:set>
                        <g:if test="${profilePicture}">
                            <img class="profile-pic"
                                 src="${createLink(controller: 'image', action: 'download', id: profilePicture?.id)}"
                                 alt="">
                        </g:if>
                        <g:else>
                            <img class="profile-pic"
                                 src="${resource(dir: 'images', file: 'profile_dmy.png')}"
                                 alt="">
                        </g:else>

                    %{--</a>--}%

                        <div class="button-change">
                            <button type="button" class="btn btn-sm btn-block btn-outline-danger" data-toggle="modal"
                                    data-target="#myModal">
                                Change
                            </button>
                        </div>

                    </div>

                    <div class="col-md-7">
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <g:hasErrors bean="${profileUserInstance}">
                            <ul class="errors" role="alert">
                                <g:eachError bean="${profileUserInstance}" var="error">
                                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                            error="${error}"/></li>
                                </g:eachError>
                            </ul>
                        </g:hasErrors>
                    %{--<h3 class="my-3">Item Description</h3>--}%
                        <g:if test="${profileUserInstance.id}">
                            <div id="info">
                                <g:render template="profile_info"/>
                            </div>

                            <div id="edit_info" style="display: none">
                                <g:render template="edit_profile_info"/>
                            </div>
                        </g:if>
                        <g:else>
                            <g:render template="add_profile_info"/>
                        </g:else>

                    </div>
                </div>
            </div>

        </div>

    </div>

    <br/>

    <div class="container">
        %{--<h2>Modal Example</h2>--}%
        <!-- Trigger the modal with a button -->
        <!-- Button to Open the Modal -->


        <!-- The Modal -->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Profile Picture</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <g:form url="[resource: profileUserInstance, action: 'saveProfileImage']"
                                enctype="multipart/form-data">
                            <div class="fieldcontain ${hasErrors(bean: profilePicture, field: 'lampiran', 'error')} form-group">
                                <label for="file">
                                    <g:message code="testFile.foto.label" default="Pick a picture"/>

                                </label>
                                <input type="file" id="file" name="file" class="form-control"/>

                            </div>

                            <fieldset class="buttons">
                                <br/>
                                <g:submitButton name="create" class="save btn btn-block btn-outline-success"
                                                value="${message(code: 'default.button.save.label', default: 'Save')}"/>
                            </fieldset>
                        </g:form>
                    </div>

                    <!-- Modal footer -->
                    %{--<div class="modal-footer">--}%
                    %{----}%
                    %{--</div>--}%

                </div>
            </div>
        </div>

    </div>
    <!-- /.row -->

</div>


<script>

    function go_to_my_item() {
        window.location = '${createLink(controller: 'userItem', action: 'index')}';
    }
    function changeProfile() {
        var editInfo = document.getElementById('edit_info');
        var info = document.getElementById('info');
        info.style.display = "none";
        editInfo.style.display = "block";
        console.log("halo");
    }

</script>
</body>
</html>