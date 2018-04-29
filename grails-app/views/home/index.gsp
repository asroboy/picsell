<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 3/16/2018
  Time: 10:25 AM
--%>

<%@ page import="com.picsell.security.Role; com.picsell.security.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    %{--<g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>--}%
    <g:set var="userAccounts" value="${com.picsell.data.UserAccount.findAllByUser(userObject)}"/>
</head>

<body>
<!-- Page Content -->
<div class="container">
    <!-- Page Heading -->
    <div>
        <h1 class="my-2">
            ${params.cat}
        </h1>

        <div style="margin-bottom: 20px">
            <h4><small><i>${com.picsell.data.Category.findByName(params.cat)?.description}</i></small></h4>
        </div>
    </div>

    <div class="row">
        <g:each in="${com.picsell.data.Item.findAll()}" var="item" status="i">
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                        <img class="card-img-top"
                             src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                             alt="">
                    </a>

                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">${item?.name}</a>
                        </h4>

                        <p>Price : ${item?.price} ${item?.currency}</p>

                        <p class="card-text">${item?.description}</p>
                    </div>
                </div>
            </div>
        </g:each>
    </div>
    <!-- /.row -->
    <!-- Pagination -->
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>
    </ul>
</div>

<sec:ifLoggedIn>

    <g:if test="${userAccounts.size() == 0}">

        <div class="container">
            %{--<button id="button_popup_register" type="button" class="btn btn-lg btn-block btn-outline btn-success" data-toggle="modal"--}%
            %{--data-target="#myModal">--}%
            %{--SET ROLE--}%
            %{--</button>--}%

            <div class="modal fade" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">What are you will be?</h4>
                            %{--<button type="button" class="close" data-dismiss="modal">&times;</button>--}%
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            <div class="form-group">
                                <button type="button" class="btn btn-info" data-dismiss="modal"
                                        onclick="register_as_general_user()"
                                        style="width: 100%">a General user</button>
                            </div>

                            <div class="form-group">
                                <button type="button" class="btn btn-warning" data-dismiss="modal"
                                        onclick="register_as_contributor()"
                                        style="width: 100%">a Contributor</button>
                            </div>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="application/javascript">

            $('#myModal').modal({backdrop: 'static', keyboard: false})

            function register_as_general_user() {

                var URL = "${createLink(controller: 'subcribtion', action: 'saveUsrRole')}";

                $.ajax({
                    url: URL,
                    data: {id: '${sec.loggedInUserInfo(field: 'id')}', role_name: 'ROLE_USER'},
                    success: function (resp) {
                        console.log(resp);
                        window.location = "${createLink(controller: 'subcribtion', action: 'index')}";
                    }
                });
            }

            function register_as_contributor() {
                var URL = "${createLink(controller: 'subcribtion', action: 'saveUsrRole')}";

                $.ajax({
                    url: URL,
                    data: {id: '${sec.loggedInUserInfo(field: 'id')}', role_name: 'ROLE_CONTRIBUTOR'},
                    success: function (resp) {
                        console.log(resp);
                    }
                });

            }
        </script>
    </g:if>

</sec:ifLoggedIn>
</body>

</html>