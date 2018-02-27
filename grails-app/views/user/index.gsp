<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 1/20/2018
  Time: 12:21 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_sbadmin"/>
    <title>User</title>
    <g:set var="users" value="${com.picsell.security.User.list()}"/>
</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Pengguna</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<div class="row">
    <div class="col-lg-12" style="margin-bottom: 15px">
        <g:link class="btn btn-default create" action="create">New Peserta</g:link>
    </div>
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Pengguna
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                    <tr>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Enabled</th>
                        <th>Locked</th>
                        <td>Action</td>
                    </tr>
                    </thead>
                    <tbody>

                    <g:each in="${users}" var="user">
                        <tr>
                            <td>${user.username}</td>
                            <td></td>
                            <td>${user.enabled}</td>
                            <td>${user.accountLocked}</td>
                            <td style="width: 15%">
                                <a class="btn btn-default" href="${createLink(controller: 'user', action: 'edit', id: user.id)}">Edit</a>&nbsp
                                <a class="btn btn-danger" href="${createLink(controller: 'user', action: 'delete', id: user.id)}">Delete</a>
                            </td>
                        </tr>

                    </g:each>
                    </tbody>
                </table>

            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>

</div>


</body>
</html>