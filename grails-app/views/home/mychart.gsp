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
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
    <g:set var="userAccounts" value="${com.picsell.data.UserAccount.findAllByUser(userObject)}"/>
    <g:set var="itemCharts" value="${com.picsell.data.ItemChart.findAllByUser(userObject)}"/>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">My Chart</div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-12">
            <div style="text-align: justify; margin-bottom: 30px;">
                %{--<div class="sub-part1">--}%
                %{--Unpaid Item--}%
                %{--</div>--}%
                <table class="table" style="margin-top: 30px; margin-bottom: 30px">
                    <tr>
                        %{--<th>Chart ID</th>--}%
                        <th width="15%">Image</th>
                        <th width="30%">Details</th>
                        <th width="20%">Price</th>
                        <th>Action</th>
                    </tr>
                    <g:each in="${itemCharts}" var="itemChart">
                        <g:if test="${itemChart.status == null}">
                            <tr>
                                %{--<td>${itemChart?.id}</td>--}%
                                <td><img class="card-img-top"
                                         src="${createLink(controller: 'document', action: 'photoWithWatermaark', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemChart.item?.id, itemChart.item.class.simpleName)?.id, params: [table_id: itemChart.item?.id, table_name: 'Item'])}"
                                         alt=""></td>
                                <td>
                                    <p><b>${itemChart.item?.name}</b>
                                        <br/><font color="#d3d3d3">${itemChart.item?.userOwner?.username}</font>
                                        <br/><i>${itemChart.item?.description}</i>
                                        <br/> <font color="#808080">Tags: ${itemChart.item?.tags}</font></p>
                                </td>
                                <td>${itemChart.item?.price} ${itemChart.item?.currency}</td>
                                <td>
                                    <a href="${createLink(controller: 'home', action: 'purchase_summary', id: itemChart?.item?.id, params: [chart_id: itemChart?.id])}"
                                       class="btn myButton"><i class="fa fa-money"></i> Buy</a>
                                    <a onclick="delete_from_chart(${itemChart.id})" class="myButtonGrey"><i class="fa fa-trash"></i> Delete</a>

                                </td>
                            </tr>
                        </g:if>

                    </g:each>
                </table>



                <!-- Pagination -->
                %{--<ul class="pagination justify-content-center">--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#" aria-label="Previous">--}%
                %{--<span aria-hidden="true">&laquo;</span>--}%
                %{--<span class="sr-only">Previous</span>--}%
                %{--</a>--}%
                %{--</li>--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#">1</a>--}%
                %{--</li>--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#">2</a>--}%
                %{--</li>--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#">3</a>--}%
                %{--</li>--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#" aria-label="Next">--}%
                %{--<span aria-hidden="true">&raquo;</span>--}%
                %{--<span class="sr-only">Next</span>--}%
                %{--</a>--}%
                %{--</li>--}%
                %{--</ul>--}%

                %{--<div class="sub-part1">--}%
                %{--Paid Item--}%
                %{--</div>--}%

                %{--<table class="table" style="margin-top: 30px; margin-bottom: 30px">--}%
                %{--<tr>--}%
                %{--<th width="10%">Chart ID</th>--}%
                %{--<th width="15%">Image</th>--}%
                %{--<th width="20%">Owner</th>--}%
                %{--<th width="20%">Price</th>--}%

                %{--</tr>--}%
                %{--<g:each in="${itemCharts}" var="item">--}%
                %{--<g:if test="${item?.status?.equals("paid")}">--}%
                %{--<tr>--}%
                %{--<td>${item?.id}</td>--}%
                %{--<td><img class="card-img-top"--}%
                %{--src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item.item?.id, item.item.class.simpleName)?.id, params: [s: '238h9uhh3', table_id: item.item?.id, table_name: 'Item'])}"--}%
                %{--alt=""></td>--}%
                %{--<td>${item.item?.userOwner?.username}</td>--}%
                %{--<td>${item.item?.price} ${item.item?.currency}</td>--}%
                %{--</tr>--}%
                %{--</g:if>--}%

                %{--</g:each>--}%
                %{--</table>--}%
                <!-- Pagination -->
                %{--<ul class="pagination justify-content-center">--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#" aria-label="Previous">--}%
                %{--<span aria-hidden="true">&laquo;</span>--}%
                %{--<span class="sr-only">Previous</span>--}%
                %{--</a>--}%
                %{--</li>--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#">1</a>--}%
                %{--</li>--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#">2</a>--}%
                %{--</li>--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#">3</a>--}%
                %{--</li>--}%
                %{--<li class="page-item">--}%
                %{--<a class="page-link" href="#" aria-label="Next">--}%
                %{--<span aria-hidden="true">&raquo;</span>--}%
                %{--<span class="sr-only">Next</span>--}%
                %{--</a>--}%
                %{--</li>--}%
                %{--</ul>--}%
            </div>
        </div>

    </div>
</div>
</body>

</html>