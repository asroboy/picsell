<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 3/16/2018
  Time: 10:25 AM
--%>

<%@ page import="com.picsell.data.Category; com.picsell.security.Role; com.picsell.security.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>


    <sec:ifLoggedIn>
        <script>
            var URL = "${createLink(controller: 'api', action: 'check_contrib_has_subs_acc')}";
            $.ajax({
                type: "POST",
                url: URL,
                data: {
                    user_id: '${userObject?.id}'
                },
                success: function (resp) {
                    console.log(resp)
                    if (resp.data.has_account === false) {
                        window.location = '${createLink(controller: 'home', action: 'packages')}';
                    } else {
                        checkUserItem();
                    }
                }
            });


            function checkUserItem() {
                var URL = "${createLink(controller: 'api', action: 'cheeck_user_items')}";
                $.ajax({
                    type: "GET",
                    url: URL,
                    data: {
                        user_id: '${userObject?.id}'
                    },
                    success: function (resp) {
                        console.log(resp)
                        if (resp.data < 5 && resp.contributor == true) {
                            window.location = '${createLink(controller: 'userItem', action: 'addFirstItem')}';
                        }
                    }
                });
            }
        </script>
    </sec:ifLoggedIn>


    <style>
    #photos {
        /* Prevent vertical gaps */
        line-height: 0;

        -webkit-column-count: 3;
        -webkit-column-gap: 0px;
        -moz-column-count: 3;
        -moz-column-gap: 0px;
        column-count: 4;
        column-gap: 2px;
    }

    #photos img {
        /* Just in case there are inline attributes */
        width: 100% !important;
        margin: 2px;
        height: auto !important;
    }


    </style>
</head>

<body>

<section id="photos">
    <g:if test="${params.cat}">
        <g:each in="${com.picsell.data.Item.findAllByStatusAndCategory("approved", com.picsell.data.Category.findByName(params.cat))}"
                var="item" status="i">
            <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                     alt="">
            </a>
        </g:each>
    </g:if>
    <g:else>
        <g:if test="${params.key}">
            <g:each in="${items}" var="item"
                    status="i">
                <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                    <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                         alt="">
                </a>
            </g:each>
        </g:if>
        <g:else>
            <g:each in="${com.picsell.data.Item.findAllByStatus("approved")}" var="item" status="i">
                <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                    <img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"
                         alt="">
                </a>
            </g:each>
        </g:else>

    </g:else>

</section>
<!-- Page Content -->
<div style="padding-left: 20px; padding-right: 20px; margin-top: 30px;">

    <div class="row" style=" margin-bottom: 20px">

        %{--<g:each in="${com.picsell.data.Item.findAll()}" var="item" status="i">--}%
        %{--<div class="col-lg-3 col-sm-12 portfolio-item"--}%
        %{--style="padding-left: 3px; padding-right: 3px; margin-bottom: 5px">--}%
        %{--<div class="card h-100">--}%
        %{--<a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">--}%
        %{--<img class="card-img-top"--}%
        %{--src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"--}%
        %{--alt="">--}%
        %{--</a>--}%

        %{--<div class="card-body">--}%
        %{--<h4 class="card-title">--}%
        %{--<a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">${item?.name}</a>--}%
        %{--</h4>--}%

        %{--<p>Price : ${item?.price} ${item?.currency}</p>--}%

        %{--<p class="card-text">${item?.description}</p>--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</g:each>--}%
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

</body>

</html>