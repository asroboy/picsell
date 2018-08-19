<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/9/2018
  Time: 9:10 AM
--%>

<%@ page import="com.picsell.data.ImageFile" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <title>picsell.id</title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<!-- Page Content -->
<div class="container" style="margin-bottom: 50px">

    <div class="row">
        <div class="col-lg-3">
            <div class="my-4 label-red" style="width: 100%">My Items</div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-3">
            <div class="card">
                <div style="margin: 5px">
                    <a href="${createLink(action: 'addItem')}" class="btn btn-sm btn-outline-info"
                       style="text-align: left; width: 100%">Upload item</a>
                </div>

                <div style="margin: 5px">
                    <a href="${createLink(action: 'index', params: [status: 'approved'])}"
                       class="btn btn-sm btn-outline-success"
                       style="text-align: left; width: 100%">Approved items</a>
                </div>

                <div style="margin: 5px">
                    <a href="${createLink(action: 'index', params: [status: 'rejected'])}"
                       class="btn btn-sm btn-outline-danger"
                       style="text-align: left;  width: 100%">Rejected items</a>
                </div>

                <div style="margin: 5px">
                    <a href="${createLink(action: 'index', params: [status: 'pending'])}"
                       class="btn btn-sm btn-outline-warning"
                       style="text-align: left;  width: 100%">Pending items</a>
                </div>

            </div>

            <div style="margin-bottom: 15px; margin-top: 50px; width: 100%">
                <div style="margin: 5px">
                    <a href="${createLink(action: 'index', params: [status: 'pending'])}"
                       class="btn btn-sm btn-danger"
                       style="text-align: left;  width: 100%">Earnings</a>
                </div>
            </div>
        </div>

        <div class="col-lg-9">

            <div class="row">
                <g:each in="${items}" var="item">
                    <div class="col-lg-4 col-sm-6 portfolio-item" style="margin-bottom: 15px">
                        <div class="card h-100">
                            <a href="${createLink(controller: 'userItem', action: 'itemDetail')}">
                                <img class="card-img-top"
                                     src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id, params: [s: '238h9uhh3'])}"
                                     alt="" style="width auto; height: 160px; overflow: hidden">
                            </a>

                            <div class="card-body">
                                <h5 class="card-title">
                                    <a href="${createLink(controller: 'userItem', action: 'itemDetail', id: item?.id)}">${item?.name}</a>
                                </h5>
                                <hr style="color: red; height: 1.5px"/>
                                %{--<div>ID: ${item?.id}</div>--}%
                                <table>
                                    <tr>
                                        <td valign="top" style="width: 80px">Up Date</td>
                                        <td valign="top">:</td>
                                        <td valign="top"><g:formatDate format="dd MMM yyyy"
                                                                       date="${item?.createdDate}"/></td>
                                    </tr>
                                    <tr>
                                        <td valign="top">Price</td>
                                        <td valign="top">:</td>
                                        <td valign="top"><strong>${item?.price} ${item?.currency}</strong></td>
                                    </tr>
                                    <tr>
                                        <td valign="top">Desc.</td>
                                        <td valign="top">:</td>
                                        <td valign="top">${item?.description}</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">Tags</td>
                                        <td valign="top">:</td>
                                        <td valign="top">${item?.tags}</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">Status</td>
                                        <td valign="top">:</td>
                                        <td valign="top">
                                            <g:if test="${item?.status.equals("approved")}">
                                                <font color="#3ec1d3"><b>${item?.status}</b></font>
                                            </g:if>
                                            <g:elseif test="${item?.status.equals("pending")}">
                                                <font color="#ff9a00"><b>${item?.status}</b></font>
                                            </g:elseif>
                                            <g:else>
                                                <font color="#ff165d"><b>${item?.status}</b></font>
                                            </g:else>
                                        </td>
                                    </tr>
                                    <g:if test="${!item?.status.equals("pending")}">
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td>

                                                <p class="font-italic" style="color: darkgray; font-size: 11pt">
                                                    <g:formatDate format="dd MMM yyyy" date="${item?.statusCgDate}"/>
                                                </p>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${item?.statusInfo}">
                                        <tr>
                                            <td colspan="3">${item?.statusInfo}</td>
                                        </tr>
                                    </g:if>
                                </table>

                            </div>
                        </div>
                    </div>
                </g:each>

            </div>
            <!-- /.row -->

            <!-- Pagination -->
            <ul class="pagination justify-content-center">
                <g:if test="${itemInstanceCount > params.max}">
                    <% def mod = itemInstanceCount % params.max %>
                    <% Integer page = itemInstanceCount / params.max %>
                    <% def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0 %>

                    <g:if test="${offsetNow > 0}">
                        <li class="page-item">
                            <a class="page-link"
                               href="${createLink(action: 'index', params: [status: params.status, offset: (offsetNow - params.max), max: params.max])}"
                               aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>
                    </g:if>


                    <g:each in="${(1..page).toList()}" var="i">
                        <li class="page-item">
                            <a class="page-link"
                               href="${createLink(action: 'index', params: [status: params.status, offset: ((i - 1) * params.max), max: params.max])}">${i}</a>
                        </li>
                    </g:each>
                    <g:if test="${mod > 0}">
                        <li class="page-item">
                            <a class="page-link"
                               href="${createLink(action: 'index', params: [status: params.status, offset: page * params.max, max: params.max])}">${page + 1}</a>
                        </li>
                    </g:if>

                    <g:if test="${offsetNow < page * params.max}">
                        <li class="page-item">
                            <a class="page-link"
                               href="${createLink(action: 'index', params: [status: params.status, offset: offsetNow + params.max, max: params.max])}"
                               aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    </g:if>

                </g:if>
            </ul>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.col-lg-9 -->

</div>
<!-- /.row -->
</div>
<!-- /.container -->
<!-- Modal -->
<div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Notice</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <div id="modal_content">

                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>
                %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
            </div>
        </div>
    </div>
</div>
<script>
    var itemId = '${params.item_id}';
    if (itemId !== '') {
        var content = document.getElementById('modal_content');
        content.innerHTML = 'Thanks for submitting item, our team will review your submission within 1-3 business days.';
        $('#infoModal').modal('toggle')
    }
</script>

</body>
</html>