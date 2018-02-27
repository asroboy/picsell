<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 1/26/2018
  Time: 7:42 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_sbadmin"/>
    <g:set var="roles" value="${com.picsell.security.Role.list()}"/>
</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Grup Pengguna</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<div class="row">
    <div class="col-lg-12" style="margin-bottom: 15px">
        <g:link class="btn btn-default create" action="create">New Grup Pengguna</g:link>
    </div>
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Grup Pengguna
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                    <tr>
                        <th>Nama</th>
                        <td>Action</td>
                    </tr>
                    </thead>
                    <tbody>

                    <g:each in="${roles}" var="role">
                        <tr>
                            <td>${role.authority}</td>
                            <td style="width: 15%"><g:link class="btn btn-default create" action="edit" resource="${role}">Edit</g:link>&nbsp
                                <button class="btn btn-danger">Delete</button> </td>
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