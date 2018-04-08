<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/8/2018
  Time: 10:57 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh_item"/>
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
    <g:set var="profilePicture"
           value="${com.picsell.data.ImageFile.findByTableNameAndTableId(profileUserInstance.class.simpleName, profileUserInstance?.id)}"></g:set>
</head>

<body>

<!-- Page Content -->
<div class="container">

    <!-- Portfolio Item Heading -->
    <h1 class="my-4">My Profile
    %{--<small>The item sub name or category</small>--}%
    </h1>

    <!-- Portfolio Item Row -->
    <div class="row">

        <div class="col-md-3">
        %{--<a href="${createLink(controller: 'profileUser', action: '')}">--}%
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
                <button type="button" class="btn btn-sm btn-block btn-outline btn-success" data-toggle="modal"
                        data-target="#myModal">
                    Change
                </button>
            </div>

        </div>

        <div class="col-md-7">
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
                                <label for="foto">
                                    <g:message code="testFile.foto.label" default="Pick a picture"/>

                                </label>
                                <input type="file" id="file" name="file" class="form-control"/>

                            </div>

                            <fieldset class="buttons">
                                <br/>
                                <g:submitButton name="create" class="save btn btn-success"
                                                value="${message(code: 'default.button.create.label', default: 'Upload')}"/>
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